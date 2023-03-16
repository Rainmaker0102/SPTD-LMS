// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:library_management_system/search_page.dart';
import 'authorization_control.dart';

class CatalogPage extends StatefulWidget {
  String email;
  CatalogPage({super.key, required this.email});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: w,
            height: h*.2,
            child: Column(children: const [
              Text("Library Home",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],),
          ),

          const SizedBox(height: 30,),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Signed in as:",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      widget.email,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50,),

          ElevatedButton(
            style: style,
            onPressed: () {
              Get.to(()=>SearchPage());
            },
            child: const Text('Browse Catalog'),
          ),

          const SizedBox(height: 50,),

          ElevatedButton(
            style: style,
            onPressed: () {
              AuthorizationControl.instance.logOut();
            },
            child: const Text('Logout'),
          ),

        ],
      ),
    );
  }
}