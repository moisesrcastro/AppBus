import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen_send_token_password.dart';
import 'package:flutter_application_1/pages/screen_sign_up.dart';
import 'package:flutter_application_1/pages/screen_qr_code.dart';
import 'package:flutter_application_1/components/text_input_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 235, 86, 161),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(85, 0, 85, 0),
                child: Image.asset("assets/Mask group.png", fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "usuário é requerido";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Colors.white),
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
                        color: Color.fromARGB(255, 255, 255,
                            255), // Cor da borda quando está focado
                        width: 1.0,
                      ),
                    ),
                    hintText: "Mátricula",
                    hintStyle: const TextStyle(color: Colors.white),
                    fillColor: const Color.fromARGB(20, 255, 255, 255),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "senha é requerido";
                    }
                    return null;
                  },
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                    icon: Icon(Icons.lock, color: Colors.white),
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
                        color: Color.fromARGB(255, 255, 255,
                            255), // Cor da borda quando está focado
                        width: 1.0,
                      ),
                    ),
                    hintText: "Senha",
                    hintStyle: const TextStyle(color: Colors.white),
                    fillColor: const Color.fromARGB(20, 255, 255, 255),
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: TextButton(
                    //Para fazer com o esse tipo de botão não apresente hover
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remova a cor de sobreposição
                        return Colors.transparent;
                      },
                    )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TokenSenha(),
                          ));
                    },
                    child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Esqueci a senha",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white)))),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        // Remova a cor de sobreposição
                        return Colors.white;
                      },
                    )),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const QrCodeSession()));
                      }
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 235, 86, 161)),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Não tem uma conta?",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CadastroPage()));
                      },
                      style: ButtonStyle(overlayColor:
                          MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // Remova a cor de sobreposição
                          return Colors.transparent;
                        },
                      )),
                      child: const Text("Inscreva-se",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
