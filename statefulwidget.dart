import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child:
              Text(counter.toString(), style: TextStyle(fontSize: 60),),
        ),
       floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           FloatingActionButton(
             onPressed: (){
             counter++;
             setState(() {});
           },
             child: Icon(Icons.add),),
           SizedBox(width: 10, height: 10,),
           FloatingActionButton(
             onPressed: (){
               counter--;
               setState(() {});
             },
             child: Icon(Icons.remove),)
         ],
       ),
    );
  }
}
