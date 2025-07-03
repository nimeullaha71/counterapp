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

  Map<String,double>FormValues={
    "Num1" : 0,
    "Num2" : 0,
    "Num3" : 0,
  };
  double sum =0;

  @override
  Widget build(BuildContext context) {


    MyInputOnChange(InputKey,InputValue){
        setState(() {
          FormValues.update(InputKey, (value)=>double.parse(InputValue));
        });
    }


    AddAllNumber(){
      setState(() {
        sum=FormValues['Num1']!+FormValues['Num2']!+FormValues['Num3']!;
      });


    }



    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      body: Padding(padding: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(sum.toString(),style: HeadTextStyle(),),
          TextFormField(onChanged: (value){
            MyInputOnChange("Num1",value);
          }, decoration: AppInputStyle("First Number"),),
          SizedBox(height: 10,),
          TextFormField(onChanged: (value){
            MyInputOnChange("Num2",value);
          },decoration: AppInputStyle("Second Number")),
          SizedBox(height: 10,),
          TextFormField(onChanged: (value){
            MyInputOnChange("Num3",value);
          },decoration: AppInputStyle("Third Number")),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            child: ElevatedButton(
                style: AppButtonStyle(),
                onPressed: (){
                  AddAllNumber();
            }, child: Text("ADD")),
          )
        ],
      ),
      )
    );
  }
}
