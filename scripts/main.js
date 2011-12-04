(function() {
  var currentElement;
  currentElement = $("#menu a.here");
  $("#menu a").bind("mouseover", function() {
    $("#menu a.selected").each(function() {
      return $(this).removeClass("selected");
    });
    $(this).addClass("selected");
    return currentElement.removeClass("here");
  });
  $("#menu").bind("mouseleave", function() {
    $("#menu a.selected").each(function() {
      return $(this).removeClass("selected");
    });
    return currentElement.addClass("here");
  });
  $(document).ready(function() {
    $("body").append("<img id='preloader' style='display:none'></img>");
    return $("#mycarousel li").each(function() {
      return $(this).click(function() {
        var imageUrl;
        imageUrl = $(this).find("img").attr("-data-real");
        $("#main-image img").attr("src", 'images/loadingimage.gif');
        return $('#preloader').attr('src', imageUrl).load(function() {
          return $("#main-image img").attr("src", imageUrl);
        });
      });
    });
  });
  $(document).ready(function() {
    return $("#mycarousel").jcarousel({
      vertical: true,
      scroll: 2
    });
  });
}).call(this);
