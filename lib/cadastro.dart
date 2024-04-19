// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_aula_12_04/aluno.dart';

class MyCadastro extends StatefulWidget {
  const MyCadastro({super.key});

  @override
  State<MyCadastro> createState() => _MyCadastroState();
}

class _MyCadastroState extends State<MyCadastro> {
  TextEditingController raController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  List<Aluno> listaAl = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 156, 255),
        title: Text("CADASTRO", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
        centerTitle: true,
      ),
      body: Center(child: Column(children: [
        TextField(
          controller: raController,
          decoration: InputDecoration(labelText: "Digite o RA"),
        ),
        TextField(
          controller: nomeController,
          decoration: InputDecoration(labelText: "Digite seu nome"),
        ),
        ElevatedButton(onPressed: (){
          int ra = int.parse(raController.text);
          String nome = nomeController.text;
          Aluno al = new Aluno(ra, nome);
          listaAl.add(al);
          mostrar();
        }, 
        child: Text("Cadastrar"))
      ],),)
    );
  }

  void mostrar(){
    listaAl.forEach((Aluno a) {
    print(a.ra.toString() + " " + a.nome);
    });
  }

}