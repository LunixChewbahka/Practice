var book = {
  topic: "JavaScript",
  version: "ECMAScript v5.0",
  author: "Everyone", 
  publisher: "Name of Publisher",
  released: true 
};

// Access the properties of an Object with . or [] in this case "book.something"
console.log(book.topic);
console.log("released");
book.author = "O'Reilly";
book.contents = {};

// JavaScript also supports arrays
var primes = [2,3,5,7];

console.log(primes[0]);
console.log(primes.length);
console.log(primes.length - 1);
console.log(primes[4] = 9);
console.log(primes[4] = 11);
var empty = [];
console.log(empty.length);

// Arrays and  objects can hold other arrays and objects
var points = [
  {x:0, y:0},  // An array with two elements
  {x:1, y:1}   // Each element has an object
];
console.log(points);

var data = {                  // An object with two properties
  trial1: [[1,2], [3,4]],     // The value of each property is an array
  trial2: [[2,3], [4,5]]      // The elements of the arrays are arrays itself
};
console.log(data);
console.log(data.trial1);
console.log(data.trial2);

var points = [5,10,15,20,25,30,35,40];
var res = null;

res = points[0] + points[1];  // So basically it just does 5 + 10;
console.log(res);

// Functions are parametarized functions that we can invoke
function function_name(parameter1) {
  return parameter1 + 1;
}
console.log(function_name(10));

var cube = function(x) {
  return x * x * x;
}
console.log(cube(3));

// When we combine functions iwth object, we get methods:
var a = [];
a.push(1,2,3);
console.log(a.reverse());
// define our own methods, too. By using "this" keyword
points.dist = function() {
var p1 = this[0];
var p2 = this[1];
var a = p2.x-p1.x;
var b = p2.y-p1.y;
return Math.sqrt(a*a + b*b);
};
points.dist();
console.log(points.dist());

// More Function examples
function abs(x) {
  if(x >= 0) {
    return x;
  } else {
    return -x;
  }
}
console.log(abs(-3));


function factorial(n) {
  var product = 1;
  while(n > 1) {
    product *= n;
    n--;
  }
  return product;
}
console.log(factorial(4));

function factorial2(n) {
  var i, product = 1;
  for(i = 2; i <= n ; i++)
    product *= i;
  return product;
}
console.log(factorial2(4));


// Define a Constructor function to initialize a new Point object
function Point(x,y) {
  this.x = x;
  this.y = y;
}
// Use a constructor for Point objects by assigning them to the prototype
var p = new Point(1, 1);
// Define methods for Point objects by assigning them to the prototype
// object associated with the Constructor function
Point.prototype.r= function() {
  return Math.sqrt(
  this.x * this.x + this.y * this.y
  );
};
// Now the project p(and all the future Point Objects) inherits the method r()
console.log(p.r());   // => 1.414 tested by running "node file.js" on the terminal
