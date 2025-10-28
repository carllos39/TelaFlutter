import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:via_cep/Pages/form_cadastro_user_page.dart';
import 'package:via_cep/Pages/lista_user_page.dart';
import 'package:via_cep/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ViaCepApi());
}
