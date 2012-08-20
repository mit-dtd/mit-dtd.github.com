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
  $('.flexslider').flexslider
    slideshow: false
  
  for year in [2012, 2013, 2014, 2015]
    new BrothersView
      el: "#bro-#{year}-details"
      year: year 
  
  