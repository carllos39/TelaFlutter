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
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Data de Nascimento",
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: "Sexo",
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.black),
                
              ),
              child: RadioGroup<String>(
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
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Data de Cadastro",
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: "Pacientes",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              items: const [
                DropdownMenuItem(
                  value: "masculino",
                  child: Text("Roberto Santos"),
                ),
                DropdownMenuItem(value: "feminino", child: Text("Maria José")),
                DropdownMenuItem(value: "outro", child: Text("Outro")),
              ],
              onChanged: (valor) {
                setState(() {
                  // sexoSelecionado = valor;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
