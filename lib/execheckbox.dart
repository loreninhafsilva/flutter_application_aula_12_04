import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool biscoitoSelected = false;
  bool bolachaSelected = false;
  bool taylorSelected = false;
  bool kanyeSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Text("biscoito ou bolacha"),

        Text("biscoito"),
        Checkbox(
        value: biscoitoSelected, 
        onChanged: (value){
          biscoitoSelected = value!;
          setState(() {
            
          });
        }),

        Text("bolacha"),
        Checkbox(
        value: bolachaSelected, 
        onChanged: (value){
          bolachaSelected = value!;
          setState(() {
            
          });
        }),
        
        Text("Taylor Swift ou Kanye West?"),
        CheckboxListTile(
        title: Text("˚˖𓍢ִ໋✧˚.🎀༘⋆Taylor Swift˚˖𓍢ִ໋✧˚.🎀༘⋆"),
        subtitle: Text("shake it bololo"),
        secondary: Icon(Icons.mic),
        value: taylorSelected, 
        onChanged: (value){
          taylorSelected = value!;
          setState(() {
            
          });
        }),
        CheckboxListTile(
        title: Text("˚🎧⋆☾⋆⁺₊✧Kenye West✩♬₊🎧⋆☾⋆"),
        subtitle: Text("flash lights oh oh oh she dont believe shoes and cars"),
        secondary: Icon(Icons.minor_crash_outlined),
        value: kanyeSelected, 
        onChanged: (value){
          kanyeSelected = value!;
          setState(() {
            
          });
        }),


        ElevatedButton(onPressed: (){
          print(biscoitoSelected.toString() + " " + bolachaSelected.toString());
        }, child: Text("ok")),
      ],),)
    );
  }
}