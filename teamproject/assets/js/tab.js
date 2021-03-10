// nav 탭 메뉴
$(function () {
  var subPage = new Array();
  subPage[0] = "main.html";
  subPage[1] = "list.html";
  subPage[2] = "ticketing.html";
  subPage[3] = "discount.html";

  var url = location.href;
  var getAr0 = url.indexOf(subPage[0]);
  var getAr1 = url.indexOf(subPage[1]);
  var getAr2 = url.indexOf(subPage[2]);
  var getAr3 = url.indexOf(subPage[3]);

  if (getAr0 != -1) {
    $("li:eq(0)").addClass("active");
  } else if (getAr1 != -1) {
    $("li:eq(1)").addClass("active");
  } else if (getAr2 != -1) {
    $("li:eq(2)").addClass("active");
  } else if (getAr3 != -1) {
    $("li:eq(2)").addClass("active");
  }
});

// 포스터 탭 메뉴
var posterBtn = $(".poster-title > ul > li");
var posterCont = $(".list-wrap");

posterCont.hide().eq(0).show();
posterBtn.click(function (e) {
  e.preventDefault();
  var target = $(this);
  var index = target.index();
  posterBtn.removeClass("active");
  target.addClass("active");
  posterCont.css("display", "none");
  posterCont.eq(index).css("display", "flex");
});
