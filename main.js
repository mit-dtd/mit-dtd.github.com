// Generated by CoffeeScript 1.3.3
var BrothersView,
  __hasProp = {}.hasOwnProperty,
  __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

_.templateSettings = {
  interpolate: /\{\{(.+?)\}\}/g
};

BrothersView = (function(_super) {

  __extends(BrothersView, _super);

  function BrothersView() {
    return BrothersView.__super__.constructor.apply(this, arguments);
  }

  BrothersView.prototype.initialize = function() {
    var _this = this;
    this.brothers = _.filter(window.brothers, function(b) {
      return b.year === _this.options.year;
    });
    this.brothers = _.sortBy(this.brothers, function(b) {
      return b.name.split(" ").pop();
    });
    this.template = Handlebars.compile(($('#brother-detail-template')).html());
    return this.render();
  };

  BrothersView.prototype.render = function() {
    return this.$el.html(this.template({
      brothers: this.brothers
    }));
  };

  return BrothersView;
})(Backbone.View);

$(document).ready(function() {
  function createCookie(name,value,days) {
    if (days) {
      var date = new Date();
      date.setTime(date.getTime()+(days*24*60*60*1000));
      var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

  function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
      var c = ca[i];
      while (c.charAt(0)==' ') c = c.substring(1,c.length);
      if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
  }

  function eraseCookie(name) {
    createCookie(name,"",-1);
  }

  doAnimation = !readCookie("skipAnimation");
  if (doAnimation || true) {
    $('body > .container').hide();
    $('body > .masthead > *').hide();
    $('body').css("display", "block");
    var letters = ["&Delta;", "&Tau;", "&Delta;"];
    setTimeout(function() {
      $('body > .masthead h1').html('<span class="bracket">[</span><span id="header-fill-animation"></span><span class="bracket">]</span>').fadeIn(1000, function() {
        setTimeout(function() {
          appendLetter = function() {
            if (letters.length == 0) { setTimeout(function() { $('body > .masthead > h6').fadeIn(1000); setTimeout(finish, 2000); }, 500); return; }
            $('#header-fill-animation').html($('#header-fill-animation').html() + letters.shift())
            setTimeout(appendLetter, 400);
          };
          appendLetter();
          var finish = function() {
            $('body > .container').fadeIn(1000);
            createCookie("skipAnimation", 1, 1);
          };
        }, 500);
      });
    }, 500);
  }
  $('body').css("display", "block");
});

$(document).ready(function() {
  if ($('#brothers').size() == 0) {
    return;
  }
  var year, _i, _len, _ref, _results;
  $('.flexslider').flexslider({
    slideshow: false
  });
  _ref = [2012, 2013, 2014, 2015, 2016];
  _results = [];
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    year = _ref[_i];
    _results.push(new BrothersView({
      el: "#bro-" + year + "-details",
      year: year
    }));
  }
  return _results;
});

$(document).ready(function() {
  $('.submenu a').click(function() {
    if ($(this).parent().is('.active')) {
      return false;
    }
    var offset = $(this).parent().offset().top - $(this).parent().parent().offset().top;
    $("#submenu-arrow").animate({"top": (offset + 22) + "px"});
    $(this).closest("ul").find("li.active").removeClass("active");
    $(this).parent().addClass("active");
    freezeHeight();
    $('.subpage:visible').slideUp();
    $($(this).attr("href")).slideDown();
    unfreezeHeight();
    return false;
  });
});

/**
 * Freeze the current body height (as minimum height). Used to prevent
 * unnecessary upwards scrolling when doing DOM manipulations.
 */
freezeHeight = function () {
  unfreezeHeight();
  var div = document.createElement('div');
  $(div).css({
    position: 'absolute',
    top: '0px',
    left: '0px',
    width: '1px',
    height: $('body').css('height')
  }).attr('id', 'freeze-height');
  $('body').append(div);
};

/**
 * Unfreeze the body height
 */
unfreezeHeight = function () {
  $('#freeze-height').remove();
};


