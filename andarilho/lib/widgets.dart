import 'dart:async';
import 'dart:developer';
import 'dart:ui';

import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/date_symbol_data_http_request.dart';
// import 'package:intl/intl.dart';
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
              color: AppConfig.lightColors.onPrimary,
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
                          color: AppConfig.lightColors.primary),
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
              color: AppConfig.lightColors.onPrimary,
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
                          color: AppConfig.lightColors.primary),
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
                        style: TextStyle(color: AppConfig.lightColors.primary),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "PAGAMENTO CONCLUIDO",
                        style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                        ),
                      )
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
            color: AppConfig.lightColors.onPrimary),
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
          child: Text(
            text,
            style: TextStyle(
              color: AppConfig.lightColors.onPrimary,
            ),
          ),
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
        style: TextStyle(color: AppConfig.lightColors.onPrimary),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppConfig.lightColors.onPrimary,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          labelText: widget.text,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppConfig.lightColors.primary,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          labelStyle: TextStyle(color: AppConfig.lightColors.onPrimary),
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
            child: Text(
              "data",
              style: TextStyle(
                color: AppConfig.lightColors.onPrimary,
              ),
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
  GoogleMapController? mapController;

  // starting position
  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(0, -0), zoom: 14);

  //creating markers
  // Set<Marker> markers = {};

  bool positionInit = false;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Widget? maps;
  bool trackUser = true;

  //getting current location
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  Position? currentPosition;
  @override
  void initState() {
    super.initState();
    maps = GoogleMap(
      // onMapCreated: _onMapCreated,
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
      },
      markers: {
        Marker(
          markerId: const MarkerId("currentLocation"),
          position: currentPosition == null
              ? LatLng(0, 0)
              : LatLng(currentPosition!.latitude, currentPosition!.longitude),
        ),
      },
      zoomControlsEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: initialCameraPosition,
    );
    updatePosition();
  }

  void animateTo(Position position) {
    if (mapController == null) {
      return;
    }
    mapController!.animateCamera(
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

  void updatePosition() async {
    for (int i = 0;;) {
      currentPosition = await determinePosition();
      log(currentPosition.toString());
      if (currentPosition == null) {
        return;
      }
      log(trackUser.toString());
      if (trackUser) {
        animateTo(currentPosition!);
      }

      // markers.clear();
      // markers.add(
      //   Marker(
      //     markerId: const MarkerId("currentLocation"),
      //     position:
      //         LatLng(currentPosition!.latitude, currentPosition!.longitude),
      //   ),
      // );
      // log(markers.toString());
      positionInit = true;
      if (mounted) {
        setState(() {});
        await Future.delayed(
          const Duration(seconds: 1),
        );
      } else {
        break;
      }
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
              borderRadius: BorderRadius.circular(20),
            ),
            child: positionInit
                ? maps
                : const Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator()),
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: FloatingActionButton(
            backgroundColor: AppConfig.lightColors.primary,
            foregroundColor: AppConfig.lightColors.secondary,
            mini: true,
            onPressed: () {
              if (!trackUser) {
                animateTo(currentPosition!);
              }
              trackUser = !trackUser;
            },
            child: Icon(Icons.location_searching_outlined),
          ),
        ),
      ]),
    );
  }
}

// class MyDatePicker extends StatefulWidget {
//   @override
//   _MyDatePickerState createState() => _MyDatePickerState();
// }

// class _MyDatePickerState extends State<MyDatePicker> {
//   late double _height;
//   late double _width;

//   late String _setDate;

//   late String dateTime;

//   DateTime selectedDate = DateTime.now();

//   TextEditingController _dateController = TextEditingController();
//   Future<Null> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         initialDatePickerMode: DatePickerMode.day,
//         firstDate: DateTime(1930),
//         lastDate: DateTime(2023));
//     if (picked != null) {
//       setState(() {
//         selectedDate = picked;
//         _dateController.text = DateFormat.yMd().format(selectedDate);
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _dateController.text = DateFormat.yMd().format(DateTime.now());
//   }

//   @override
//   Widget build(BuildContext context) {
//     _height = MediaQuery.of(context).size.height;
//     _width = MediaQuery.of(context).size.width;
//     dateTime = DateFormat.yMd().format(DateTime.now());
//     return InkWell(
//       onTap: () {
//         _selectDate(context);
//       },
//       child: TextFormField(
//         style: TextStyle(fontSize: 20, color: AppConfig.lightColors.onPrimary),
//         textAlign: TextAlign.center,
//         enabled: false,
//         keyboardType: TextInputType.text,
//         controller: _dateController,
//         // onSaved: (String val) {
//         //   _setDate = val;
//         // },
//         decoration: const InputDecoration(
//           disabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
//           labelText: 'Escolha sua data',
//           contentPadding: EdgeInsets.only(left: 30),
//         ),
//       ),
//     );
//   }
// }
