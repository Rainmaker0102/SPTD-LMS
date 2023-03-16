import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:library_management_system/account_info.dart';
import 'package:library_management_system/catalog_page.dart';
import 'package:library_management_system/home_page.dart';
import 'package:library_management_system/item_edit_page.dart';
import 'package:library_management_system/login_page.dart';
import 'package:library_management_system/logout_page.dart';
import 'package:library_management_system/search_page.dart';
import 'package:library_management_system/signup_page.dart';
import 'package:library_management_system/welcome_page.dart';

class DebugMenu extends StatefulWidget {
  const DebugMenu({super.key});

  @override
  State<DebugMenu> createState() => _DebugMenuState();
}

class _DebugMenuState extends State<DebugMenu> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              width: w,
              height: h * .2,
              child: Column(
                children: const [
                  Text(
                    "Debug Menu",
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
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => WelcomePage(
                            email: "",
                          )),
                      child: const Text(
                        "Welcome Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const AccountInfoPage()),
                      child: const Text(
                        "Account Info Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => CatalogPage(email: "debug@debug.com")),
                      child: const Text(
                        "Catalog Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const HomePage()),
                      child: const Text(
                        "Home Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const ItemEditPage()),
                      child: const Text(
                        "Item Edit Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const LoginPage()),
                      child: const Text(
                        "Login Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const LogoutPage()),
                      child: const Text(
                        "Logout Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const SignupPage()),
                      child: const Text(
                        "Signup Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => const SearchPage()),
                      child: const Text(
                        "Search Page",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
