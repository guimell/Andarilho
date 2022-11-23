import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var chatStatus;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            children: [
              chatStatus != null
                  ? const Text(
                      "Você nao tem chats em aberto",
                    )
                  : ContainerChat()
            ],
          ),
        ),
      ),
    );
  }
}
