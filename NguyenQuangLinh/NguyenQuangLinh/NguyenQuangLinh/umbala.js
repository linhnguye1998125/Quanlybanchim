
$(function () {
    $(window).scroll(function () {
        vitrihientai = $('html,body').scrollTop()
        {
            console.log(vitrihientai);
            if (vitrihientai > 100) {
                $('.navbar-fixed-top ').addClass('nho');
            }
            else
                if (vitrihientai < 100) {
                    $(' .navbar-fixed-top ').removeClass('nho');
                }
        }
    })
})


$(function () {
    $(window).scroll(function () {
        vitrihientai = $('html,body').scrollTop()
        {
            console.log(vitrihientai);
            if (vitrihientai > 70) {
                $('.anhhinh ').addClass('hinh1');
            }
            else
                if (vitrihientai < 70) {
                    $(' .anhhinh ').removeClass('hinh1');
                }
        }
    })
})



$(function () {
  		$(window).scroll(function(){
  			vitrihientai = $('html,body').scrollTop()
        {
        console.log(vitrihientai);
        if(vitrihientai>1200)
        {
          $('.andi').addClass('bienra');
        }
        else
          if(vitrihientai<1200)
          {
          $('.andi').removeClass('bienra');
          }
        }
        })
    })

  $(function() {
      $(window).scroll(function(){
        vitrihientai = $('html,body').scrollTop()
        {
        console.log(vitrihientai);
        if(vitrihientai>400)
        {
          $('.mat').addClass('bien');
        }
        else
          if(vitrihientai<400)
          {
          $('.mat').removeClass('bien');
          }
        }
        })
    })

$(function () {
    $(window).scroll(function () {
        vitrihientai = $('html,body').scrollTop()
        {
            console.log(vitrihientai);
            if (vitrihientai > 200) {
                $('.nuta').addClass('nutra');
            }
            else
                if (vitrihientai < 200) {
                    $('.nuta').removeClass('nutra');
                }
        }
    })
})
