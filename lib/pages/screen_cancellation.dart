import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen_login.dart';
import 'package:flutter_application_1/components/text_input_standard.dart';

class CancelamentoFretado extends StatefulWidget {
  const CancelamentoFretado({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<CancelamentoFretado> createState() => _CancelamentoFretadoState();
}

@override
class _CancelamentoFretadoState extends State<CancelamentoFretado> {
  bool checkOne = false;
  bool checkTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: Image.asset("assets/Mask group (1).png", fit: BoxFit.fill),
            ),
            const Text("Cancelamento de Transporte Fretado",
                style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 235, 86, 161),
                    fontWeight: FontWeight.bold)),

            const InputFormFieldComponent(38, 16, 38, 16, 'cinza', 'Nome', TextInputType.text),
            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Mátricula', TextInputType.text),

            Padding(
              padding: const EdgeInsets.fromLTRB(38, 0, 38, 16),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 185, 185, 185),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 185, 185, 185),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  hintText: 'Turno',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 185, 185, 185),
                  ),
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                ),
                items: const [
                  DropdownMenuItem(
                    value: 'opcao1',
                    child: Text('Opção 1'),
                  ),
                  DropdownMenuItem(
                    value: 'opcao2',
                    child: Text('Opção 2'),
                  ),
                  DropdownMenuItem(
                    value: 'opcao3',
                    child: Text('Opção 3'),
                  ),
                ],
                onChanged: (value) {
                  // Lógica a ser executada quando uma opção é selecionada
                },
              ),
            ),

            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Endereço', TextInputType.text),

            Padding(
              padding: const EdgeInsets.fromLTRB(38, 0, 38, 11),
              child: Row(
                children: [
                  Checkbox(
                    value: checkOne,
                    onChanged: (value) {
                      setState(() {
                        checkOne = value!;
                      });
                    },
                    activeColor: const Color.fromARGB(255, 235, 86, 161),
                  ),
                  const Expanded(
                      child: Text(
                          "Declaro estar ciente que, a partir de hoje, não terei mais acesso ao uso de transporte pela empresa",
                          softWrap: true))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38, 0, 38, 11),
              child: Row(
                children: [
                  Checkbox(
                      value: checkTwo,
                      onChanged: (value) {
                        setState(() {
                          checkTwo = value!;
                        });
                      },
                      activeColor: const Color.fromARGB(255, 235, 86, 161)),
                  const Expanded(
                      child: Text(
                          "Declaro estar ciente que as solicitações de cancelamento realizadas após o dia 15 implicarão no desconto em folha no próximo mês.",
                          softWrap: true)),
                ],
              ),
            ),

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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                        (route) => false);
                  },
                  child: const Text(
                    "Enviar",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
