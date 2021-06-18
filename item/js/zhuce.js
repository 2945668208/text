$('form').submit(function (e) {
    e = e || window.event;
    e.preventDefault();
})
$('#register').click(function (e) {
    if (!/^\w{6,16}$/.test($('#username').val())) {
        layer.msg('请输入6-16位的用户名')
        return '';
    }
    if (!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test($('#email').val())) {
        layer.msg('请输入正确的邮箱');
        return '';
    }
    if (!/^\w{6,16}$/.test($('#password1').val())) {
        layer.msg('请输入6-16位密码')
        return '';
    }
    if ($('#password1').val() != $('#password2').val()) {
        layer.msg('两次密码不一致')
        return ''
    }
    if (!$('#chk').prop('checked')) {
        layer.msg('请先同意协议')
        return '';
    }
    var index = layer.load(0, { shade: [1, '#ccc'], shadeClose: true })
    $.ajax({
        url: '../PHP/zhucer.php',
        type: 'post',
        data: {
            username: $('#username').val(),
            email: $('#email').val(),
            password: $('#password1').val(),
        },
        dataType: 'json',
        success: function (res) {
            if (res.status == 0) {
                layer.msg(res.error);
                setTimeout(() => {
                    layer.close(index);
                }, 1000)
            }
            else {
                var index21 = layer.msg(res.error);
                setTimeout(() => {
                    layer.close(index21);
                }, 500)
                setTimeout(() => {
                    window.location.href = '../pages/login.html';
                    layer.close(index);
                }, 2000)
            }
        }
    })
})
if (getCookie('username')) {
    $('#login').text(`欢迎尊贵的${getCookie('username')}`);
    $('#login').click((e) => { return false })
} else {
    $('#login').text(`登录`);
    $('#login').click(() => { window.location.href = '../pages/login.html' })
}