import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_task_flutter_stephanie/main.dart';
import 'package:test_task_flutter_stephanie/RandomColors.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'dart:math';

List <Color> _colorDate = RandomColors.getRainbowList();

List <String> _txtDate = [
  "Red",
  "Orange",
  "Yellow",
  "Green",
  "Blue sky",
  "Blue",
  "Purple",
];

class SecondScreen extends StatefulWidget{
  @override
  _SecondScreenState createState()=>_SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>{

  static Random _random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 160, 164, 1),
      body: Container(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ElevatedButton.icon(
                    label: Text(''),
                    icon: Icon(Icons.chevron_left),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(100, 203, 206, 1),),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => ColorGenerateContainer()));
                    },
                  ),
                  Text(
                    "Rainbow",
                    style: TextStyle(
                      fontFamily: "Avenir",
                      fontSize: 44,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    height: 600,
                    width: 500,
                    child: Swiper(
                      autoplay: false,
                      itemCount: 7,
                      itemBuilder: (BuildContext contex, int index){
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              _txtDate[index],
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 30,
                                color: Color.fromRGBO(236, 237, 237, 1),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            color: _colorDate[index],
                          ),
                        );
                      },
                      viewportFraction: 0.9,
                      scale: 0.9,
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}