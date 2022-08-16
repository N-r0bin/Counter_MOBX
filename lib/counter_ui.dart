import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxsm_project/counter_bl.dart';

class CounterUI extends StatelessWidget {
  CounterUI ({Key? key}) : super(key: key);

  final _counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mobx State Management', style: TextStyle(color: Colors.white70),),
            backgroundColor: Colors.black54,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Observer( // listener
             builder: (_) => Text(
               //'${_counterController.counter}', // Display the number
               'Number ${_counterController.counter.toString()} ${_counterController.isEven}',
               style: TextStyle(fontSize: 30, color:Colors.white60),
              ),
           ),
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           IconButton(
             icon: const Icon(
                Icons.exposure_minus_1,
                size: 30,
                 color: Colors.white54,
              ),
            onPressed: _counterController.decrementCounter,
           ),
           IconButton(
              icon: const Icon(
              Icons.replay,
              size:30,
               color: Colors.white30,
              ),
             onPressed: _counterController.resetCounter,
           ),
           IconButton(
              icon: const Icon(
               Icons.plus_one,
               size: 30,
                color: Colors.white54,
               ),
             onPressed: _counterController.incrementCounter,
           ),
         ],
        ),
      ],
    ),
      ),
    );
  }
}
