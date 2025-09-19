//stf - inicia o projeto e troca o nome com crtron + f2
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/config/app_color.dart';
import 'package:flutter_application_1/pages/config/app_text_style.dart';

class ProjetosPages extends StatefulWidget {
  const ProjetosPages({super.key});

  @override
  State<ProjetosPages> createState() => _ProjetosPagesState();
}

class _ProjetosPagesState extends State<ProjetosPages> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      backgroundColor: AppColors.backgraundPages,
      appBar: AppBar(
        title: Text("Meus Projetos", style: AppTextStyle.titleAppBar),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Efeito Borboleta", style: AppTextStyle.subtitlePages),
            Card(
              child: Column(
                children: [
                  Row(children: [Icon(Icons.folder_copy,size: 30,color:Colors.orange), 
                  Text("App de Notas",style: AppTextStyle.titleAppBar.copyWith(),
                  )]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    Padding(
      padding:const EdgeInsets.only(),)
  }
}
