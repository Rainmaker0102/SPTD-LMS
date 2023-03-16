// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:library_management_system/search_page.dart';
import 'package:library_management_system/signup_page.dart';
import 'package:library_management_system/welcome_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));

    int _selectedIndex = 0;
    NavigationRailLabelType labelType = NavigationRailLabelType.all;
    bool showLeading = false;
    bool showTrailing = false;
    double groupAligment = -1.0;

    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Row(
        children: <Widget>[
        NavigationRail(
        selectedIndex: _selectedIndex,
        groupAlignment: groupAligment,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        labelType: labelType,
        leading: showLeading
            ? FloatingActionButton(
          elevation: 0,
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.add),
        )
            : const SizedBox(),
        trailing: showTrailing
            ? IconButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          icon: const Icon(Icons.more_horiz_rounded),
        )
            : const SizedBox(),
        destinations: const <NavigationRailDestination>[
          NavigationRailDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.book_outlined),
            selectedIcon: Icon(Icons.book),
            label: Text('Loans'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.key_off_outlined),
            selectedIcon: Icon(Icons.key_off),
            label: Text('Logout'),
          ),
        ],
      ),

      const VerticalDivider(thickness: 1, width: 1),

      Expanded(
          child: Column(
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

              const SizedBox(height: 80,),

              ElevatedButton(
                style: style,
                onPressed: () {
                  Get.to(()=> const SearchPage());
                },
                child: const Text('Browse Catalog'),
              ),
            ],
          ),
      )
    ],
    )
    );
  }
}