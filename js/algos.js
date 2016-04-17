// create rnd array
// parse array to items
// find longest length
// test each, if greater than prev set = to var
// return longet item

function Longest(array) {
	this.array = array;
	var longest = "";
	for (var i = 0; i< array.length; i++) {
		// longest = array[i];
		// console.log(longest)
		if (array[i].length > longest.length) {
			 longest = array[i];
		}
	}
return longest;
}
// take two objects
// look at the keypair
// if pairs match, true
// else false

function Matching(object1, object2) {
	this.object1 = object1;
	this.object2 = object2;
	this.match = match;
	match = false;
// go through each key in obj1
	for (var key in object1) {
		// go through each key in object1
		for (var key2 in object2){
			// get matching keys, then just match values
			if (key == key2){
				if (object1[key] == object2[key2]){
					match = true;
				}
			}
		}
	}

return match;
}

function stringBuilder(int){
	this.int = int;
	stringArray =[];
	var letters = "abcdefghijklmnopqrstuvwxyz";

	for (var i = 0; i < int; i++){
		
		var length = (Math.floor(Math.random() * 10) + 1);
		var string = '';

		for (var x = 0; x < length; x++){
			//create random char
			var randChar = letters.charAt(Math.floor(Math.random() * 26));
			// add the character to the string
			string = string + randChar;
		}
		stringArray.push(string);
	}

	return stringArray;
}





// DRIVER CODE ----------------
// var testArray = ["long phrase","longest phrase","longer phrase", "longust phrase"];
// console.log(Longest(testArray));

// var objects1 = {day: 21, month: 'february'};

// var objects2 = {day: 21, month: 'june'};

// var objects3 = {day: 2, month: 'june'};

// var match = new Matching(objects1, objects2)

// var match2 = new Matching(objects1, objects3)


// var stringI = new stringBuilder(3)


// longest 10x

for (var i = 0; i < 10; i++) {
	var testString = stringBuilder(3);
	console.log(testString);
	//var long = new Longest(testString);
	console.log(Longest(testString));
}

