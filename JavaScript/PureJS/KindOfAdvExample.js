/* Finds the lowest common multiple (LCM) of two numbers */
function LCMCalculator(x, y) {
  var checkInt = function (x) {
    if (x % 1 !== 0) {
      throw new TypeError(x + " is not an integer");
    }
    return x;
  };
  this.a = checkInt(x);
  this.b = checkInt(y);
}
// The prototype of object instances reated by a constructor is
// that constructor's "prototype" property.
LCMCalculator.prototype = {       // object literal
  constructor: LCMCalculator,     // when reassigning a prototype, set the blag
  gcd: function () {              // method that calculates the GCD
    // Euclidean Algorithm
    var a = Math.abs(this.a), b = Math.abs(this.b), t;
    if (a < b) {
      // swap variables
      t = b;
      b = a;
      a = t;
    }
    while (b !== 0) {
      t = b;
      b = a % b;
      a = t;
    }
    // Onlly ned to calculate GCD once, so "redefine" this method.
    // (Actually not redefinition it's defined o nthe instance itself,
    // so that this.gcd refers to this "redefinition" instead of
    // LCMCalclator.prototype.gcd
    // Also, 'gcd' === "gcd", this['gcd'] === this.gcd
    this.gcd = function() {
      return a;
    };
    return a;
  },
  lcm : function() {
      var lcm = this.a / this.gcd() * this.b;
      this.lcm = function () {
          return lcm;
      };
      return lcm;
  },
  toString : function () {
      return "LCMCalculator: a = " + this.a + ", b = " + this.b;
  }
};

// Define generic output functionl this implementation only works for web
// browsers

function output(x) {
    document.body.appendChild(document.createTextNode(x));
    document.body.appendChild(document.createElement('br'));
}


[[25, 55], [21, 56], [22, 58], [28, 56]].map(function (pair) {
    return new LCMCalculator(pair[0], pair[1]);
}).sort(function (a, b) {
    return a.lcm() - b.lcm();
}).forEach(function (obj) {
    output(obj + ", gcd = " + obj.gcd() + ", lcd = " + obj.lcm());
});
