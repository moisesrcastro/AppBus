import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data.dart';
import 'package:flutter_application_1/pages/screen_cancellation.dart';
import 'package:flutter_application_1/pages/screen_change_shift.dart';
import 'package:flutter_application_1/pages/screen_change_password.dart';
import 'package:qr_flutter/qr_flutter.dart';


class QrCodeSession extends StatefulWidget {
  const QrCodeSession({Key? key, required this.userMat}) : super(key: key);

  final String userMat;

  @override
  // ignore: no_logic_in_create_state
  State<QrCodeSession> createState() => _QrCodeSessionState();
}

// ignore: empty_constructor_bodies,
@override
class _QrCodeSessionState extends State<QrCodeSession> {
  // ignore: prefer_final_fields
  int _selectedIndex = 2;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("QR Code",
              style: TextStyle(color: Colors.white, fontFamily: 'Roboto')),
          backgroundColor: const Color.fromARGB(255, 235, 86, 161),
        ),
        body: Container(
          color: const Color.fromARGB(255, 237, 241, 242),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11, 22, 11, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color:
                                  Color.fromARGB(64, 0, 0, 0), // Cor da sombra
                              spreadRadius: 0, // Raio de propagação da sombra
                              blurRadius: 4, // Raio de desfoque da sombra
                              offset: Offset(0, 2), // Deslocamento da sombra
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(24, 0, 0, 0),
                                  child: Text("Turno:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 9)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Text("PRIMEIRO",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(24, 8, 0, 0),
                                  child: Text("Ultima linha utilizada:",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 9)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24),
                                  child: Text("LINHA 1",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                )
                              ]),
                          Image.asset("assets/Group 42.png")
                        ],
                      )),
                ),
              ),
              const SizedBox(height: 25), // Espaçamento entre os containers
              Expanded(
                flex: 4,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(11, 0, 11, 22),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 254, 254, 254),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color:
                                  Color.fromARGB(64, 0, 0, 0), // Cor da sombra
                              spreadRadius: 0, // Raio de propagação da sombra
                              blurRadius: 4, // Raio de desfoque da sombra
                              offset: Offset(0, 2), // Deslocamento da sombra
                            ),
                          ]),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(24, 28, 0, 0),
                              child: Text("Meu QR code",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(24, 0, 23, 0),
                              child: Text(
                                  "Este é o QR utilizado para registro de presença na linha cadastrada.",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                  softWrap: true),
                            ),
                            Expanded(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 0, 24, 0),
                                  child: QrImageView(data:widget.userMat,
                                  version:QrVersions.auto,size:280,
                                ),
                              ),
                              ),
                            )
                          ]),
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 204, 0, 102),
          unselectedItemColor: const Color.fromARGB(255, 178, 178, 178),
          unselectedLabelStyle:
              const TextStyle(color: Color.fromARGB(255, 178, 178, 178)),
          selectedLabelStyle:
              const TextStyle(color: Color.fromARGB(255, 204, 0, 102)),
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.bus_alert), label: "  Cancelar\nTransporte"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "  Alterar\nCadastro"),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code), label: "  QR\nCode"),
            BottomNavigationBarItem(
                icon: Icon(Icons.password), label: "Trocar\nSenha"),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), label: "Sair")
          ],
          onTap: (index) {
            setState(() {
              switch (index) {
                case 0:
                
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CancelamentoFretado()));
                  break;
                case 1:
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrocaTurnoFilial()));
                  break;
                case 3:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AlterarSenha()));
                  break;
                case 4:
                  Navigator.pop(context);
                  break;
              }
            });
          },
        ));
  }
}
