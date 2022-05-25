import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with AfterLayoutMixin {
  Future<void> loadENV() async {
    await dotenv.load(fileName: "assets/.env");
  }

  @override
  Future<FutureOr<void>> afterFirstLayout(BuildContext context) async {
    await loadENV();
    String? hostRegister = dotenv.env['host3003'];
    String? hostGateway = dotenv.env['host3006'];
    String? authorization2 = dotenv.env['authorization2'];
    print("hostRegister>>>> $hostRegister -- $hostGateway -- $authorization2");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("klsdfmsdlk"),
        ],
      ),
    );
  }
}
