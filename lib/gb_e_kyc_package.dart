library gb_e_kyc_package;

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  Widget addOne() {
    // loadENV();
    return Lottie.network('https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json');
  }

  // loadENV() {
  //   dotenv.load(fileName: "assets/.env");
  //   String? hostRegister = dotenv.env['host3003'];
  //   String? hostGateway = dotenv.env['host3006'];
  //   String? authorization2 = dotenv.env['authorization2'];
  //   print("hostRegister>>>> $hostRegister -- $hostGateway -- $authorization2");
  // }
}
