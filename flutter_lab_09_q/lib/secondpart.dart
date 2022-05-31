// import 'dart:convert';
import 'package:flutter/material.dart';
class me extends StatelessWidget {
  const me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class koj extends StatefulWidget {
  const koj({Key? key}) : super(key: key);

  @override
  _kojState createState() => _kojState();
}

class _kojState extends State<koj> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// void main() => runApp(MaterialApp(
//   title: "Weather App",
//   home: HomePage(),
// ));
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   String cityName = "";
//   String degree = "0";
//
//   String apikey = "196640b8d893deaba5c448d111c73834";
//
//   showWeather() async {
//     String url =
//         "http://api.openweathermap.org/data/2.5/weather?q=$cityName,&units=metric&appid=" +
//             apikey;
//     final response = await http.get(Uri.parse(url));
//
//     if (response.statusCode == 200) {
//       var items = jsonDecode(response.body);
//
//       setState(() {
//         degree = (items["main"]["temp"]).round().toString();
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.yellow,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: Column(
//                 children: [
//                   Title(
//                     color: Colors.yellow,
//                     child: Text('WEATHER APP'),
//                   ),
//
//                   const SizedBox(height: 20),
//                   //  For City Name
//                   TextField(
//                     onChanged: (val) {
//                       cityName = val;
//                     },
//                     decoration:
//                     const InputDecoration(hintText: "Enter City Name"),
//                   ),
//                   const SizedBox(height: 20),
//                   MaterialButton(
//                     height: 50,
//                     color: const Color(0xFF0000),
//                     child: const Text('Click To Show Weather',
//                         style: TextStyle(fontSize: 15, color: Colors.white)),
//                     onPressed: () {
//                       showWeather();
//                     },
//                   ),
//                   const SizedBox(height: 50),
//                   Text('Temperature is $degree degree celcius',
//                       style: const TextStyle(
//                           fontSize: 20, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 50),
//                   const Text('Your Current Weather.',
//                       style:
//                       TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }