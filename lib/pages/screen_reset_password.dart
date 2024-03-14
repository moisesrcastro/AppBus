import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen_login.dart';
import 'package:flutter_application_1/components/text_input_standard.dart';


class RedefinirSenha extends StatefulWidget {
  const RedefinirSenha({Key? key}) : super(key: key);

  @override
  State<RedefinirSenha> createState() => _RedefinirSenhaState();
}

  @override
  class _RedefinirSenhaState extends State<RedefinirSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Redefinir Senha!", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: Text("Informe o token enviado no seu email", softWrap: true,),
          ),
          const InputFormFieldComponent(0, 0, 0, 0, 'cinza','Token', TextInputType.number),
          const InputFormFieldComponent(0, 12, 0, 12, 'cinza','Senha', TextInputType.text),
          const InputFormFieldComponent(0, 0, 0, 0, 'cinza','Repetir Senha', TextInputType.text),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: TextButton(style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remova a cor de sobreposição
                        return const Color.fromARGB(255, 235, 86, 161);
                      },
                    )),
                    onPressed: (){Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginPage()), (route) => false);}, 
                    child: const Text("Redefinir Senha", style: TextStyle(fontSize: 18, color: Colors.white))),
          )
        ],),
      )
    );

  }
  }