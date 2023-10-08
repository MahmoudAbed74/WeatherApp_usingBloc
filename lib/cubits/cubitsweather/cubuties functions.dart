//! تنشئ الفانكشز اللي يحصل فيهم عشان يحصل النغيير

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/cubitsweather/cubites%20states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class weatherCubites extends Cubit<weathercubits_Sates> {
  weatherCubites(this.weatherService) : super(weatherinitalstate());

  WeatherService weatherService;
  WeatherModel? weatherModel;
  String? cityName;
  void getweather({required cityName}) async {
    emit(weatherLoading());
    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);

      emit(weathersuccessed());
    } catch (e) {
      emit(weatherFailuare());
    }
  }
}
