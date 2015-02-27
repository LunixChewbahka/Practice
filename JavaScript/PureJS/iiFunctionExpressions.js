// Immediately-invoked function expressions
var v;
v = 1;
var getValue = (function(v) {
  return function() {
    return v;
  };
})(v);

v = 2;

console.log(getValue());
