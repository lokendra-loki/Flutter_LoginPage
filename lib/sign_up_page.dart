import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/signup.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Container(),
                ),
                CircleAvatar(
                  radius: h * 0.07,
                  backgroundImage: const AssetImage("img/profile1.png"),
                  backgroundColor: Colors.white70,
                ),
              ],
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
                  "New here ?",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign up for new account !",
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
                        Icons.lock,
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
                        fontWeight: FontWeight.bold,
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
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "Have an account ?",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 206, 111, 111),
              ),
              recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
            ),
          ),
          const SizedBox(height: 30),

          Text(
            "or sign up with",
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 20),

          Wrap(
            children: [
              CircleAvatar(
                radius: h * 0.024,
                backgroundImage: const AssetImage("img/g.png"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: w * 0.05,
              ),
              CircleAvatar(
                radius: h * 0.024,
                backgroundImage: const AssetImage("img/f.png"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: w * 0.05,
              ),
              CircleAvatar(
                radius: h * 0.024,
                backgroundColor: Colors.white,
                backgroundImage: const AssetImage("img/t.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
