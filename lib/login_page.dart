import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page_firebase/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/loginimg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //-----------------------------------------------------------
          const SizedBox(height: 10),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello",
                  style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign into your account",
                  style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.deepOrangeAccent[100],
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //------------------------
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //------------------------
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.deepOrangeAccent[100],
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //------------------------
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      //------------------------
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    const Text(
                      "Forgot your password?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 206, 111, 111),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //---------------------------------------------------------------
          const SizedBox(height: 62),
          Center(
            child: Container(
              width: w * 0.44,
              height: h * 0.073,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("img/loginbtn.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 62),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.grey[500],
                // color: Color.fromARGB(255, 206, 111, 111),
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: " Create",
                  style: const TextStyle(
                      color: Color.fromARGB(255, 206, 111, 111),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  //--------------------Route ko lagi Create to sign up --------------
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => const SignUpPage()),
                  //------------------------------------------
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
