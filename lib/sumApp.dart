import 'package:counterapp/main.dart';
import 'package:counterapp/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Sum App",
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return SumAppUI();
//   }
// }

class SumAppUI extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Padding(padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Sum is=0",style: HeadTextStyle(),),
          TextFormField(decoration: AppInputStyle("First Number"),),
          SizedBox(height: 10,),
          TextFormField(decoration: AppInputStyle("Second Number")),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                style: AppButtonStyle(),
                onPressed: (){

            }, child: Text("ADD")),
          )
        ],
      ),
      )
    );
  }
}
