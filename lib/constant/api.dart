class AppUrl {
  static String baseUrl = '103.210.69.72';
  static String register = '$baseUrl/api/passenger/register';
  static String login = '$baseUrl/api/passenger/login';
  static String logout = '$baseUrl/teacher/logout';

  //reset
  static String resetPassword = '$baseUrl/api/passenger/update-password';
  static String resetAlamat = '$baseUrl/api/passenger/update-address';
  static String resetNoHp = '$baseUrl/api/passenger/update-phone-number';
  static String resetImage = '$baseUrl/api/passenger/update-image';
}