import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 3, 0, 0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Row(children: [
            SizedBox(
              width: 300,
              child: Text(
                "Welcome, Thay",
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          SizedBox(height: 18),
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
                  fontSize: 15,
                    fontWeight: FontWeight.bold
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
              OutlinedButton(
                child: Text('My home', style: TextStyle(color: Colors.black, fontSize: 16),),
                onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('My home clicked')),
                );},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.grey)
                        )
                    )
                )
              ),

              SizedBox(width: 10),
              OutlinedButton(
                child: Text('Living room', style: TextStyle(color: Colors.white, fontSize: 16),),
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Living room clicked')),
                );},
                style: ElevatedButton.styleFrom( // returns ButtonStyle
                  padding:EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  side: BorderSide(width: 1.3, color: Color(0xff383838)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),

                  ),
                ),
              ),

              SizedBox(width: 10),
              OutlinedButton(
                  child: Text('Bathroom', style: TextStyle(color: Colors.white, fontSize: 16),),
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Bathroom room clicked')),
                    );},
                style: ElevatedButton.styleFrom( // returns ButtonStyle
                  padding:EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  side: BorderSide(width: 1.3, color: Color(0xff383838)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 33),


          Text(
            "Overview",
            style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(30)),
            width: 360,
            height: 200,
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 23
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
