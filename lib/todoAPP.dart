import 'package:counterapp/style.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  
  List todoList = [{"1:1"}];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To Do App"),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                  child: Row(
                    children: [
                      Expanded(flex : 70,child: TextFormField(decoration: AppInputStyle("List Item"),)),
                      SizedBox(width: 10,),

                      Expanded(flex: 30, child: Padding(padding: EdgeInsets.only(left: 5), child: ElevatedButton(onPressed: (){}, child: Text("Add Button"),style: AppButtonStyle(),),),),
                    ],
                  )),
              Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: SizeBox50(Row(
                          children: [
                            Expanded(flex : 80,child: Text("Item")),
                            SizedBox(width: 10,),

                            Expanded(flex: 20, child: TextButton(onPressed: (){}, child: Icon(Icons.delete))),
                          ],
                        )),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
