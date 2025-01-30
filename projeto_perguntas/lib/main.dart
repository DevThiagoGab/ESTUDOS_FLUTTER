import 'package:flutter/material.dart';

main() {
  // O parâmetro do runApp vai ser uma instância do componente PerguntaApp
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
// @override é uma anotação usada para quando se quer modificar um método que já existe
// na classe mãe (superclasse).
// Quando uma classe herda de outra, ela pode reescrever métodos da classe mãe. O @override deixa
// claro que esta sendo alterado um método existente.
  @override
// Método build que retorna Widget
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é seu animal favorito?',
    ];
    // Retorna a criação de uma instância widget MaterialApp
    return MaterialApp(
      // Atributos nomeados, Scaffold fornece estrutura básica para
      // layout
      home: Scaffold(
        // Barra de navegação
        appBar: AppBar(
          title: const Text('Perguntas'),
          centerTitle: true, // Centraliza o título
          titleTextStyle: const TextStyle(
            color: Colors.white, // Cor da fonte
            fontSize: 20, // Tamanho da fonte
            fontWeight: FontWeight.bold, // Negrito
          ),
          backgroundColor: Colors.blueAccent, // Cor de fundo da appBar
        ),
        // Body = conteúdo principal, só aceita um widget
        // Ctrl + . = cria a estrutura do column
        // Column organiza widgets verticalmente
        body: Column(
          // children = Lista de widgets organizados verticalmente
          children: <Widget>[
            // Pode ser exibido das duas formas
            Text(perguntas.elementAt(0)),
            Text(perguntas[1]),
            ElevatedButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                child: const Text('ElevatedButton')
                ),
                TextButton(
                onPressed: () {
                  print('Botão pressionado!');
                },
                child: const Text('TextButton')
                ),
                  OutlinedButton(
                  onPressed: () {
                    print('Botão pressionado!');
                  },
                  child: const Text('OutlinedButton')
                  ),
          ],
        ),
      ),
    );
  }
}
