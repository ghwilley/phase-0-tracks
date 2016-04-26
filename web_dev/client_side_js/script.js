console.log("The link is working...");

function addColor(event) {
event.target.style.color = "red";
}

var textColor = document.getElementsByTagName("p");
textColor[0].addEventListener("click", addColor);