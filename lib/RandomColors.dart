import 'package:flutter/material.dart';
import 'dart:math';

class RandomColors {
  static Random random = new Random();

  static List<Color> getColorList() {
    List<Color> result = [];
    //r
    int r = random.nextInt(255);
    int rs = (r * 0.5).toInt();
    int rl = (r * 0.75).toInt();
    //g
    int g = random.nextInt(255);
    int gs = (g * 0.5).toInt();
    int gl = (g * 0.75).toInt();
    //b
    int b = random.nextInt(255);
    int bs = (b * 0.5).toInt();
    int bl = (b * 0.75).toInt();

    //colors
    //Color bcColor = Color.fromARGB( random.nextInt(255-40+1) + 40, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    result.add(Color.fromARGB(255, r, g, b));
    result.add(Color.fromARGB(255, rs, gs, bs));
    result.add(Color.fromARGB(255, rl, gl, bl));

    return result;
  }

  static List<Color> getRainbowList() {
    List <Color> result = [
      Color.fromARGB(255, 255, 83, 71),
      Color.fromARGB(255, 255, 157, 79),
      Color.fromARGB(255, 253, 203, 102),
      Color.fromARGB(255, 129, 209, 82),
      Color.fromARGB(255, 66, 173, 199),
      Color.fromARGB(255,75, 80, 218),
      Color.fromARGB(255, 168, 108, 173),
    ];

    return result;
  }

}