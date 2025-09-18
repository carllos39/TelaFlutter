import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contato"),
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite seu Nome",
              ),
            ), //Cria caixa de dialogo

            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Telefone",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Data de Nascimento",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Endereço",
              ),
            ),
            //Iniciar aqui
            Column(
              children: [
                SizedBox(
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      print(controllerLogin.text);
                      print(controllerSenha.text);
                    },
                    child: Text("Logar"),
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
// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Meu Cabeçalho"),
//           centerTitle: true, // centraliza o título
//           backgroundColor: Colors.blue, // cor de fundo do cabeçalho
//         ),
//         body: const Center(child: Text("Conteúdo da tela")),
//       ),
//     );
//   }
// }
