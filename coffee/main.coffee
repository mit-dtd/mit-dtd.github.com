#convert underscore to use mustache template
_.templateSettings = {
  interpolate : /\{\{(.+?)\}\}/g
};

class BrothersView extends Backbone.View
  initialize: ->
    #Only include brothers for this year
    @brothers = _.filter window.brothers, (b) =>
      b.year is @options.year
    
    @template = Handlebars.compile ($ '#brother-detail-template').html()
    
    @render()
  
  render: ->
    @$el.html @template
      brothers: @brothers



$(document).ready ->
  #we don't want the carousel automatically cycling
  ($ '.carousel').carousel 'pause'
  
  $('.flexslider').flexslider
    smoothHeight: true
    slideshow: false
  
  new BrothersView
    el: '#bro-2012-details'
    year: 2012 