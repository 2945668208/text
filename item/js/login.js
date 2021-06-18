$('form').submit(() => {
    // console.log($('form').serialize());
    if (!/^\w{6,16}$/.test($('#username').val())) {
        layer.msg('请输入6-16位用户名');
        return false;
    }
    if (!/^\w{6,16}$/.test($('#password').val())) {
        layer.msg('请输入6-16位密码');
        return false;
    };
    var index = layer.load(0, { shade: [1, '#ccc'], shadeClose: true })
    $.ajax({
        url: '../PHP/login.php',
        data: $('form').serialize(),
        dataType: 'json',
        type: 'post',
        success: function (res) {
            if (res.status == 0) {
                console.log(1);
                layer.msg(res.error);
                layer.close(index);
            } else {
                setCookie('username', $('#username').val())
                
                window.location.href = '../pages/home.html';
                layer.close(index);
            }
        }
    })
    return false;
})