document.getElementById("loginForm").addEventListener("submit", function(event) {
  

  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;

  // Tạo URL mới với thông tin đăng nhập
  var url = "newpage.html?username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password);

  // Mở tab mới và điều hướng đến URL mới
  var newTab = window.open(url, "_blank");
  newTab.focus();
});