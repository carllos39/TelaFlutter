import 'package:flutter/material.dart';
import 'package:telas_application_1/page/cadastro_paciente.dart';
import 'package:telas_application_1/page/login_tela.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const LoginTela(),
      home: const CadastroPaciente(),
    );
  }
}
