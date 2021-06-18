// 轮播图js样式

var interleaveOffset = 0.5; //视差比值

var swiperOptions = {
    loop: true,
    speed: 1000,
    grabCursor: true,
    watchSlidesProgress: true,
    mousewheelControl: true,
    keyboardControl: true,
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
    },
    on: {
        progress: function (swiper) {
            for (var i = 0; i < swiper.slides.length; i++) {
                var slideProgress = swiper.slides[i].progress;
                var innerOffset = swiper.width * interleaveOffset;
                var innerTranslate = slideProgress * innerOffset;
                swiper.slides[i].querySelector(".slide-inner").style.transform =
                    "translate3d(" + innerTranslate + "px, 0, 0)";
            }
        },
        touchStart: function (swiper) {
            for (var i = 0; i < swiper.slides.length; i++) {
                swiper.slides[i].style.transition = "";
            }
        },
        setTransition: function (swiper, speed) {
            for (var i = 0; i < swiper.slides.length; i++) {
                swiper.slides[i].style.transition = speed + "ms";
                swiper.slides[i].querySelector(".slide-inner").style.transition =
                    speed + "ms";
            }
        }
    }
};

var swiper = new Swiper(".swiper-container", swiperOptions);
// 组图js样式
async function yibu() {
    await $.ajax({
        url: '../PHP/index.php',
        dataType: 'json',
        success: function (res) {
            var str = '';
            for (var i = 0; i < res.length; i++) {
                str += `<li index="${res[i].id}">
              <img src="${res[i].imgpath}" alt=""> 
                <p>${res[i].introduce}</p>
                <div class="clear ha">
                    <b>￥</b>
                    <h3>${res[i].price}</h3>
                    <i>库存10</i>
                </div>
            </li>`
            }
            $('.like').find('ul').html(str);
        }
    })
    $('.qw>li').on('click', function () {
        setCookie('id', $(this).attr('index'));
        window.location.href = './detalis.html';
    })
}
yibu()
$('.like').find('ol').find('li').click(function () {
    if (!$(this).attr('index')) {
        $(this).attr('index', $(this).find('span').text());
    }
    $.ajax({
        url: '../PHP/content.php',
        dataType: 'json',
        data: { id: $(this).attr('index') },
        success: function (res) {
            $('.like ul.clear').html('');
            var str = '';
            for (var i = 0; i < res.length; i++) {
                str += `<li index="${res[i].id}">
                <img src="${res[i].imgpath}" alt="">
                <p>${res[i].introduce}</p>
                <div class="clear ha">
                    <b>￥</b>
                    <h3>${res[i].price}</h3>
                    <i>库存10</i>
                </div>
            </li>`
            }
            $('.like').find('ul').html(str);
            $('.qw>li').on('click', function () {
                setCookie('id', $(this).attr('index'));
                window.location.href = './detalis.html';
            })
        }
    })
})
$('.like').find('ol').find('input').blur(function () {
    $.ajax({
        url: '../PHP/content.php',
        dataType: 'json',
        data: { id: $(this).val() },
        success: function (res) {
            $('.like ul.clear').html('');
            var str = '';
            for (var i = 0; i < res.length; i++) {
                str += `<li index="${res[i].id}">
                <img src="${res[i].imgpath}" alt="">
                <p>${res[i].introduce}</p>
                <div class="clear ha">
                    <b>￥</b>
                    <h3>${res[i].price}</h3>
                    <i>库存10</i>
                </div>
            </li>`
            }
            $('.like').find('ul').html(str);
            $('.qw>li').on('click', function () {
                setCookie('id', $(this).attr('index'));
                window.location.href = './detalis.html';
            })
        }
    })
})
// 获取详情页所需要的数据



