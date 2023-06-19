import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 3, 0, 0),
      child: const Column(
        children: [
          Row(children: [
            SizedBox(
              width: 300,
              child: Text(
                "Welcome, Thayllon",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ]),
          SizedBox(height: 30),
          Row(
            children: [
              Image(
                image: AssetImage('assets/sunny-weather.png'),
                width: 40,
              ),
              SizedBox(width: 10),
              Text(
                '1 Jan 2023',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 150),
              SizedBox(
                width: 28,
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 78,
                child: Text(
                  "Add device",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(
                child: Text(
                  "My home",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              SizedBox(
                child: Text(
                  "Living room",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              SizedBox(
                child: Text(
                  "Bathroom",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
