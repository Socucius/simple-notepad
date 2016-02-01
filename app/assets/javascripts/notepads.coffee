# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  form = $("#text-area")
  timer = false

  form.on "keyup", ->
    clearTimeout timer
    timer = setTimeout (-> console.log "time"), 1000

  form.on "keydown", ->
    clearTimeout timer
