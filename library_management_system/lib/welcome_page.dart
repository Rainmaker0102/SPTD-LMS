import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:library_management_system/authorization_control.dart';



/*class WelcomePage extends StatefulWidget {String email;
  WelcomePage({super.key, required this.email});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}*/

class WelcomePage extends StatelessWidget{
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

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
          const SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
              Text(
                email,
                style: const TextStyle(
                  fontSize: 30,
                  color: Colors.white
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              AuthorizationControl.instance.logOut();
            },
            child: Container(
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
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}