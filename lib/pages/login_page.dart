import 'package:flutter/material.dart';
import 'package:login/Components/my_button.dart';
import 'package:login/Components/my_textfield.dart';
import 'package:login/Components/sqaure_title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 25.0),
                //logo
                const Icon(
                  Icons.lock,
                  size: 100.0,
                ),
                const SizedBox(height: 25.0),

                //welcome back! you have been missed
                Text(
                  "Welcome Back You've been missed!",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 20.0),

                //username textfields
                MyTextField(
                  controller: usernamecontroller,
                  labelText: "Enter User Name",
                  hintText: "User Name",
                  obscureText: false,
                ),
                const SizedBox(height: 20.0),
                //password textfield
                MyTextField(
                  controller: passwordcontroller,
                  labelText: "Enter Password",
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 20.0),
                //forget password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),

                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 25,
                ),
                //or continue with
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or Contiune With"),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                //google + apple sign in button
                const SizedBox(height: 20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    //google button
                    Squaretitle(imagepath: "lib/images/google.png"),
                    SizedBox(width: 10),
                    //apple button
                    Squaretitle(imagepath: "lib/images/apple-logo.png")
                  ],
                ),
                //not a member register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
