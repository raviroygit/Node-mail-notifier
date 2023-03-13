const { createLogger, format, transports } = require('winston');
const path = require('path')
var PROJECT_ROOT = path.join(__dirname, '..')

const logger = createLogger({
    transports: [new (transports.Console)({ json: false, timestamp: true, level: 0, colorize: true }),
    new transports.File({
        level: 'error',
        filename: 'logs/server.log',
        format: format.combine(
            format.timestamp({ format: 'DD-MMM-YYYY HH:mm:ss' }),
            format.align(),
            format.printf(info => `${info.level}: ${[info.timestamp]}: ${info.message}`),
        )
    })]
});

const wrap = {};
wrap.info = function () {
    logger.log.apply(logger, ["info", formatLogArguments(arguments)]);
};

wrap.error = function () {
    logger.log.apply(logger, ["error", formatLogArguments(arguments)]);
};

wrap.warn = function () {
    logger.log.apply(logger, ["warn", formatLogArguments(arguments)]);
};

wrap.debug = function () {
    logger.log.apply(logger, ["debug", formatLogArguments(arguments)]);
};

function formatLogArguments(args) {
    args = Array.prototype.slice.call(args)

    const stackInfo = getStackInfo(1)
    if (stackInfo) {
        var calleeStr = '(' + stackInfo.relativePath + ':' + stackInfo.line + ')'

        if (typeof (args[0]) === 'string') {
            args[0] = calleeStr + ' ' + args[0]
        } else {
            args.unshift(calleeStr)
        }
    }

    return args[0]
}


function getStackInfo(stackIndex) {

    var stacklist = (new Error()).stack.split('\n').slice(3)
    var stackReg = /at\s+(.*)\s+\((.*):(\d*):(\d*)\)/gi
    var stackReg2 = /at\s+()(.*):(\d*):(\d*)/gi

    var s = stacklist[stackIndex] || stacklist[0]
    var sp = stackReg.exec(s) || stackReg2.exec(s)

    if (sp && sp.length === 5) {
        return {
            method: sp[1],
            relativePath: path.relative(PROJECT_ROOT, sp[2]),
            line: sp[3],
            pos: sp[4],
            file: path.basename(sp[2]),
            stack: stacklist.join('\n')
        }
    }
}

module.exports = wrap