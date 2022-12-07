// ignore_for_file: unnecessary_new

import 'dart:convert';
import 'dart:developer';

import 'package:andarilho/inicio.dart';
import 'package:andarilho/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'config.dart';

class Cadastro extends StatefulWidget {
  Cadastro({Key? key, required this.title}) : super(key: key);

  static TextEditingController cadastroNomeCompleto = TextEditingController();
  final String title;

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  late int selectedValue = 1;

  TextEditingController cadastroEmail = TextEditingController();
  TextEditingController cadastroCPF = TextEditingController();
  TextEditingController cadastroSenha = TextEditingController();
  TextEditingController cadastroConfirmaSenha = TextEditingController();
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;

    DateTime selectedDate = DateTime.now();

    Future<void> selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary:
                    AppConfig.lightColors.primary, // header background color
                onPrimary: AppConfig.lightColors.onPrimary, // header text color
                onSurface: AppConfig.lightColors.onPrimary, // body text color
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor:
                      AppConfig.lightColors.primary, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1930, 8),
        lastDate: DateTime(2101),
      );
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
      resizeToAvoidBottomInset: false,
      body: Center(
        child: FittedBox(
          child: Column(
            children: <Widget>[
              Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      height: AppConfig.screenSize.width * 0.3,
                      width: AppConfig.screenSize.width * 0.3,
                      decoration: BoxDecoration(
                          color: AppConfig.lightColors.onPrimary,
                          shape: BoxShape.circle),
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
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
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
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    controller: Cadastro.cadastroNomeCompleto,
                    decoration: InputDecoration(
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
                      labelText: 'Nome Completo :',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.6,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    controller: cadastroEmail,
                    decoration: InputDecoration(
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
                      labelText: 'E-mail :',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<int>(
                      value: selectedValue,
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text(
                            "Masculino",
                            style: TextStyle(
                                color: AppConfig.lightColors.onPrimary),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text(
                            "Feminino",
                            style: TextStyle(
                                color: AppConfig.lightColors.onPrimary),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.2,
                      child: InkWell(
                        onTap: () {
                          selectDate(context);
                        },
                        child: TextFormField(
                          style: TextStyle(
                              fontSize: 20,
                              color: AppConfig.lightColors.onPrimary),
                          textAlign: TextAlign.center,
                          enabled: false,
                          keyboardType: TextInputType.text,
                          controller: dateController,
                          decoration: InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            labelText: 'Data',
                            labelStyle: TextStyle(
                                color: AppConfig.lightColors.onPrimary),
                            contentPadding: EdgeInsets.only(left: 30),
                          ),
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
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    controller: cadastroCPF,
                    decoration: InputDecoration(
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
                      labelText: 'CPF :',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
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
                        style:
                            TextStyle(color: AppConfig.lightColors.onPrimary),
                        controller: cadastroSenha,
                        obscureText: true,
                        decoration: InputDecoration(
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
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      width: AppConfig.screenSize.width * 0.3,
                      child: TextFormField(
                        style:
                            TextStyle(color: AppConfig.lightColors.onPrimary),
                        controller: cadastroConfirmaSenha,
                        obscureText: true,
                        decoration: InputDecoration(
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
                          labelText: 'Confirmar Senha :',
                          labelStyle:
                              TextStyle(color: AppConfig.lightColors.onPrimary),
                        ),
                      ),
                    ),
                  ),
                ],
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
                    onPressed: () async {
                      final uri = Uri.parse(
                          'https://api-andarilho.onrender.com/user/signup');
                      final headers = {'Content-Type': 'application/json'};
                      Map<String, dynamic> body = {
                        'nome': Cadastro.cadastroNomeCompleto.text,
                        'email': cadastroEmail.text,
                        'senha': cadastroSenha.text,
                        'role': "role",
                        'sexo': 'bob',
                        'dataNascimento': "a",
                        'cpf': cadastroCPF.text
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
                      // ignore: unused_local_variable
                      String responseBody = response.body;

                      if (statusCode == 200) {
                        // ignore: use_build_context_synchronously
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Inicio(
                                    title: "Inicio",
                                  )),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: Text(
                                jsonDecode(response.body)["errors"]["detail"]),
                            content: const Text("Tente novamente"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
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
