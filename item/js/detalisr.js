var id = getCookie('id');
$.ajax({
    url: '../PHP/detalis.php',
    data: { id },
    dataType: 'json',
    success: function (res) {
        console.log(res);
        var name = res[0].name;
        $('.content-right').find('p').text(name);
        $('.clear').find('h3').text(res[0].price);
        $('.content-left').find('img').attr('src', res[0].imgpath);
        $('.big').find('img').attr('src', res[0].imgpath);
        $('.pp').text(res[0].introduce);
    }
})