import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/BlocUi.dart/homepageBloc.dart';
import 'package:weather_app/BlocUi.dart/searchpageBloc.dart';
import 'package:weather_app/cubits/cubitsweather/cubuties%20functions.dart';
import 'package:weather_app/services/weather_service.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => weatherCubites(WeatherService()),
    child: WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null ?  Colors.blue : Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()  ,
          ),
      home: HomepageBloc(),
      routes: {
        "Homepage": (context) => HomepageBloc(),
        "SearchPage": (context) => SearchPageBloc()
      },
    );
  }
}
