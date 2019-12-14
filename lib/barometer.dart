import 'dart:async';

import 'package:flutter/services.dart';

class Barometer {
  static const MethodChannel _channel = const MethodChannel(
      'barometer'); //Nome del channel con la piattaforma nativa

  static Future<String> get platformVersion async {
    //Funzione del plugin richiamata
    final String version = await _channel.invokeMethod(
        'getPlatformVersion'); //funzione di Android e iOS richiamata
    return version;
  }
}
