var FlashCards = FlashCards || {};

FlashCards.Blah = function() {

  var _flashCardElm,
    _nextElm,
    _previousElm;
  var _domain = 'http://language.dev';

  function initialize() {
    $(document).ready(function () {
      _flashCardElm = $('dl#flash_card');
      _nextElm = $('#next');
      _previousElm = $('#previous');

      _flashCardElm.click( function(e) {
        _flashCardElm.toggleClass('show-alternate');
      });

      initKeyboardNavigation();
    });
  }

  function initKeyboardNavigation() {
    $(document).keydown(function(event) {
      switch(event.keyCode) {
        case 32:
          _flashCardElm.toggleClass('show-alternate');
          break;
        case 78:
        case 39:
          if(_nextElm.size() !== 0) {
            window.location = _domain + _nextElm.attr('href');
          }
          break;
        case 80:
        case 37:
          if(_previousElm.size() !== 0) {
            window.location = _domain + _previousElm.attr('href');
          }
          break;
      }
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