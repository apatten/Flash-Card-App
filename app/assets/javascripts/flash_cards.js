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

FlashCards = function() {

  var _flash_cards,
      _current,
      _next,
      _previous,
      _current_id;

  var nextElm,
      previousElm;

  function initialize(flash_cards, current_id) {
    _flash_cards = $(flash_cards);
    _current_id = current_id;
    previousElm = $('p.previous').first();
    nextElm = $('p.next').first();
    update();
  }

  function update() {
    _current = {};
    _previous = {};
    _next = {};
    _flash_cards.each(function(i) {

      if(this["id"] == _current_id) {
        _previous = _flash_cards[i-1];
        _current = this;
        _next = _flash_cards[i+1];
      }
    });
    drawPrevious();
    drawNext();
  }

  function drawPrevious() {
    previousElm.text('');
    if(_previous !== undefined) {
      var previousLink = $('<a id="previous" href="/flash_cards/' + _previous['id'] + '">Previous</a>');
      previousLink.click(function(e) {
        e.preventDefault();
        updateCard(_previous);
      });
      previousElm.append(previousLink);
    }
  }

  function drawNext() {
    nextElm.text('');
    if(_next !== undefined) {
      var nextLink = $('<a id="next" href="/flash_cards/' + _next['id'] + '">Next</a>');
      nextLink.click(function(e) {
        e.preventDefault();
        updateCard(_next);
      });
      nextElm.append(nextLink);
    }
  }

  function updateCard(card) {
    $('dl#flash_card').removeClass('show-answer');
    $('dl#flash_card dt').text(card['question']);
    $('dl#flash_card dd').text(card['answer']);
    _current_id = card['id'];
    update();
  }

  return {
    init: function(flash_cards, current_id) {
      initialize(flash_cards, current_id);
    }
  };
}();

var Supports = (function () {
  return {
    localStorage: function() {
      return !!window.localStorage;
    }
  };
})();