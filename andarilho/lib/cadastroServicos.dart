import 'dart:convert';
import 'dart:developer';

import 'package:andarilho/cadastroEndereco.dart';
import 'package:andarilho/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Login.dart';
import 'cadastro.dart';

class CadastroServicos extends StatefulWidget {
  const CadastroServicos({Key? key, title}) : super(key: key);

  @override
  State<CadastroServicos> createState() => _CadastroServicosState();
}

class _CadastroServicosState extends State<CadastroServicos> {
  TextEditingController nome = TextEditingController();
  TextEditingController cnpj = TextEditingController();
  TextEditingController tipoServico = TextEditingController();
  TextEditingController categoria = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro Serviços"),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: FittedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Informe o nome do seu SERVIÇO",
                  style: TextStyle(
                    color: AppConfig.lightColors.onPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    controller: nome,
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppConfig.lightColors.onPrimary),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe seu CNPJ ou CPF",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    controller: cnpj,
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
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
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe o TIPO DO SEU SERVIÇO",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    controller: tipoServico,
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppConfig.lightColors.onPrimary),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe a CATEGORIA DO SEU SERVIÇO",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    controller: categoria,
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
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
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Envie foto do seu documento de identidade",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: AppConfig.lightColors.primary),
                  onPressed: () {},
                  child: Text(
                    "CLIQUE PARA ENVIAR FOTO DA FRENTE",
                    style: TextStyle(
                      color: AppConfig.lightColors.onPrimary,
                    ),
                  ),
                ),
              ),
              Text(
                "Envie foto do seu documento de identidade",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: AppConfig.lightColors.primary),
                  onPressed: () {},
                  child: Text(
                    "CLIQUE PARA ENVIAR FOTO DO VERSO",
                    style: TextStyle(
                      color: AppConfig.lightColors.onPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: AppConfig.lightColors.primary),
                  onPressed: () async {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: AppConfig.screenSize.height,
                          child: const Align(
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    );

                    final uri = Uri.parse('https://10.0.2.2:8000/service');
                    final headers = {'Content-Type': 'application/json'};
                    Map<String, dynamic> body = {
                      'nome': nome.text,
                      'cnpj': cnpj.text,
                      'tipoServico': tipoServico.text,
                      'categoria': categoria.text
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
                                nome.clear();
                                cnpj.clear();
                                tipoServico.clear();
                                categoria.clear();
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
                    ;
                    LoginPage.token =
                        await jsonDecode(response.body)["data"]["token"];
                    log(LoginPage.token);

                    log("NomeServiço:${nome.text} cnpj:${cnpj.text} tipoServiço:${tipoServico.text} categoria:${categoria.text}");
                    if (statusCode == 200) {
                      final uri = Uri.parse(
                          'https://api-andarilho.onrender.com/user/test');
                      final headers = {
                        'Content-Type': 'application/json',
                        "x-access-token": LoginPage.token
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CadastroEndereco(title: "Cadastro"),
                        ),
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
                                nome.clear();
                                cnpj.clear();
                                tipoServico.clear();
                                categoria.clear();
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
                  child: const Text("Continuar >>"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
