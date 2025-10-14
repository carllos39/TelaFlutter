import 'package:flutter/material.dart';

class LoginTela extends StatefulWidget {
  const LoginTela({super.key, required String title});

  @override
  State<LoginTela> createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite seu email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite a sua senha',
              ),
              obscureText: true,
            ),
            Column(
              children: [
                SizedBox(
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      print(controllerLogin.text);
                      print(controllerSenha.text);
                      if (controllerLogin.text == "admin" &&
                          controllerSenha.text == "123456") {
                        
                          }else{
                           showDialog(context: context, 
                           builder: (context){
                            return AlertDialog(
                              title: Text("Usuário ou senha errada!"),
                            );
                           },
                           );
                   
                          }
                    },
                    child: Text('logar'),
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
