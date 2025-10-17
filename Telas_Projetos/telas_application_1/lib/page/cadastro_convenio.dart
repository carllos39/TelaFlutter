
import 'package:flutter/material.dart';

class CadastroConvenio extends StatefulWidget {
  const CadastroConvenio({super.key});

  @override
  State<CadastroConvenio> createState() => _CadastroConvenioState();
}

class _CadastroConvenioState extends State<CadastroConvenio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Convênio'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Empresa',
              ),
            ),
            SizedBox(height: 20),
                 TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Cnpj',
              ),
            ),
               SizedBox(height: 20),
                 TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefone',
              ),
            ),
               SizedBox(height: 20),
                 TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
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
            Row(
              children: [
            
               ElevatedButton(
                onPressed:() {

               }, 
               child: Text('Cadastrar'),
               ), 
              ],
            ),
          ],
        ),
        ),
    );
  }
}