# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).on "page:change", ->
#   if $(".users.index").length > 0
#     alert "This is change"

# if $(".users.index").length > 0
#   alert "this is ready"

$(".users.index").ready ->
  alert "this is ready"

#link clicked
# $(document).on "page:before-change", ->
#   console.log "Link is clicked"
#
# #before page change
# $(document).on "page:fetch", ->
#   console.log "Page is fetched"
#
# #after page fetch
# $(document).on "page:change", ->
#   if $(".users.index").length > 0
#     alert "index -> this is where your code for index page should lie"
#   else if $(".users.new").length > 0
#     alert "new -> this is where your code for new page should lie"
#   else if $(".users.show").length > 0
#     alert "show -> this is where your code for show page should lie"
#   else if $(".users.edit").length > 0
#     alert "edit -> this is where your code for edit page should lie"
#
# #view did load
# $(document).on "page:load", ->
#   console.log "Page is loaded"
