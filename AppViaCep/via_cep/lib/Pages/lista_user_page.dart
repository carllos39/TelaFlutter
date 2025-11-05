import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ListaUsuariosPage extends StatefulWidget {
  const ListaUsuariosPage({super.key});

  @override
  State<ListaUsuariosPage> createState() => _ListaUsuariosPageState();
}

class _ListaUsuariosPageState extends State<ListaUsuariosPage> {
  final CollectionReference usuariosRef = FirebaseFirestore.instance.collection(
    'usuarios',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lista de Usuários",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: usuariosRef.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text("Erro ao carregar usuários"));
          }

          final usuarios = snapshot.data?.docs ?? [];

          if (usuarios.isEmpty) {
            return const Center(child: Text("Nenhum usuário encontrado."));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: usuarios.length,
            itemBuilder: (context, index) {
              final usuario = usuarios[index];
              final dados = usuario.data() as Map<String, dynamic>;

              final nome = dados['nome'] ?? 'Sem nome';
              final email = dados['email'] ?? 'Sem email';
              final telefone = dados['telefone'] ?? 'Não informado';
              final cpf = dados['cpf'] ?? 'Não informado';

              return Card(
                color: Colors.deepPurple.shade50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    " $nome",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(email),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () => _mostrarDetalhesUsuario(
                    context,
                    nome,
                    email,
                    telefone,
                    cpf,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  /// Exibe o Bottom Sheet com os detalhes do usuário
  void _mostrarDetalhesUsuario(
    BuildContext context,
    String nome,
    String email,
    String telefone,
    String cpf,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            children: [
              Center(
                child: Container(
                  width: 60,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      nome,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.email, color: Colors.deepPurple),
                title: const Text("Email"),
                subtitle: Text(email),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.phone, color: Colors.deepPurple),
                title: const Text("Telefone"),
                subtitle: Text(telefone),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  Icons.credit_card,
                  color: Colors.deepPurple,
                ),
                title: const Text("CPF"),
                subtitle: Text(cpf),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  minimumSize: const Size(double.infinity, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                label: const Text("Fechar"),
              ),
            ],
          ),
        );
      },
    );
  }
}
