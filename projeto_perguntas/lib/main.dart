

import 'package:flutter/material.dart';

main() {
  // O parâmetro do runApp vai ser uma instância do componente PerguntaApp
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{
// @override é uma anotação usada para quando se quer modificar um método que já existe 
// na classe mãe (superclasse).
// Quando uma classe herda de outra, ela pode reescrever métodos da classe mãe. O @override deixa 
// claro que esta sendo alterado um método existente.
@override
// Método build que retorna Widget
Widget build(BuildContext context){
  // Retorna a criação de uma instância widget MaterialApp
  return MaterialApp(
    // Atributos nomeados, Text = widget de texto
    home: Text('Olá flutter!'),
  );}

}