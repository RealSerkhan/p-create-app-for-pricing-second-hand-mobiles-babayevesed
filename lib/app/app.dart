import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:telefonchu/injection_container.dart';

class App {
  static final App _singleton = App._internal();
  factory App() => _singleton;
  App._internal();
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDI();
    await Firebase.initializeApp();
    return;
  }
}
