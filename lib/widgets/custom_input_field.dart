import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardtype;
  final bool isPassword;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField(
      {
        Key? key,
        this.hintText,
        this.labelText,
        this.helperText,
        this.icon,
        this.suffixIcon,
        this.keyboardtype,
        this.isPassword = false,
        required this.formProperty,
        required this.formValues
      }
  ) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype,
      obscureText: isPassword,
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if(value == null) {
          return 'Este campo es requerido';
        }
        return value.length<3?'Mínimo de 3 letras':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: 'Sólo letras',
        counterText: '3 caracteres',
        //prefixIcon: Icon(Icons.verified_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}