import 'package:flutter/material.dart';
import 'package:test_task_flutter_stephanie/RandomColors.dart';
import 'package:test_task_flutter_stephanie/SecondScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorGenerateContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColorGenerateContainer extends StatefulWidget { // use this
  @override
  _ColorGenerateContainerState createState() => _ColorGenerateContainerState();
}

class _ColorGenerateContainerState extends State<ColorGenerateContainer> {
  static List <Color> colors = RandomColors.getColorList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //можно еще использовать GestureDetector
      body: InkWell(
        onTap: () {
          setState(() { // use setState
            colors = RandomColors.getColorList();
          });
        },
        child: Container(
          color: colors[0],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('HELLO THERE:)',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      color: colors[1],
                      fontSize: 44,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 100.0,
                  height: 50.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(170, 70),
                    primary: colors[1],
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(100.0),
                    ),),
                  child: Text("Additional\nfuture",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Avenir',
                        color: colors [2]),),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
