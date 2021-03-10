// BS3
$(function () {
  var totalPrice = 0;
  $("#it_tot_price").empty().html("<span>0원</span>");
  $("select.it_option").addClass("form-control input-sm");
  $("select.it_supply").addClass("form-control input-sm");
  $('[name="good_time"]').not(":eq(0)").hide();
  $(".seats-map").not(":eq(0)").hide();
  $(".item-buy-btn li").hide();
  $('[name="good_date"]').change(function () {
    var idx = $('[name="good_date"] option:selected').index();
    var date_value = $('[name="good_date"] option:selected').val();
    $('[name="good_time"]').hide();
    $('[name="good_time"]').eq(idx).show();
    var time_value = $('[name="good_time"]')
      .eq(idx)
      .children("option:selected")
      .val();
    console.log(date_value + "|" + time_value + "|");
    $(".seats-map").each(function () {
      var data_value = $(this).attr("data-date");
      if (data_value == date_value + "|" + time_value + "|") {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });
  $('[name="good_time"]:visible').change(function () {
    var date_value = $('[name="good_date"] option:selected').val();
    var time_value = $('[name="good_time"]:visible option:selected').val();
    $(".seats-map").each(function () {
      var data_value = $(this).attr("data-date");
      if (data_value == date_value + "|" + time_value + "|") {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  });

  //할인 계산
  $(document).on("change", '[name="sale"]', function () {
    var sale = parseInt($(this).children("option:selected").val());
    var price = $(this).parent().parent().attr("data-price");
    salePrice = ($("#it_price").val() * sale) / 100;
    $(this)
      .parent()
      .parent()
      .attr("data-price", $("#it_price").val() - salePrice);
    $("#it_tot_price").html(
      "<span>총 금액 : " + number_format(String(getPrice())) + "원</span>"
    );
    if (sale > 0) {
      makePop();
    }
  });

  //좌석 선택
  var seatDatas = [];
  $(".seats li")
    .not("li.unable")
    .click(function () {
      var price = $("#it_price").val();
      var seatData = $(this).attr("data-seat");
      $(this).toggleClass("on");
      var count = $(".seats li.on").size();
      var sale = $(".sales").html();
      if ($(this).hasClass("on")) {
        var data = seatData.split("|");
        $("#my-seat ul").append(
          '<li class="clear" data-seat= "' +
            seatData +
            '" data-price="' +
            price +
            '">예매일 : ' +
            data[0] +
            ", 시간 : " +
            data[1] +
            ", 좌석번호 : " +
            data[2] +
            "<div>할인 선택 : " +
            sale +
            "</div></li>"
        );
        $("#it_tot_price").html(
          "<span>총 금액 : " + number_format(String(getPrice())) + "원</span>"
        );
        seatDatas.push(seatData);
        $('input[name="booking_info"]').val(seatDatas);
        $("input[name^=ct_qty]").val(count);
      } else {
        $("#my-seat ul li").each(function () {
          if ($(this).attr("data-seat") === seatData) {
            $(this).remove();
          }
        });
        $("#it_tot_price").html(
          "<span>총 금액 : " + number_format(String(getPrice())) + "원</span>"
        );
        seatDatas = seatDatas.filter(function (el) {
          return el !== seatData;
        });
        $('input[name="booking_info"]').val(seatDatas);
        $("input[name^=ct_qty]").val(count);
      }
      if (count > 0) {
        $(".item-buy-btn li").show();
        $("#my-seat p").hide();
      } else {
        $("#my-seat p").show();
        $(".item-buy-btn li").hide();
      }
    });

  $(document).on("click", ".btn-ok", function (e) {
    e.preventDefault();
    $(".pop-wrap, .pop-sale").fadeOut().remove();
  });
  // $(document).on('click', '.btn-cancel', function (e) {
  // 	e.preventDefault();
  // 	$('.pop-wrap, .pop-sale').fadeOut().remove();
  // 	$('[name="sale"]').each(function(){
  // 		$(this).children('option:first').prop('selected', true);
  // 	});
  // });
});
function makePop() {
  var html =
    '<div class="pop-sale center"><p>해당 증빙 서류 미지참시 현장에서<br> 차액지불 할인을 선택하시겠습니까?</p><div class="btns clear"><button class="btn-ok">확인</button></div></div><div class="pop-wrap"></div>';
  $(html).appendTo("body");
}
//총 금액 가져오기;
function getPrice() {
  var totalPrice = 0;
  $("#my-seat li").each(function () {
    totalPrice += parseInt($(this).attr("data-price"));
  });
  var salePrice = parseInt(
    $("#it_price").val() * $(".seats li.on").size() - totalPrice
  );
  $('[name="cp_price"]').val(salePrice);
  return totalPrice;
}

// 재입고SMS 알림
function popup_stocksms(it_id, ca_id) {
  url = "./itemstocksms.php?it_id=" + it_id + "&ca_id=" + ca_id;
  opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
  popup_window(url, "itemstocksms", opt);
}

// 바로구매, 장바구니 폼 전송
function fitem_submit(f) {
  f.action = "./cartupdate.php";
  f.target = "";

  if (document.pressed == "장바구니") {
    f.sw_direct.value = 0;
  } else {
    // 바로구매
    f.sw_direct.value = 1;
  }

  // 금액이 0 보다 작다면
  if (document.getElementById("it_price").value < 0) {
    alert("전화로 문의해 주시면 감사하겠습니다.");
    return false;
  }

  if ($(".it_opt_list").size() < 1) {
    alert("선택옵션을 선택해 주십시오.");
    return false;
  }

  var val,
    io_type,
    result = true;
  var sum_qty = 0;
  var min_qty = parseInt(0);
  var max_qty = parseInt(0);
  var $el_type = $("input[name^=io_type]");

  $("input[name^=ct_qty]").each(function (index) {
    val = $(this).val();

    if (val.length < 1) {
      alert("수량을 입력해 주십시오.");
      result = false;
      return false;
    }

    if (val.replace(/[0-9]/g, "").length > 0) {
      alert("수량은 숫자로 입력해 주십시오.");
      result = false;
      return false;
    }

    if (parseInt(val.replace(/[^0-9]/g, "")) < 1) {
      alert("수량은 1이상 입력해 주십시오.");
      result = false;
      return false;
    }

    io_type = $el_type.eq(index).val();
    if (io_type == "0") sum_qty += parseInt(val);
  });

  if (!result) {
    return false;
  }

  if (min_qty > 0 && sum_qty < min_qty) {
    alert(
      "선택옵션 개수 총합 " +
        number_format(String(min_qty)) +
        "개 이상 주문해 주십시오."
    );
    return false;
  }

  if (max_qty > 0 && sum_qty > max_qty) {
    alert(
      "선택옵션 개수 총합 " +
        number_format(String(max_qty)) +
        "개 이하로 주문해 주십시오."
    );
    return false;
  }

  if (document.pressed == "장바구니") {
    $.post("./itemcart.php", $(f).serialize(), function (error) {
      if (error != "OK") {
        alert(error.replace(/\\n/g, "\n"));
        return false;
      } else {
        if (confirm("장바구니에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
          document.location.href = "./cart.php";
        }
      }
    });
    return false;
  } else {
    return true;
  }
}

// Wishlist
function apms_wishlist(it_id) {
  if (!it_id) {
    alert("코드가 올바르지 않습니다.");
    return false;
  }

  $.post(
    "./itemwishlist.php",
    {
      it_id: it_id,
    },
    function (error) {
      if (error != "OK") {
        alert(error.replace(/\\n/g, "\n"));
        return false;
      } else {
        if (confirm("위시리스트에 담겼습니다.\n\n바로 확인하시겠습니까?")) {
          document.location.href = "./wishlist.php";
        }
      }
    }
  );

  return false;
}

// Recommend
function apms_recommend(it_id, ca_id) {
  if (!g5_is_member) {
    alert("회원만 추천하실 수 있습니다.");
  } else {
    url = "./itemrecommend.php?it_id=" + it_id + "&ca_id=" + ca_id;
    opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
    popup_window(url, "itemrecommend", opt);
  }
}
