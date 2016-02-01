# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  form        = $("#text-area")
  notepad_url = $(".nav p").text().trim()
  data        = $("#text-area").val()
  timer       = false
  console.log "Your notepad's adress is #{notepad_url}"

  update_data = ->
    data = $("#text-area").val()
    NProgress.start()
    $.ajax {
      type: "PATCH",
      url: "/notepads/#{notepad_url}",
      data: {data: data},
      dataType: "script",
      success: ->
        NProgress.done()
    }

  form.on "keyup", ->
    clearTimeout timer
    console.log "Up"
    timer = setTimeout (-> update_data() ), 1000

  form.on "keydown", ->
    clearTimeout timer
