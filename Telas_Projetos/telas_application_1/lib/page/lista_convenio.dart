
import 'package:flutter/material.dart';

class ListaConvenio extends StatefulWidget {
  const ListaConvenio({super.key});

  @override
  State<ListaConvenio> createState() => _ListaConvenioState();
}

class _ListaConvenioState extends State<ListaConvenio> {
    // 1️⃣ Lista de pacientes
  List<Map<String, dynamic>> convenios = [
    {"nome": "Carlos Silva", "idade": 30, "cpf": "123.456.789-00"},
    {"nome": "Ana Souza", "idade": 25, "cpf": "987.654.321-00"},
    {"nome": "João Pereira", "idade": 40, "cpf": "111.222.333-44"},
    {"nome": "Maria Oliveira", "idade": 35, "cpf": "555.666.777-88"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Convênio"),
      ),
      body:ListView.builder(
        itemCount: convenios.length ,
        itemBuilder:(context,index){
        final convenio = convenios[index];
           return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(convenio['nome']),
              subtitle: Text('Idade: ${convenio['idade']} anos\nCPF: ${convenio['cpf']}'),
              isThreeLine: true,
            ),
          );
        }  
        ),
    );
  }
}