import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_input_standard.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);
  
  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

  @override
  class _CadastroPageState extends State<CadastroPage>{

    bool checkOne = false;
    bool checkTwo = false;
    bool checkThree = false;

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
            const Text("Cadastro",
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 235, 86, 161),
                    fontWeight: FontWeight.bold)),

            const InputFormFieldComponent(38, 16, 38, 16, 'cinza', 'Nome', TextInputType.text),
            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Mátricula', TextInputType.text),
            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'E-mail', TextInputType.text),
            
            
            const Padding(
              padding: EdgeInsets.fromLTRB(38, 0, 38, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      flex: 2,
                      child: InputFormFieldComponent(0,0,16, 0, 'cinza', 'DDD', TextInputType.number)),
                  Expanded(
                      flex: 5,
                      child: InputFormFieldComponent(0,0,16, 0, 'cinza', 'Telefone', TextInputType.number))
                ],
              ),
            ),

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
                  hintText: 'Filial',
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
                  hintText: 'Linha',
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

            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Ponto de Referência', TextInputType.text),

            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Senha', TextInputType.text),

            const InputFormFieldComponent(38, 0, 38, 16, 'cinza', 'Repetir Senha', TextInputType.text),

            Padding(
              padding: const EdgeInsets.fromLTRB(38, 0, 38, 11),
              child: Row(
                children: [
                  Checkbox(
                    value: checkOne,
                    onChanged: (value) {setState(() {
                      checkOne = value!;
                    });
                    },
                    activeColor: const Color.fromARGB(255, 235, 86, 161),
                  ),
                  const Expanded(
                      child: Text(
                          "Declaro estar ciente que o desconto será realizado mensalmente em folha de pagamento",
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
                      onChanged: (value) {setState(() {checkTwo = value!;
                        
                      });},
                      activeColor: const Color.fromARGB(255, 235, 86, 161)),
                  const Expanded(
                      child: Text(
                          "Declaro estar ciente que o percentual de desconto depende do meu endereço de origem e que não ultrapassará 6% do salário",
                          softWrap: true)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38, 0, 38, 11),
              child: Row(
                children: [
                  Checkbox(
                      value: checkThree,
                      onChanged: (value) {setState(() {
                        checkThree = value!;
                      });},
                      activeColor: const Color.fromARGB(255, 235, 86, 161)),
                  const Expanded(
                      child: Text(
                          "Declaro estar ciente que o retorno sobre a linha será realizado em até 48 horas.",
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
                  onPressed: () {Navigator.pop(context);},
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
