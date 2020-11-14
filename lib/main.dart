import 'package:flutter/material.dart';

void main()=>runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counterValue = 0;     // variable declaration

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 28.0
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff008eaa),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          backgroundColor: Color(0xff008eaa),
          elevation: 10.0,
          isExtended: true,
          tooltip: "Press the button to increment counter",
          onPressed: (){
            setState(() {
              counterValue++;   // incrementing counter value
              print("You have pressed button");
            });
          },
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "Number of times button pressed",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xff008eaa),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                  "$counterValue",
                style: TextStyle(
                  fontSize: 80.0,
                  color: Color(0xff008eaa),
                  fontWeight: FontWeight.w900
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
