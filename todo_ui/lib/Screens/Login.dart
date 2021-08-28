import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_ui/Screens/HomePage.dart';
import 'package:todo_ui/Widgets/Button.dart';

class Login extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(child: Image.asset("images/todo.PNG")),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[300], width: 2.0),
                    ),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 40, right: 40),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey[300], width: 2.0),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
                child: Button(text: "Login", onpress: () {
                  Navigator.pushNamed(context, HomePage.routeName);
                }),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "OR",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "login using social media",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Image.asset("images/google.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
