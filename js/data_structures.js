var colors = ["green", "blue", "red", "orange"];
var horses = ["steve", "george", "melissa", "janet"];

colors.push("yellow");

horses.push("suzie");

var horseStats = {};

for (var i = 0; i < horses.length; i++) {
  // var names = horses[i];
  horseStats[horses[i]] = colors[i];
}

console.log(horseStats);
  
function Cars(make,model,year) {
  console.log("Our new car", this);

  
  this.make = make;
  this.model = model;
  this.year = year;
  
  this.driver = function(){console.log("90 on the freeway");};
  
  console.log("Your car is built");
  
}
  
var racecar = new Cars("Toyota", "Carolla", 1998);
console.log(racecar);

var taxicab = new Cars("Tesla", "Model 3", 2017);
console.log(taxicab);
taxicab.driver();