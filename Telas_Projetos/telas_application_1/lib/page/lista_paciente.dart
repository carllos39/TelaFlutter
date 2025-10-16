
import 'package:flutter/material.dart';

class ListaPaciente extends StatefulWidget {
  const ListaPaciente({super.key});

  @override
  State<ListaPaciente> createState() => _ListaPacienteState();
}

class _ListaPacienteState extends State<ListaPaciente> {
  // 1️⃣ Lista de pacientes
  List<Map<String, dynamic>> pacientes = [
    {"nome": "Carlos Silva", "idade": 30, "cpf": "123.456.789-00"},
    {"nome": "Ana Souza", "idade": 25, "cpf": "987.654.321-00"},
    {"nome": "João Pereira", "idade": 40, "cpf": "111.222.333-44"},
    {"nome": "Maria Oliveira", "idade": 35, "cpf": "555.666.777-88"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Pacientes'),
      ),
      body: ListView.builder(
        itemCount: pacientes.length,
        itemBuilder: (context, index) {
          final paciente = pacientes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(paciente['nome']),
              subtitle: Text('Idade: ${paciente['idade']} anos\nCPF: ${paciente['cpf']}'),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}