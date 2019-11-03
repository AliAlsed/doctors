import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget{
    TextEditingController customController = TextEditingController();
    Function validation;
    Function updateData;
    String label;
    CustomInput({this.customController,this.validation,this.updateData,this.label});
  @override
  Widget build(BuildContext context) {
        TextStyle textStyle = Theme.of(context).textTheme.title;

    return TextFormField(
                        controller: customController,
                        style: textStyle,
                        validator: validation,
                        onSaved: updateData,
                        decoration: InputDecoration(
                            labelText: label,
                            labelStyle: textStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      );

                      
  }


}