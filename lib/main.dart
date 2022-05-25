library gb_e_kyc_package;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gb_e_kyc_package/gb_e_kyc_package.dart';
import 'package:after_layout/after_layout.dart';
import 'package:lottie/lottie.dart';

void main() async {
  runApp(const MainAppEKyc());
}

class MainAppEKyc extends StatefulWidget {
  const MainAppEKyc({Key? key}) : super(key: key);

  @override
  State<MainAppEKyc> createState() => _MainAppEKycState();
}

class _MainAppEKycState extends State<MainAppEKyc> with AfterLayoutMixin {
  @override
  void initState() {
    // dotenv.load(fileName: "assets/.env");
    super.initState();
  }

  @override
  Future<FutureOr<void>> afterFirstLayout(BuildContext context) async {
    await dotenv.load(fileName: "assets/.env");

    String? hostRegister = dotenv.env['host3003'];
    String? hostGateway = dotenv.env['host3006'];
    String? authorization2 = dotenv.env['authorization2'];
    print("hostRegister>>>> $hostRegister -- $hostGateway -- $authorization2");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page3'),
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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Lottie.network('https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
    );
  }
}
