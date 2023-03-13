const convertTZ = (date, tzString) => {
    return new Date((typeof date === "string" ? new Date(date) : date).toLocaleString("en-US", { timeZone: tzString }));
}

const serverDateTime = () => {
    const servertimezone = Intl.DateTimeFormat().resolvedOptions().timeZone
    
    const serverDate = new Date(Date.now()).toLocaleString("en-US", {
        timeZone: servertimezone,
      });
     
    return serverDate
}

module.exports = {convertTZ, serverDateTime}