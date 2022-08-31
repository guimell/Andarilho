import 'package:flutter/material.dart';
import 'config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andarilho',
      theme: ThemeData.from(colorScheme: AppConfig.lightColors),
      darkTheme: ThemeData.from(colorScheme: AppConfig.darkColors),
      home: const MyHomePage(title: 'Andarilho'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: AppConfig.screenSize.width * 0.8,
                width: AppConfig.screenSize.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(360),
                ),
                child: Image.asset(
                  "assets/images/LOGO DO PROJETO.png",
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppConfig.screenSize.height * 0.09,
                    width: AppConfig.screenSize.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Econtrar Serviço",
                        style: TextStyle(
                            color: AppConfig.lightColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppConfig.screenSize.height * 0.09,
                    width: AppConfig.screenSize.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Cadastrar Serviço",
                        style: TextStyle(
                            color: AppConfig.lightColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppConfig.screenSize.height * 0.08,
                    width: AppConfig.screenSize.width * 0.7,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(190, 197, 76, 45),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "CONHEÇA O ANDARILHO",
                        style: TextStyle(
                            color: AppConfig.lightColors.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: AppConfig.screenSize.height * 0.07,
                    width: AppConfig.screenSize.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "FAQ",
                        style: TextStyle(
                            color: AppConfig.lightColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
