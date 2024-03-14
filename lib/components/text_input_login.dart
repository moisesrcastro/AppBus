import 'package:flutter/material.dart';

class InputFormFieldlogin extends StatefulWidget {

  final double var_left;
  final double var_top;
  final double var_right;
  final double var_bottom;
  final String nome;
  final TextInputType keyboardType;
  final Icon icon;
  const InputFormFieldlogin(
    this.var_left, this.var_top, this.var_right, this.var_bottom,  this.nome, this.keyboardType, this.icon,{Key? key}
  ): super(key: key);


  @override
  State<InputFormFieldlogin> createState() => _InputFormFieldloginState();
}


  @override
  class _InputFormFieldloginState extends State<InputFormFieldlogin>{

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:  EdgeInsets.fromLTRB(widget.var_left, widget.var_top, widget.var_right, widget.var_bottom),
              child: TextFormField(keyboardType: widget.keyboardType,
              
                decoration: InputDecoration(
                  icon: widget.icon,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 1.0), // Cor da borda quando não está focado
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), // Cor da borda quando está focado
                        width: 1.0,
                      ),),
                  hintText: widget.nome,
                  hintStyle: const TextStyle(color: Colors.white),
                  fillColor: const Color.fromARGB(20, 255, 255, 255),
                  filled: true,
                ),
              ),
            );

  }
  }