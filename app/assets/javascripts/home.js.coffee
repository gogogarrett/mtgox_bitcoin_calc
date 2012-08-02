# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('form').on 'submit', (e) ->
    e.preventDefault()
    source   = $("#response-template").html()
    template = Handlebars.compile(source)

    $.post "/check_profits", $(this).serialize(), (data) ->
      $("#response").html(template(data))


