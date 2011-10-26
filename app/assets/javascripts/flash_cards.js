var FlashCards = FlashCards || {};

FlashCards.Effects = function() {

  var _flashCardElm;

  function initialize() {
    $(document).ready(function () {
      _flashCardElm = $('dl#flash_card');

      _flashCardElm.click( function(e) {
        _flashCardElm.toggleClass('show-answer');
      });
    });
  }

  initialize();
}();

var Supports = (function () {
  return {
    localStorage: function() {
      return !!window.localStorage;
    }
  };
})();