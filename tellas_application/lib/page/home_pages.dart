import 'package:flutter/material.dart';
import 'package:tellas_application/page/config/app_color.dart';
import 'package:tellas_application/page/config/app_text_style.dart';
import 'package:tellas_application/page/meus_projetos_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController controllerLogin = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgranudColorPages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controllerLogin,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite a sua senha",
              ),
            ),

            SizedBox(height: 20),
            TextField(
              controller: controllerSenha,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite a sua senha",
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 500,
                  child: ElevatedButton(
                    onPressed: () {
                      print(controllerLogin.text);
                      print(controllerSenha.text);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MeusProjetosPage(),
                        ),
                      );
                    },
                    child: Text("Logar"),
                  ),
                ),
                // SizedBox(
                //   width: 500,
                //   child: ElevatedButton(
                //     onPressed: () {

                //       print(controllerLogin.text);
                //       print(controllerSenha.text);

                //     },

                     //child: Text("Logar"),
                   //),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
