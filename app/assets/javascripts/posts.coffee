# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "click", "#bold", ->
    div = $(this).closest('div')
    textArea = div.next('textarea')
    textArea.val(textArea.val() + '<b></b>')

$(document).on "click", "#underline", ->
    div = $(this).closest('div')
    textArea = div.next('textarea')
    textArea.val(textArea.val() + '<ins></ins>')

$(document).on "click", "#italic", ->
    div = $(this).closest('div')
    textArea = div.next('textarea')
    textArea.val(textArea.val() + '<i></i>')

$(document).on "turbolinks:load", ->
    $('form.new_comment').hide()

$(document).on "click", "button.replyPost", ->
    div = $(this).closest('div')
    $('.new_comment').not(div.next('.new_comment')).hide()
    div.next('form.new_comment').slideToggle(100)