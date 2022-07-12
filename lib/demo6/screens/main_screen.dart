import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Position? position;
  String? debugText;
  getLocation() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.lowest,
    timeLimit: Duration(
      seconds: 5,
    ));
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("你的位置：$position"),
        ),
        body: TextButton(
          onPressed: () {
            setState(() {
              getLocation();
            });
          },
          child: Text(debugText.toString()),
        ));
  }
}
