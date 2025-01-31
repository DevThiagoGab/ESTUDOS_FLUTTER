import 'package:flutter/material.dart';
/*
O Flutter primeiro cria o PerguntaApp, depois chama createState() para criar o PerguntaAppState, que gerencia a lógica do app.
PerguntaApp => Define o widget principal, mas não muda sozinho.
PerguntaAppState => Guarda os dados que mudam e controla a interface. 
*/

main() {
  // O parâmetro do runApp vai ser uma instância do componente PerguntaApp
  runApp(new PerguntaApp());
}
// Gerencia o estado do widget e controla a interface.
class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0; // Estado (o número da pergunta atual)

// Método que vai incrementar o valor da variável
  void responder() {
    setState(() { // setState() atualiza a tela quando o usuário interage.
    perguntaSelecionada++; // Muda o estado (vai para a próxima pergunta)
    });
    print(perguntaSelecionada); // Exibe o número da pergunta no console
  }

// Para a árvore de componentes ser atualizada de forma reativa, ela precisa de um estado
// @override é uma anotação usada para quando se quer modificar um método que já existe
// na classe mãe (superclasse).
// Quando uma classe herda de outra, ela pode reescrever métodos da classe mãe. O @override deixa
// claro que esta sendo alterado um método existente.
  @override
// Método build que retorna Widget
// O método build() é chamado sempre que o estado muda. Ele redesenha a tela com os novos valores.
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é seu animal favorito?',
    ];
    // Retorna a criação de uma instância widget MaterialApp
    // MaterialApp é o widget base de um app Flutter.
    return MaterialApp(
      // Scaffold fornece a estrutura básica, incluindo a AppBar e o body para o layout usando
      // atributos nomeados.
      home: Scaffold(
        // Barra de navegação
        // Configura a barra superior do app.
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
            //Text(perguntas.elementAt(0)),
            //Text(perguntas[1]),
            // Text exibe a pergunta atual.
            Text(perguntas[perguntaSelecionada]),
            // Esse botão chama responder(), que aumenta perguntaSelecionada.
            ElevatedButton(
                onPressed:
                    responder, // Usando a função responder como parâmetro
                child: const Text('ElevatedButton')),
            TextButton(
                onPressed: () {
                  // Criando a função, não recebe nenhum parâmetro
                  print('Segunda resposta!');
                },
                child: const Text('TextButton')),
            OutlinedButton(
                onPressed: () =>
                    print('Terceira resposta!'), // Criando a função arrow
                child: const Text('OutlinedButton')),
          ],
        ),
      ),
    );
  }
}

// Não muda de estado após a criação.
// Exemplo: Textos, ícones, imagens fixas.
// Representa o widget principal do app.
/*Define o widget que pode mudar (um StatefulWidget).
Cria e retorna um estado (PerguntaAppState) para esse widget.
Não contém lógica, apenas diz que este widget tem um estado.
 */
class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() { // Cria e retorna uma instância de PerguntaAppState, que contém a lógica do app
    return new PerguntaAppState();
  }
}
