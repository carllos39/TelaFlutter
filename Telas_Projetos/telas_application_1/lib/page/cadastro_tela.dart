
import 'package:flutter/material.dart';

class CadastroTela extends StatefulWidget {
  const CadastroTela({super.key});

  @override
  State<CadastroTela> createState() => _CadastroTelaState();
}

class _CadastroTelaState extends State<CadastroTela> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar:AppBar(
      title: Text("Cadastro"),
    ) ,
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
        ],
      ),
      ),
    );
  }
}