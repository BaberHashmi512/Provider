import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

   int x= 10;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Tutorials"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(x.toString(), style: const TextStyle(fontSize: 50 ),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++ ;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
