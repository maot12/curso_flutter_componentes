import 'package:flutter/material.dart';

import 'package:fl_components_curso/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Card Widget'),
        ),

        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children:const  [
            CustomCardType1(),
            SizedBox(height: 10,),
            CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://cdn.eso.org/images/thumb700x/millour-01-cc.jpg', name: null,),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://iso.500px.com/wp-content/uploads/2014/07/mesa-after.jpg', name: null,),
          ],
        )
      );
  }
}
