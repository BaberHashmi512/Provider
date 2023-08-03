import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(const Duration(seconds: 2), (timer) {
      countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subscribe"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
            builder: (context, value,child){
              print("I love you");
              return Text(value.count.toString(),
              style: const TextStyle(fontSize: 50),);
            }
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('hello');
          countProvider.setCount();
        },
      child: const Icon(Icons.add),
      ),
    );
  }
}
