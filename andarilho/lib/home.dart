// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'config.dart';
import 'screen2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: AppConfig.lightColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    height: AppConfig.screenSize.width * 0.34,
                    width: AppConfig.screenSize.width * 0.34,
                    decoration: BoxDecoration(
                      color: AppConfig.lightColors.primary,
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                  Container(
                    height: AppConfig.screenSize.width * 0.3,
                    width: AppConfig.screenSize.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Image.asset(
                      "assets/images/Logo cliente andarilho.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),
              RichText(
                text: TextSpan(
                  text: 'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: AppConfig.lightColors.primary),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ANDARILHO',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppConfig.lightColors.onPrimary,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Informe seu email para entrar:"),
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
              const Text("Infome sua senha:"),
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
                      labelText: 'Senha :',
                    ),
                  ),
                ),
              ),
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
                    onPressed: (() {}),
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
                height: AppConfig.screenSize.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(
                            title: 'Cadastro',
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppConfig.lightColors.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'FAÇA SEU CADASTRO',
                      style: TextStyle(
                          color: AppConfig.lightColors.onSecondary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: AppConfig.lightColors.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'CONHEÇA O ANDARILHO',
                      style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Direitos reservados a minha pica"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
