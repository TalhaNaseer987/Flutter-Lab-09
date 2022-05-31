import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lab9/networkhelper.dart';

class apifetch extends StatefulWidget {
  @override
  _apifetchState createState() => _apifetchState();
}

class _apifetchState extends State<apifetch> {
  var weatherdata;
  Position? position;
  double? lat;
  double? long;
  String? apiid;
  String? Value;

  String? temperature;
  String? cityName;
  String? Description;
  String? timezone;
  void getdata() async {
    LocationPermission permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();
    position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
    lat = position!.latitude;
    long = position!.longitude;
    apiid = '931e8bdeccb205992200128a5f3a3e95';
    print(lat);
    print(long);
    networkhelper helper = networkhelper(Uri.parse(
        'http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=$apiid'));
    weatherdata = await helper.getdata();
    print(weatherdata);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Lab Evaluation"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: FlatButton(
                hoverColor: Colors.blue,
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Get Weather Data'),
                onPressed: () {
                  setState(() {
                    temperature = weatherdata['main']['temp'].toString();
                    cityName = weatherdata['name'].toString();
                    Description =
                        weatherdata['weather'][0]['description'].toString();
                    timezone = weatherdata['timezone'].toString();
                  });
                },
              )),
              Expanded(
                  child: SizedBox(
                height: 10,
              )),
              Expanded(
                child: Text(temperature.toString()),
              ),
              Expanded(child: Text(cityName.toString())),
              Expanded(child: Text(Description.toString())),
              Expanded(child: Text(timezone.toString()))
            ],
          ),
        ),
      ),
    ));
  }
}
