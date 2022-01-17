import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {

  static const TextStyle heading = TextStyle(fontSize: 60);
  static const TextStyle body = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void decrease() {
    setState(() {
      if (counter > 0) counter -= 1;
    });
  }

  void restart() {
    setState(() {
      counter = 0;
    });
  }

  void increase() {
    setState(() {
      counter += 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+- counter app'),
        elevation: 10,
        actions: <Widget>[
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.info),
            tooltip: 'github: luan593'
          )
        ],
      ),
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('# de clicks', style: CounterScreen.body),
            Text('$counter', style: CounterScreen.heading)
          ]
        )
      ),
      floatingActionButtonLocation: 
        FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: BottomFloatingActionButtons(
        increase: increase, 
        restart: restart, 
        decrease: decrease),
    );
  }
}

class BottomFloatingActionButtons extends StatelessWidget {

  final Function increase;
  final Function restart;
  final Function decrease;

  const BottomFloatingActionButtons({
    Key? key,
    required this.increase,
    required this.restart,
    required this.decrease
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              decrease();
            },
          ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () {
              restart();
            }
        ),
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
            increase();
          }
        )
      ],
    );
  }
}