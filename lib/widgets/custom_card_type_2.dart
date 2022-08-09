import 'package:flutter/material.dart';

class  CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardType2({
    Key? key,
    required this.imageUrl,
    required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 10,

      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (name!= null)
            Container(
            alignment: AlignmentDirectional.bottomEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 20),
              child: Text(name ?? 'possim usu vocent luptatum libero rutrum habitant ornatus salutatus')
          )
        ],
      ),
    );
  }
}
