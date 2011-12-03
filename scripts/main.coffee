currentElement = $('#menu a.here')
$('#menu a').bind 'mouseover', () ->
  $('#menu a.selected').each () ->
    $(this).removeClass('selected')
  $(this).addClass('selected')
  currentElement.removeClass('here')
$('#menu').bind 'mouseleave', () ->
  $('#menu a.selected').each () ->
    $(this).removeClass('selected')
  currentElement.addClass('here')

$(document).ready () ->
  $('#tS3 .jTscroller a').each () ->
    $(this).click () ->
      $('#main-image img').attr 'src', $(this).find('img').attr('-data-real')

window.onload = () ->
  $("#tS3").thumbnailScroller {
      scrollerType:"hoverPrecise",
      scrollerOrientation:"vertical",
      scrollSpeed:2,
      scrollEasing:"easeOutCirc",
      scrollEasingAmount:800,
      acceleration:4,
      scrollSpeed:800,
      noScrollCenterSpace:10,
      autoScrolling:0,
      autoScrollingSpeed:2000,
      autoScrollingEasing:"easeInOutQuad",
      autoScrollingDelay:500
  }
