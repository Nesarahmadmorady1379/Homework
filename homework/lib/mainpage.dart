
import 'package:flutter/material.dart';
import 'package:homework/assignment10_page.dart';

import 'package:homework/assignment9_page.dart';

void main(List<String> args) {
  runApp(Mainpage());
}
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignmet main page',style: TextStyle(fontSize: 22),),
        ),
        body: Center(
          child: Column(
            children: [
          Builder(builder: (context) => ElevatedButton(onPressed:(){Navigator.push(context,
           MaterialPageRoute(builder: (context) => Assignment9Page(),));}, 
           child: Text('Assignment9',style: TextStyle(fontSize: 30),)),),
           SizedBox(height:10),
           Builder(builder: (context) => ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Assignment10Page(),));
           }, 
           child:Text("Assinment10",style: TextStyle(fontSize: 30),)),)
            ],
          ),
        ),
      ),
    );
  }
}