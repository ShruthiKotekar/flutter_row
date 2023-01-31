import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Flutter Row"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        height: 300,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.black,
          Colors.purple,
          ]
        ),
        borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50, //we give the image a radius of 50
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/11/29/03/36/woman-1867093__340.jpg'),
              ),
              Text("App Developer",style: TextStyle(color: Colors.white),),
              IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Colors.white,))
           ]
          ),
      )
    );
  }
}
