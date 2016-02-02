# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  ready = ->

    timer = false

    $('#pad').summernote({
      toolbar: [
        ['style', ['bold', 'italic', 'underline', 'clear']],
        ['font', ['strikethrough', 'superscript', 'subscript']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['height', ['height']]
      ],
      callbacks: {
        onKeyup: (e) ->
          clearTimeout timer
          data = $('.note-editable.panel-body').html()
          timer = setTimeout (-> update_data(data) ), 1000
        onKeydown: (e) ->
          clearTimeout timer
      }
    })

    form        = $('.note-editable.panel-body')
    notepad_url = $("#notepad-url").text().trim()
    data        = form.text()
    console.log "Your notepad's adress is #{notepad_url}"

    update_data = (data) ->
      NProgress.start()
      $.ajax {
        type: "PATCH",
        url: "/notepads/#{notepad_url}",
        data: {data: data},
        dataType: "script",
        success: ->
          NProgress.done()
      }

  $(document).ready ready
