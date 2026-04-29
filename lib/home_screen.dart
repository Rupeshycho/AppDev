import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/backgroundhair.jpg",
                height: 80,
                width: 80,
              ),
            ],
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Hello "),
                ],
              ),
            )
          ),
          SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Hello "),
                  ],
                ),
              )
          ),
          SizedBox(
              height: 100,
              width: 100,
              child: Card(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Hello "),
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}