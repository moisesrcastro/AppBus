import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen_login.dart';
import 'package:flutter_application_1/components/text_input_standard.dart';


class AlterarSenha extends StatefulWidget {
  const AlterarSenha({Key? key}) : super(key: key);

  @override
  State<AlterarSenha> createState() => _AlterarSenhaState();
}

  @override
  class _AlterarSenhaState extends State<AlterarSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Image.asset("assets/Mask group (1).png", fit: BoxFit.cover),
          ),
          const Text("Alterar Senha",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 235, 86, 161),
                  fontWeight: FontWeight.bold)),
          const InputFormFieldComponent(38, 16, 38, 16, 'cinza', 'Senha Atual', TextInputType.text),
          const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Nova Senha', TextInputType.text),
          const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Repetir Senha', TextInputType.text),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    // Remova a cor de sobreposição
                    return const Color.fromARGB(255, 235, 86, 161);
                  },
                )),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginPage()), (route) => false);
                },
                child: const Text(
                  "Alterar",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}