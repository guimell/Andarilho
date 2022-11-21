import 'package:andarilho/avaliacoes.dart';
import 'package:andarilho/pagamentos.dart';
import 'package:andarilho/servicos.dart';
import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'config.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key, title}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: AppConfig.screenSize.height * 0.2,
                    width: AppConfig.screenSize.width * 0.2,
                    child: Image.asset(
                      "assets/images/Logo cliente andarilho.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text(
                    "Andarilho",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Servicos(title: "Serviços"),
                              ),
                            );
                          },
                          child: const InicioContainer(
                            image: "assets/images/Aplicativo Andarilho (7).png",
                          )),
                      const Text("Serviços")
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Avaliacao(
                                title: "Avaliações",
                              ),
                            ),
                          );
                        },
                        child: const InicioContainer(
                            image: "assets/images/avaliacoes.png"),
                      ),
                      const Text("Avaliações")
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Pagamentos(title: "Pagamentos"),
                            ),
                          );
                        },
                        child: const InicioContainer(
                            image: "assets/images/pagamentos.png"),
                      ),
                      const Text("Pagamentos")
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Stack(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: AppConfig.screenSize.height * 0.4,
                      width: AppConfig.screenSize.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber),
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.9,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Pesquisar...',
                        ),
                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
