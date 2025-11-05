import 'package:flutter/material.dart';
import 'package:via_cep/Pages/form_cadastro_user_page.dart';
import 'package:via_cep/Pages/home_page.dart';
import 'package:via_cep/Pages/lista_user_page.dart';

class ViaCepApi extends StatelessWidget {
  const ViaCepApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}
