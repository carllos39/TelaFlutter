import 'package:flutter/material.dart';

class CadastroPaciente extends StatefulWidget {
  const CadastroPaciente({super.key});

  @override
  State<CadastroPaciente> createState() => _CadastroPacienteState();
}

class _CadastroPacienteState extends State<CadastroPaciente> {
  String sexo = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro Paciente")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Data de Nascimento",
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Sexo",
              ),
            ),
            RadioGroup<String>(
              onChanged: (value) {
                setState(() {
                  sexo = value!;
                });
              },
              groupValue: sexo,
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      value: "masculino",
                      title: Text("Masculino"),
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      value: "feminino",
                      title: Text("Feminino"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
