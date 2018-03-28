const bday         = new Date("08/15/2018");

function setDate() {
  const dayInput     = document.querySelector('.days');
  const hourInput    = document.querySelector('.hours');
  const minuteInput  = document.querySelector('.minutes');
  const secondsInput = document.querySelector('.seconds');

  var now      = new Date();
  var timeDiff = Math.abs(bday.getTime() - now.getTime());
  var days     = Math.ceil(timeDiff / (1000 * 3600 * 24));
  var hours    = Math.ceil(timeDiff / (1000 * 3600)) % 24;
  var minutes  = Math.ceil(timeDiff / (1000 * 360)) % 60;
  var seconds  = Math.ceil(timeDiff / (1000)) % 60;

  dayInput.innerText = days;
  hourInput.innerText = hours;
  minuteInput.innerText = minutes;
  secondsInput.innerText = seconds;

}


setInterval(setDate, 1000);
