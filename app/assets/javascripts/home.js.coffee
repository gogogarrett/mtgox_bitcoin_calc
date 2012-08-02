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

  setInterval( ->
    console.log 'were updating'
    $buy = $("#buy_cost")
    $sell = $("#sell_cost")
    $.post "/check_updated_values", (data) ->
      if !$buy.is(":focus")
        $buy.val(data.buy_cost)
      else if !$sell.is(":focus")
        $sell.val(data.sell_cost)
  1000)


