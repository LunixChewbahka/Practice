var sum = function() {
  var i, x = 0;
  for ( i = 0; i < arguments.length; ++i ) {
    x += arguments[i];
  }
  return x;
};
console.log(sum(1,2,3));
