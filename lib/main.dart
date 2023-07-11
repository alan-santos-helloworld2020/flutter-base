import 'dart:convert';
import 'package:app/models/cliente.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nomeController = TextEditingController();
  final telefoneController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: const Text("Onload-Home",
                style: TextStyle(color: Colors.white))),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cadastro de Clientes",
                    style: TextStyle(fontSize: 18.00),
                  )
                ],
              ),
              TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(fontSize: 15.00),
                    prefixIcon: Icon(Icons.person)),
              ),
              TextField(
                controller: telefoneController,
                decoration: const InputDecoration(
                    labelText: "Telefone",
                    labelStyle: TextStyle(fontSize: 15.00),
                    prefixIcon: Icon(Icons.phone)),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 15.00),
                    prefixIcon: Icon(Icons.email)),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 255, 255, 255))),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 5.0),
                              child: Text("SALVAR"),
                            ),
                            Icon(Icons.send)
                          ],
                        ),
                        onPressed: () {
                          var cliente = Cliente(nomeController.text,
                              telefoneController.text, emailController.text);
                          String json = jsonEncode({
                            "nome": cliente.nome,
                            "telefone": cliente.telefone,
                            "email": cliente.email
                          });
                          print(json);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
