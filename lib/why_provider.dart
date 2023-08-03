import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
  const WhyProvider({Key? key}) : super(key: key);

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      // print(count);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build' + count.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Subscriber"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}",
              style: const TextStyle(fontSize: 50),),
          ),
          Center(
            child: Text(count.toString(),
            style: const TextStyle(fontSize: 50),),
          )
        ],
      ),
    );
  }
}
