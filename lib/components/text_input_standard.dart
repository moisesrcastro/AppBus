// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class InputFormFieldComponent extends StatefulWidget {

  // ignore: non_constant_identifier_names
  final double var_left;
  final double var_top;
  final double var_right;
  final double var_bottom;
  final String borda;
  final String nome;
  final TextInputType keyboardType;

  const InputFormFieldComponent(
    this.var_left, this.var_top, this.var_right, this.var_bottom, this.borda, this.nome, this.keyboardType,{Key? key}
  ): super(key: key);


  @override
  State<InputFormFieldComponent> createState() => _InputFormFieldComponentState();
}


  @override
  class _InputFormFieldComponentState extends State<InputFormFieldComponent>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(widget.var_left, widget.var_top, widget.var_right, widget.var_bottom),
      child: TextFormField(
        keyboardType:widget.keyboardType ,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 185, 185, 185),
                width: 1.0), // Cor da borda quando não está focado
            borderRadius: BorderRadius.circular(8.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.borda == 'cinza'? const Color.fromARGB(255, 185, 185, 185):const Color.fromARGB(255, 255, 255, 255), // Cor da borda quando está focado
                  width: 1.0,
                ),),
          hintText: widget.nome,
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 185, 185, 185)),
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
        ),
      ),
    );
  }
}
