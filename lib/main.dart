import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
title: "To Do",
    home: Iskele(),
  );
  }
  
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Text("Shopping List"),
      ),
      body: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List shoppingList=[];
  addElement(){
    setState(() {
      shoppingList.add(t1.text);
      t1.clear();
    });
  }
  removeElement(){
    setState(() {
      shoppingList.remove(t1.text);
      t1.clear();
    });
  }

  TextEditingController t1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
  children: [
    Flexible(child:ListView.builder(
      itemCount:shoppingList.length ,
      itemBuilder: (context,indexNum)=>ListTile(
        leading: const Icon(Icons.add_shopping_cart_sharp),
        iconColor: Colors.deepOrangeAccent,
        //subtitle: Text("Shopping Items"),
        title: Text(shoppingList[indexNum],
          style: TextStyle(
            color: Colors.green[800],
            //fontStyle: FontStyle.italic
          ),),
      ) ,
    )
    ),
    TextField(
      controller:t1 ,
    ),
    RaisedButton(onPressed: addElement,child: Text("Add item"),color: Colors.green[100],),
    RaisedButton(onPressed: removeElement,child: Text("Remove item"),color: Colors.orange[200],),


  ],
),
    );
  }
}




