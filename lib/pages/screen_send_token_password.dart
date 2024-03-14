import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen_reset_password.dart';
import 'package:flutter_application_1/components/text_input_standard.dart';


class TokenSenha extends StatefulWidget {
  const TokenSenha({Key? key}) : super(key: key);

  @override
  State<TokenSenha> createState() => _TokenSenhaState();
}

  @override
  class _TokenSenhaState extends State<TokenSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Redefinição de senha!", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold,),),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: Text("Informe o email utilizado no cadastro e enviaremos um token para recuperação da sua senha", softWrap: true,),
          ),
          const InputFormFieldComponent(0, 0, 0, 0, 'cinza', 'E-mail', TextInputType.text),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: TextButton(style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remova a cor de sobreposição
                        return const Color.fromARGB(255, 235, 86, 161);
                      },
                    )),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RedefinirSenha()));
                    }, child: const Text("Enviar Token", style: TextStyle(fontSize: 18, color: Colors.white))),
          )
        ],),
      )
    );
    
    }
    }