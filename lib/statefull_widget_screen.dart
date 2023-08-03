import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({Key? key}) : super(key: key);

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Subscribe"),
      ),
       body:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(DateTime.now().toString(),style: TextStyle(fontSize: 20),),
           Container(
             child: Center(child: Text(count.toString(), style: const TextStyle(fontSize: 50 ),)),
           )
         ],
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            count ++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
