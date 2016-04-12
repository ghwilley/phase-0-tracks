// take the length of the string
// for each letter in the index set it to the
// need a second variable counting upwards for the new index

// do a reverse loop assigning new index

function reverse(x) {
	var out = '';
	for (var i = x.length - 1; i >= 0; i--) {
		out += x[i];
	}
	console.log(out);
	return out;
}
	
// DRIVER CODE -----------
var store = reverse("hello");


if (1 == 1) {
console.log(store);
}