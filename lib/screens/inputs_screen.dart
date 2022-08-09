import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Miguel',
      'last_name': 'Ortega',
      'email': 'miguel@google.com',
      'password': '123456',
      'role': 'Admin',
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    formValues: formValues,
                    formProperty: 'first_name',
                  ),
                  const SizedBox(height: 30,),

                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    formValues: formValues,
                    formProperty: 'last_name',
                  ),
                  const SizedBox(height: 30,),

                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardtype: TextInputType.emailAddress,
                    formValues: formValues,
                    formProperty: 'email',),
                  const SizedBox(height: 30,),

                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    isPassword: true,
                    formValues: formValues,
                    formProperty: 'password',),
                  const SizedBox(height: 30,),

                  DropdownButtonFormField<String>(
                    value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Superuser',
                          child: Text('Superuser'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Jr. Developer',
                          child: Text('Jr. Developer'),
                        )
                      ],
                    onChanged: (value) {
                        print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),

                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if(!myFormKey.currentState!.validate()){
                          print('Formulario no válido');
                          return;
                        }
                        //TODO : imprimir valores formulario
                        print(formValues);

                      },
                      child: const SizedBox(
                        width: double.infinity,
                          child: Center(
                              child: Text('Guardar')
                          )
                      )
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
