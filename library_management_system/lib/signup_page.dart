import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              Text("Signup",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],),
          ),
          Container(
            width: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [ 
                Text(
                  "Signup with Email and Password",
                  style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 204, 204, 204)),
                ),
                SizedBox(height: 40,),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(height: 10,),
                TextField(
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
                SizedBox(height: 20,),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(height: 10,),
                TextField(
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
                SizedBox(height: 20,),
                Text(
                  "Confirm Password",
                  style: TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    //hintText: "Email", 
                    //prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                    //hintText: "Password",
                    //prefixIcon: Icon(Icons,password_outlined, color: Colors.blueAccent),
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
                SizedBox(height: 10,),                
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
                "Signup",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10,),
          RichText(text: TextSpan(
            text: "Already have an account?", style: TextStyle(color: Colors.white, fontSize: 15,),
            children: [
              TextSpan(
                text: " Login", style: TextStyle(color: Color.fromARGB(255, 204, 204, 204), fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),),
        ],
      ),
    );
  }
}