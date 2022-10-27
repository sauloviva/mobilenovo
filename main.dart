import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titulo Novo', //titulo
      theme: ThemeData(
        primarySwatch: Colors.purple, // linha de selecao de cor
      ),
      home: const MyHomePage(title: 'Pagina Inicial'), // titulo da pagina
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // responsavel por contar o numero de vezes do click
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Voce apertou o botao:', // informacao ao usuario de numero de vezes que apertou o botao
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Aperte aqui', // informacao ao usuario para apertar o botao
        child: const Icon(Icons.add), // icone para ser clicado pelo usuario
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
