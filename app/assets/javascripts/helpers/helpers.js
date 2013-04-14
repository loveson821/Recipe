var clone = (function(){
  return function (obj) { Clone.prototype=obj; return new Clone(); };
  function Clone(){}
}());