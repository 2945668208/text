// 设置cookie
function setCookie(key, value, expires) {
    let time = new Date();
    time.setTime(time.getTime() - 8 * 3600 * 1000 + expires * 1000);
    document.cookie = `${key}=${value};expires=${time}`;
}
//读取cookie
function getCookie(key) {
    let arr = document.cookie.split("; ");
    for (let i = 0; i < arr.length; i++) {
        if (arr[i].split("=")[0] == key) {
            return arr[i].split("=")[1];
        }
    };
}
//删除cookie
function delCookie(key) {
    setCookie(key, 1, -1)
}