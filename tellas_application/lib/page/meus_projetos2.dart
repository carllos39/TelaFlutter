
import 'package:flutter/material.dart';
import 'package:tellas_application/page/config/app_color.dart';
import 'package:tellas_application/page/config/app_text_style.dart';

class MeusProjetos2 extends StatefulWidget {
  const MeusProjetos2({super.key});

  @override
  State<MeusProjetos2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MeusProjetos2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor:AppColors.backgranudColorPages ,
  appBar: AppBar(
    title: Text("Meus Projetos",style:AppTextStyle.titleAppBar,
  ),
  ),
   body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            SizedBox(height: 20),
            Text(
              'Nome do Usuário',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('email@exemplo.com'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
    
  }
}
    
    
     
