import 'package:counterapp/sumApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'todoAPP.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do APP",
      theme: ThemeData(primaryColor: Colors.green),
      home: ToDoApp(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage>{

  int countNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text(countNumber.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            countNumber = countNumber+1;
          });
        },
      ),
    );
  }

}
