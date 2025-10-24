import 'package:flutter/material.dart';
import 'package:via_cep/Models/usuario_model.dart';
import 'package:via_cep/Services/firebase_service.dart';

class ListaUserPage extends StatefulWidget {
  const ListaUserPage({super.key});

  @override
  State<ListaUserPage> createState() => _ListaUserPageState();
}

class _ListaUserPageState extends State<ListaUserPage> {
  final FirebaseService _firebaseService = FirebaseService(
    collectionName: "usuarios",
  );

  List<Usuario> listUsuarios = [];

  carregarUsuarios() async {
    List<Map<String, dynamic>> listaUserResultado = await _firebaseService
        .readAll();

    print(listaUserResultado);

    listUsuarios = listaUserResultado
        .map((user) => Usuario.fromMap(user, user["id"]))
        .toList();

    print(listUsuarios);

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carregarUsuarios();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista  de Usuários'), centerTitle: true),
      body: ListView.builder(
        itemCount: listUsuarios.length,
        itemBuilder: (context, index) {
          final usuario = listUsuarios[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(usuario.nome,usuario.cpf,usuario.email,usuario.telefone,usuario.senha),
            ),
          );
        },
      ),
    );
  }
}
