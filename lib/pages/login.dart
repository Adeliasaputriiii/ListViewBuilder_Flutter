import 'package:flutter/material.dart';
import 'package:loginshop/component/button_login.dart';
import 'package:loginshop/component/text_field.dart';
import 'package:loginshop/pages/home.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  void Loginclick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pagehome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 158, 38),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/bahan/shopping.png',
              width: 180,
            ),
            const SizedBox(height: 25),
            Text(
              'Welcome Back',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            textField(
              label: 'Username',
            ),
            const SizedBox(height: 10),
            textField(
              label: 'Password',
            ),
            const SizedBox(height: 25),
            buttonlogin(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
                Loginclick(context);
              },
            ),
          ],
        ),
      )),
    );
  }
}
