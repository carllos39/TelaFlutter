import 'package:flutter/material.dart';

class CadastroTela extends StatefulWidget {
  const CadastroTela({super.key});

  @override
  State<CadastroTela> createState() => _CadastroTelaState();
}

class _CadastroTelaState extends State<CadastroTela> {
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerSobreNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  TextEditingController controllerConfirma = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controllerNome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite seu nome',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: controllerSobreNome,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite o seu sobrenome',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite o seu email',
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: controllerSenha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite a sua senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            TextField(
              controller: controllerConfirma,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirma a senha',
              ),
              obscureText: true,
            ),
            Column(
              children: [
                SizedBox(
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      print(controllerNome.text);
                      print(controllerSobreNome.text);
                      print(controllerEmail.text);
                      print(controllerSenha.text);
                      print(controllerConfirma.text);

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: const ),
                      //     ),
                    },
                    child: Text('Cadastrar'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
