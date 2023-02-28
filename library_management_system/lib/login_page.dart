// ignore_for_file: library_private_types_in_public_api


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Text("Khadka Library System",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],),
          ),
          Container(
            margin: const EdgeInsets.only(left: 400,right: 400),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ //remove const?
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Text(
                  "Sign into your account",
                  style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 204, 204, 204)),
                ),
                const SizedBox(height: 40,),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    const Text(
                      "Forgot my Password",
                      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 204, 204, 204)),textAlign: TextAlign.right,),
                  ],
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
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            text: "Don't have an account?", style: TextStyle(color: Colors.white, fontSize: 15,),
            children: [
              TextSpan(
                text: " Create", style: TextStyle(color: Color.fromARGB(255, 204, 204, 204), fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),),
        ],
      ),
    );
  }
}