// ignore_for_file: unnecessary_new
import 'package:andarilho/cadastro2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class cadastro1 extends StatefulWidget {
  cadastro1({Key? key, required this.title}) : super(key: key);

  late double growHeigh = 0;
  late double growWidth = 0;
  late double growHeigh2 = 0;
  late double growWidth2 = 0;
  final String title;

  @override
  State<cadastro1> createState() => _cadastro1State();
}

class _cadastro1State extends State<cadastro1> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;

    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: AppConfig.lightColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: AppConfig.screenSize.width * 0.3,
                      width: AppConfig.screenSize.width * 0.3,
                      decoration: BoxDecoration(
                        color: AppConfig.lightColors.onPrimary,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    height: AppConfig.screenSize.width * 0.3,
                    width: AppConfig.screenSize.width * 0.3,
                    "assets/images/LOGO DO ADMINSTRADOR.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  width: AppConfig.screenSize.width * 0.7,
                  decoration: BoxDecoration(
                    color: AppConfig.lightColors.onPrimary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'CADASTRO',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: AppConfig.lightColors.primary),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'ANDARILHO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppConfig.lightColors.background,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Nome Completo :',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'E-mail :',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Genero :',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Data Nascimento :',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'CPF :',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.3,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Senha :',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.3,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Confirmar Senha :',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Container(
              //   height: 200,
              //   child: CupertinoDatePicker(
              //     mode: CupertinoDatePickerMode.date,
              //     initialDateTime: DateTime(2000, 8, 8),
              //     onDateTimeChanged: (DateTime newDateTime) {
              //       // Do something
              //     },
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.4,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cadastro2(
                            title: 'Cadastro',
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "CONTINUAR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppConfig.screenSize.height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
