const button = document.getElementById("MediaPlayerIcon-icon-play");
const position = document.getElementById("time-position");
const dur = document.getElementById("MediaPlayerControl-seekbar");
const canvas = document.getElementById("canvas1")
var audio1 = new Audio();
var context = new (window.AudioContext || window.webkitAudioContext);
console.log(context);
audio1.src = button.getAttribute("data-mediathumb-url");
function renderFrame() {
  var analyser = context.createAnalyser()
  analyser.fftSize = 512
  analyser.maxDecibels = -3
  console.log(analyser)
  var length = analyser.frequencyBinCount
  console.log(length)
  var dataArray = new Uint8Array(length)
  analyser.getByteFrequencyData(dataArray);
  console.log(dataArray);
  var audioSource = context.createMediaElementSource(audio1)
  var x = 0;
  var ctx = canvas.getContext("2d")
  HEIGHT = canvas.height
  WIDTH = canvas.width
  barWidth = WIDTH / analyser.fftSize
  audioSource.connect(analyser)
  analyser.connect(context.destination)
  for (var i=1; i<length; i++) do {
    var barHeight = dataArray[i]
    var r = barHeight + (25 * (i/bufferLength));
    var g = 250 * (i/bufferLength);
    var b = 50;
    ctx.fillStyle = 'rgb('+ r +',' + g + ', '+ b +')'
    ctx.fillRect(x, HEIGHT - barHeight, WIDTH/length, barHeight)
    
  }
  requestAnimationFrame(renderFrame);
}
button.addEventListener("click", function(){
  if(this.className == 'MediaPlayerIcon-icon-pause'){
    this.className = "MediaPlayerIcon-icon-play";
    audio1.pause();
  }else{
    this.className = "MediaPlayerIcon-icon-pause";
    audio1.play();
  };
  audio1.addEventListener("ended", function() {
    button.className = "MediaPlayerIcon-icon-play";
  });
});
dur.addEventListener("change", function() {
  audio1.currentTime = dur.value;
});
audio1.addEventListener("timeupdate", function() {
  var curminutes = Math.floor(audio1.currentTime/60)
  var curseconds = Math.ceil(audio1.currentTime-(curminutes*60))
  var minutes = Math.floor(audio1.duration/60)
  var seconds = Math.ceil(audio1.duration-(minutes*60))
  dur.value=audio1.currentTime; 
  dur.max = audio1.duration;
  position.innerHTML = curminutes+":"+curseconds+" / "+minutes+":"+seconds
});
renderFrame()
