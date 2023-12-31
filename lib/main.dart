import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Simple Navigation",
    );
  }
}

class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Home"),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from home to activity 1")));

          }, child: Text("Go-to Activity1")),
          Padding(padding: EdgeInsets.all(20)),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from home to activity 2")));

          }, child: Text("Go-to Activity2"))

        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  String massage;
  Activity1(
      this.massage,
      {super.key}
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(massage),

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("This is from activity 1 to activity 2")));
          },child: Text("Go-To Activity2")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },child: Text("Go-To HomePage")),

        ],
      )
    );
  }
}

class Activity2 extends StatelessWidget {
  String massage;
   Activity2(
       this.massage,
       {super.key}
       );





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(massage),
      ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("This is from activity 2 to activity 1")));
            },child: Text("Go-To Activity1")),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },child: Text("Go-To HomePage")),

          ],
        )
    );
  }
}


