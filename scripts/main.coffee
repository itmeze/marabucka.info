currentElement = $("#menu a.here")
$("#menu a").bind "mouseover", ->
  $("#menu a.selected").each ->
    $(this).removeClass "selected"

  $(this).addClass "selected"
  currentElement.removeClass "here"

$("#menu").bind "mouseleave", ->
  $("#menu a.selected").each ->
    $(this).removeClass "selected"

  currentElement.addClass "here"

$(document).ready ->
  $("body").append "<img id='preloader' style='display:none'></img>"
  $("#mycarousel li").each ->
    $(this).click ->
      imageUrl = $(this).find("img").attr("-data-real")
      dynamicUrlPart = ''
      #fix for ie
      if ($.browser.msie && $.browser.version < 9)
        dynamicUrlPart = '?' + new Date().getTime()

      imageUrl = imageUrl + dynamicUrlPart

      $("#main-image img").attr "src", 'images/loadingimage.gif'
      $('#preloader').attr('src', imageUrl).load ->
        $("#main-image img").attr "src", imageUrl

$(document).ready ->
  $("#mycarousel").jcarousel
    vertical: true
    scroll: 2
