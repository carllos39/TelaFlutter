import 'package:flutter/material.dart';
import 'package:tellas_application/page/config/app_color.dart';
import 'package:tellas_application/page/config/app_text_style.dart';
import 'package:tellas_application/page/meus_projetos2.dart';

class MeusProjetosPage extends StatefulWidget {
  const MeusProjetosPage({super.key});

  @override
  State<MeusProjetosPage> createState() => _MeusProjetosPageState();
}

class _MeusProjetosPageState extends State<MeusProjetosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgranudColorPages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo à Home Page!', style: TextStyle(fontSize: 20)),
            
             Card(
               child: Padding(padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
               child: Column(),
               ),
              
             ),
            SizedBox(height: 20),
             ElevatedButton(
               onPressed: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context)=> const MeusProjetos2(),
                 ),
                 );
               },
               child: Text('Ir para Perfil'),
             ),
               SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
                //  SizedBox(
                //   width: 500,
                //   child: ElevatedButton(
                //     onPressed: () {
                //      // print(controllerLogin.text);
                //       //print(controllerSenha.text);

                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => const MeusProjetos2(),
                //         ),
                //       );
                //     },
                //     child: Text("Logar"),
                //   ),
                // ),
          ],
        ),
      ),
    );
  }
}
