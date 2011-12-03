(function() {
  var currentElement;
  currentElement = $('#menu a.here');
  $('#menu a').bind('mouseover', function() {
    $('#menu a.selected').each(function() {
      return $(this).removeClass('selected');
    });
    $(this).addClass('selected');
    return currentElement.removeClass('here');
  });
  $('#menu').bind('mouseleave', function() {
    $('#menu a.selected').each(function() {
      return $(this).removeClass('selected');
    });
    return currentElement.addClass('here');
  });
  $(document).ready(function() {
    return $('#mycarousel li').each(function() {
      return $(this).click(function() {
        return $('#main-image img').attr('src', $(this).find('img').attr('-data-real'));
      });
    });
  });
  $(document).ready(function() {
    $('#mycarousel').jcarousel({
        vertical: true,
        scroll: 2
    });
});
}).call(this);
