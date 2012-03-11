# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  #$('#auto_auto_id').parent().hide()
  autos = $('#auto_auto_id').html()
  $('#auto_type_id').change ->
    type = $('#auto_type_id :selected').text()
    escaped_type = type.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    if type == "Все типы"
      options = autos
    else
      options = $(autos).filter("optgroup[label=#{escaped_type}]").html()
    if options
      $('#auto_auto_id').html(options)
      $('#auto_auto_id').parent().show()      