//stf - inicia o projeto e troca o nome com crtron + f2
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/config/app_color.dart';
import 'package:flutter_application_1/pages/config/app_text_style.dart';

import 'config/app_text_style.dart';

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
      backgroundColor: AppColors.backgraundColorPages,
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
              child:padding(
                padding:const EdgeInserts.symmetric( 
              horizontal:20,
              vertical:10,
                ),
              ),
              child: Column(
                children: [
                  padding: const EdgetInserts.only(top:10),
                  child: Row(
                    children:[
                      Icon(Icons.folde_copy,
                      size:33,
                      color:Colors.orange,
                      ),
                      SinzeBox(width:14),
                      Text(
                        "App de Notas",
                        style:AppTextStyle.AppTextStyle.titleAppBar.CopyWith(
                          fontSize:25,
                        ),
                      ),
                    ],
                  ),
                  Padding( 
                   padding:const EdgeInserts.only(
                    left:45,
                    right:25,
                    top:10,
                   ),
                   child: Text(
                    "Aplicativo para gerenciamento de notas dos alunos do Senac",
                    style:AppTextStyle.subtitlePages.copyWith(
                      fontSize:16,
                      color:Colors.gray,
                    ),
                   ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:[
                    ElevatedButton(
                      style:ButtonStyle(
                        backgroundColor:WidgetStatePropertyAll(
                          Colors.orange,
                        ),
                      ),
                      onPressed: () {} ,
                      child:Text("Ver Projeto"),
                    ),
                    ],
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
