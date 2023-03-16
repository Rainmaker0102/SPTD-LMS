import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:library_management_system/catalog_page.dart';
import 'package:library_management_system/debug_menu.dart';
import 'package:library_management_system/home_page.dart';
import 'package:library_management_system/item_edit_page.dart';

import 'login_page.dart';
import 'welcome_page.dart';

class AuthorizationControl extends GetxController{
  static AuthorizationControl instance = Get.find();

  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges()); //notifies user

    ever(_user, _initialScreen); //if user is notified runs 

  }

  _initialScreen(User? user){
    if(user==null){
      print("Login page");
      // Get.offAll(()=>LoginPage()); //comment out to test a different page on startup
      Get.offAll(()=>DebugMenu()); //change the part to whatever page you want to test
      //Get.offAll(()=>INSERTPAGETO_OPEN()); //change the part to whatever page you want to test
    }else{
      Get.offAll(()=>CatalogPage(email: user.email!));
    }
  }

  Future<void> register(String email, password) async {
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User Message",
      backgroundColor:  Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account creation failed",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white
          ),
        )
      );
    }
  }

  Future<void> login(String email, password) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login Message",
      backgroundColor:  Colors.redAccent,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Login failed",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white
          ),
        )
      );
    }
  }

  void logOut() async {
    await auth.signOut();
  }

}