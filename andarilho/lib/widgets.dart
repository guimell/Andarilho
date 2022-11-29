import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'avaliacoes.dart';

class AvaliaContainer extends StatelessWidget {
  const AvaliaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Container(
            width: AppConfig.screenSize.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppConfig.darkColors.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppConfig.darkColors.primary),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.chat_rounded,
                    color: Colors.blue,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PagamentoContainer extends StatelessWidget {
  const PagamentoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Container(
            width: AppConfig.screenSize.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppConfig.darkColors.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppConfig.darkColors.primary),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "QUENTINHAS MARIA",
                        style: TextStyle(color: AppConfig.darkColors.primary),
                        textAlign: TextAlign.center,
                      ),
                      Text("PAGAMENTO CONCLUIDO")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InicioContainer extends StatelessWidget {
  final String image;
  const InicioContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppConfig.darkColors.onPrimary),
        height: AppConfig.screenSize.height * 0.13,
        width: AppConfig.screenSize.width * 0.25,
        child: Image.asset(image),
      ),
    );
  }
}

class ButtonPerfil extends StatelessWidget {
  final text;
  final classe;
  const ButtonPerfil({Key? key, this.text, this.classe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: AppConfig.screenSize.width * 0.5,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              primary: AppConfig.lightColors.primary),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => classe),
            );
          },
          child: Text(text),
        ),
      ),
    );
  }
}

class ConfigPerfilForms extends StatefulWidget {
  final text;
  const ConfigPerfilForms({super.key, this.text});

  @override
  State<ConfigPerfilForms> createState() => _ConfigPerfilFormsState();
}

class _ConfigPerfilFormsState extends State<ConfigPerfilForms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(30.0),
          ),
          labelText: widget.text,
        ),
      ),
    );
  }
}

class ContainerChat extends StatefulWidget {
  const ContainerChat({super.key});

  @override
  State<ContainerChat> createState() => _ContainerChatState();
}

class _ContainerChatState extends State<ContainerChat> {
  var chatStatus;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Icon(
            Icons.chat,
            size: 40,
            color: chatStatus == true ? Colors.green : Colors.red,
          ),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppConfig.lightColors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            width: AppConfig.screenSize.width * 0.2,
            child: const Text(
              "data",
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  //creating map
  late GoogleMapController mapController;
  // starting position
  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(45.521563, -122.677433), zoom: 14);
  //creating markers
  Set<Marker> markers = {};

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  //getting current location
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  Position? currentPosition;
  @override
  void initState() {
    super.initState();
    updatePosiiton();
  }

  void animateTo(Position position) {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(position.latitude, position.longitude), zoom: 14),
      ),
    );
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location services are disabled");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error("Location permission are permanently denied");
    }
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  void updatePosiiton() async {
    for (int i = 0;;) {
      currentPosition = await determinePosition();
      log(currentPosition.toString());
      if (currentPosition == null) {
        return;
      }

      animateTo(currentPosition!);
      markers.clear();
      markers.add(
        Marker(
          markerId: const MarkerId("currentLocation"),
          position:
              LatLng(currentPosition!.latitude, currentPosition!.longitude),
        ),
      );
      setState(() {});
      await Future.delayed(Duration(seconds: 10));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
              height: AppConfig.screenSize.height * 0.4,
              width: AppConfig.screenSize.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.amber),
              child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  markers: markers,
                  zoomControlsEnabled: false,
                  mapType: MapType.normal,
                  initialCameraPosition: initialCameraPosition)),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: FloatingActionButton.extended(
            onPressed: () async {
              animateTo(currentPosition!);
            },
            label: const Text("Minha localização"),
            icon: Icon(Icons.location_on),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: AppConfig.screenSize.width * 0.9,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppConfig.lightColors.primary,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                labelText: 'Pesquisar...',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
