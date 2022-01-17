import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  static const TextStyle heading = TextStyle(fontSize: 60);
  static const TextStyle body = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('counter app'),
        elevation: 10,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.info),
            tooltip: 'github: luan593'
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('# de clicks', style: HomeScreen.body),
            Text('0', style: HomeScreen.heading)
          ]
        )
      ),
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {},
            ),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {}
            ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {}
            )
        ],
      ),
    );
  }

}