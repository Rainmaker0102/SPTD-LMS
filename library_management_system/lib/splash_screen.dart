import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.lightBlue,
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          child: CircularProgressIndicator(
            backgroundColor: Colors.redAccent,
          ),
        ),
      ),
    );
  }

}