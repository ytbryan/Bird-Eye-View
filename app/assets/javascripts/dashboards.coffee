# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  if $(".dashboards.main").length > 0
    setChart("canvas1")
    setChart("canvas2")
    setChart("canvas3")
    setChart("canvas4")
    setChart("canvas5")
    setChart("canvas6")
