import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AccountInfoPage extends StatefulWidget {
  const AccountInfoPage({super.key});

  @override
  State<AccountInfoPage> createState() => _AccountInfoPageState();
}

FirebaseFirestore fs = FirebaseFirestore.instance;

class _AccountInfoPageState extends State<AccountInfoPage> {
  final controllerAddress = TextEditingController();
  final controllerID = TextEditingController();
  final controllerRole = TextEditingController();
  final controllerName = TextEditingController();
  final controllerNumber = TextEditingController();

  // This is the user variable so that each of the textfields can auto-populate
  // and update with the information of the current user being modified.
  // IDEA: Using the onChanged: (text) {} method on each textField, each part
  // of the user's info can be updated.
  final user = <String, dynamic>{
    "Address": "default_address",
    "ID-Card": 0109115100,
    "Loans": 0,
    "Name": "Default Name",
    "Phone Number": 0000000000,
    "Role": "Patron"
  };

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
            height: h * .2,
            child: Column(
              children: const [
                Text(
                  "Account Information",
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            width: 650,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Edit Account Details",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255, 204, 204, 204)),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Address",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerAddress,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "ID-Card",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerID,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Name",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerName,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      //hintText: "Email",
                      //prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                      //hintText: "Password",
                      //prefixIcon: Icon(Icons,password_outlined, color: Colors.blueAccent),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerNumber,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      //hintText: "Email",
                      //prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                      //hintText: "Password",
                      //prefixIcon: Icon(Icons,password_outlined, color: Colors.blueAccent),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Role",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controllerRole,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: w * .15,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.amber,
            ),
            child: const Center(
              child: Text(
                "Update Account Info",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
