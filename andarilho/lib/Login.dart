import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'config.dart';
import 'cadastro.dart';
import 'inicio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  bool isObscure = true;

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
      resizeToAvoidBottomInset: false,
      backgroundColor: AppConfig.lightColors.background,
      body: Center(
        child: FittedBox(
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
                      color: AppConfig.lightColors.onPrimary,
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Informe seu email para entrar:",
                  style: TextStyle(
                      color: AppConfig.lightColors.primary, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppConfig.lightColors.primary),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'E-mail :',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Infome sua senha:",
                style: TextStyle(
                    color: AppConfig.lightColors.primary, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    controller: senha,
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                            color: AppConfig.lightColors.primary,
                          ),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          }),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.onPrimary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Senha :',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
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
                    onPressed: (() async {
                      if (email.text == "" && senha.text == "") {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Inicio(
                              title: "Inicio",
                            ),
                          ),
                          (Route<dynamic> route) => false,
                        );
                        return;
                      }

                      showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: AppConfig.screenSize.height,
                            child: const Align(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator()),
                          );
                        },
                      );

                      final uri = Uri.parse(
                          'https://api-andarilho.onrender.com/user/login');
                      final headers = {'Content-Type': 'application/json'};
                      Map<String, dynamic> body = {
                        'email': email.text,
                        'senha': senha.text,
                      };
                      String jsonBody = json.encode(body);
                      final encoding = Encoding.getByName('utf-8');

                      Response response = await post(
                        uri,
                        headers: headers,
                        body: jsonBody,
                        encoding: encoding,
                      );

                      int statusCode = response.statusCode;
                      String responseBody = response.body;
                      log(responseBody);

                      if (statusCode != 200) {
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text(
                              "Dados Incorretos",
                              style: TextStyle(
                                  color: AppConfig.lightColors.onPrimary),
                            ),
                            content: Text(
                              "Tente novamente",
                              style: TextStyle(
                                  color: AppConfig.lightColors.onPrimary),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                  email.clear();
                                  senha.clear();
                                },
                                child: Container(
                                  color: AppConfig.lightColors.primary,
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    style: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                        return;
                      }
                      AppConfig.token =
                          await jsonDecode(response.body)["data"]["token"];
                      log(AppConfig.token);

                      log("Email:${email.text} Senha:${senha.text}");
                      if (statusCode == 200) {
                        final uri = Uri.parse(
                            'https://api-andarilho.onrender.com/user/test');
                        final headers = {
                          'Content-Type': 'application/json',
                          "x-access-token": AppConfig.token
                        };

                        String jsonBody = json.encode(body);
                        final encoding = Encoding.getByName('utf-8');

                        Response response = await get(
                          uri,
                          headers: headers,
                        );

                        int statusCode = response.statusCode;
                        String responseBody = response.body;
                        log(responseBody);

                        // ignore: use_build_context_synchronously
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Inicio(
                              title: "Inicio",
                            ),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Dados Incorretos"),
                            content: const Text("Tente novamente"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                  email.clear();
                                  senha.clear();
                                },
                                child: Container(
                                  color: AppConfig.lightColors.primary,
                                  padding: const EdgeInsets.all(14),
                                  child: Text(
                                    "okay",
                                    style: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    }),
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
                          builder: (context) => Cadastro(
                            title: 'Cadastro',
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'FAÇA SEU CADASTRO',
                        style: TextStyle(
                            color: AppConfig.lightColors.onSecondary,
                            fontWeight: FontWeight.bold),
                      ),
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
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'CONHEÇA O ANDARILHO',
                        style: TextStyle(
                            color: AppConfig.lightColors.onPrimary,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Direitos reservados ao grupo",
                  style: TextStyle(
                      color: AppConfig.lightColors.onPrimary, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
