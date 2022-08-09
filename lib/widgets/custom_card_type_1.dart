import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Suspendisse scripta ignota has explicari. Taciti quidam tacimates donec dui. Offendit sapien sonet idque blandit. Tractatos dicant est vitae libero propriae mea constituam esse feugait. Suas mus feugiat nihil te vero donec ipsum solet.'),
          ),
          
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {

                }, child: const Text('Cancelar'),

                ),

                TextButton(onPressed: () {

                }, child: Text('Ok'))

              ],
            ),
          )
        ],
      ),
    );
  }
}