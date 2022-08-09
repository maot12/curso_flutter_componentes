import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  //Código para alertas en IOS
  void displayDialogIOS(BuildContext context) {

    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar', style: TextStyle(color: Colors.blue),)
              ),

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK')
              )
            ],

          );
        },
    );

  }

  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context){
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10,),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar', style: TextStyle(color: Colors.green),)
              ),

              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK')
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Screen Bar'),
        ),

        body: Center(
            child: ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
                ),
                onPressed: () => Platform.isAndroid
                    ? displayDialogAndroid(context)
                    : displayDialogIOS(context)
            )
        ),

        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        )
    );
  }
}
