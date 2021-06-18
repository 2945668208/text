var box = document.querySelector(".content");
var small = document.querySelector(".content-left");
var mask = document.querySelector(".left");
var big = document.querySelector(".big");
var bigImg = document.querySelector(".bigimg");

// 鼠标滑入事件
small.onmouseenter = function () {
    mask.style.display = 'block';
    big.style.display = 'block';
};
// 滑出事件
small.onmouseleave = function () {
    mask.style.display = 'none';
    big.style.display = 'none';
};
// // 移动事件
small.onmousemove = function (e) {
    e = e || window.event;
    var x = e.pageX;
    var y = e.pageY;
    var left = x - mask.clientWidth / 2 - document.querySelector('.content').offsetLeft;
    var top = y - mask.clientHeight / 2 - document.querySelector('.content').offsetTop;
    // 边界判断的位置
    if (left <= 0) {
        left = 0;
    }
    if (top <= 0) {
        top = 0;
    }
    if (left >= 200) {
        left = 200
    }
    if (top >= 200) {
        top = 200
    }
    // console.log(left, top);s
    mask.style.left = left + 'px';
    mask.style.top = top + 'px';
    var bigLeft = -left * bigImg.offsetWidth / small.offsetWidth;
    var bigTop = -top * bigImg.offsetHeight / small.offsetHeight;
    bigImg.style.left = bigLeft + 'px';
    bigImg.style.top = bigTop + 'px';
}