import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50), 
            width: w,
            height: h*.2,
            child: Column(children: const [
              Text("Welcome",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],),
          ),
          SizedBox(height: 20,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey
                  ),
                ),
                Text(
                  "name@email.com",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: w*.15,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.amber,
            ),
            child: const Center(
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}