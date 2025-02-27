import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  //double latitude;
  //double longtitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    //WeatherModel weatherModel = WeatherModel();
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherData,

      );
    }));

  }

  @override
  Widget build(BuildContext context) {
    //getData();
    // TODO: implement build
    return Scaffold(
      body:Center(
        child: SpinKitDoubleBounce(
          color:Colors.white,
          size:100.0,
        ),
      ),
    );
  }
}
