import 'package:fl_components_curso/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _slidervalue = 100;
  bool _sliderenabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders && Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              //divisions: 10,
              min: 50,
              max: 2000,
              value: _slidervalue,
              onChanged: _sliderenabled ? (value) {
                _slidervalue = value;
                setState(() {});
                }:null,
            ),

            /*Checkbox(value: _sliderenabled, onChanged: (value) {
              _sliderenabled = value ?? true;
              setState(() {

              });

            },),*/
          /*Switch(
                          value: _sliderenabled,
                          onChanged: (value) => setState(() {
                _sliderenabled = value;
              })),*/
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
                value: _sliderenabled,
                onChanged: (value) => setState(() {
                  _sliderenabled = value ?? true;
                })
                ),

            SwitchListTile.adaptive(activeColor: AppTheme.primary,
                title: const Text('Habilitar Slider'),
                value: _sliderenabled,
                onChanged: (value) => setState(() {
                  _sliderenabled = value ?? true;
                })),


            Expanded(
              child: SingleChildScrollView(
                child: Image(
                    image: const NetworkImage('https://media.revistagq.com/photos/5eb5499da458ae53fb864fba/16:9/w_2560%2Cc_limit/peliculas-marvel.jpg'),
                  fit: BoxFit.contain,
                  width: _slidervalue,
                ),
              ),
            ),

          ],
        )
      );
  }
}
