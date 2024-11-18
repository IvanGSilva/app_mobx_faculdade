import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'counter.dart';  // A store que criamos

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Counter counter = Counter(); // Instância da store

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MobX Flutter Example')),
        body: Center(
          child: Observer(
             builder: (_) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Count: ${counter.count}', //reage autometicamente á mudanças 
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  'Multiplied Count: ${counter.multipliedCount}', // Exibindo o valor computado
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: counter.increment, // Chama a ação para incrementar
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
