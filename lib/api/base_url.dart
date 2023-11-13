class BaseUrl {
  //https://api.openweathermap.org/data/2.5/weather?lat={lat}&lon={lon}&appid={API key} For current weather
  //api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={API key} For forecast
  //https://api.openweathermap.org/data/2.5/weather?q={city name},{country code}&appid={API key}

  static const String baseUrl = "https://api.openweathermap.org/data/2.5/";

  static iconWeather(String code) {
    return "https://openweathermap.org/img/wn/$code@4x.png";
  }
}
