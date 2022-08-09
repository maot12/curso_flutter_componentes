import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShaped(){
    final random = Random();
    _width = random.nextInt(300).toDouble()+70;
    _height = random.nextInt(300).toDouble()+70;
    _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1);
    _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble()+10);
        
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
       body: Center(
         child: AnimatedContainer(
           duration: const Duration(milliseconds: 400),
           curve: Curves.easeOutCubic,//https://api.flutter.dev/flutter/animation/Curves-class.html
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             color: _color,
             borderRadius: _borderRadiusGeometry
             
           ),
         ),
       ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_fill_outlined),
        onPressed: () {
          changeShaped();

        },
      ),
    );
  }
}
