import 'package:flashlight/flashlight.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flash Light"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("flash_light_background.jpg"))),
        child: Center(
          child: Transform.rotate(
            angle: -3.14 / 2,
            child: Transform.scale(
              scale: 3.0,
              child: Switch(
                activeColor: Colors.green,
                activeTrackColor: Colors.green,
                inactiveThumbColor: Colors.black,
                splashRadius: 10.5,
                hoverColor: Colors.blueGrey,
                value: isON,
                onChanged: (value) {
                  setState(() {
                    isON = !isON;
                    isON ? Flashlight.lightOn() : Flashlight.lightOff();
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
