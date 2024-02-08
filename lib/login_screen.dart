import 'package:animate_do/animate_do.dart';
import 'package:day2/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();
  bool passwordObscured = true;
  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [Colors.black, Colors.black87, Colors.black54])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FadeInUp(
                          duration: const Duration(milliseconds: 1),
                          child: const Image(
                            image: AssetImage("assets/icon.png"),
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(90))),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 15,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: const Text("Login",
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              label: Text("Email"),
                                              labelStyle: TextStyle(
                                                  color: Colors.black),
                                              hintText:
                                                  "vijaybhuva90@gmail.com",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                              border: InputBorder.none),
                                          validator: validateEmail,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        child: TextFormField(
                                          obscureText: passwordObscured,
                                          decoration: InputDecoration(
                                            label: const Text("Password"),
                                            labelStyle: const TextStyle(
                                                color: Colors.black),
                                            hintText: ".......",
                                            hintStyle: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 50),
                                            border: InputBorder.none,
                                            suffixIcon: togglePassword(),
                                          ),
                                          validator: (password) => password!
                                                      .length <
                                                  8
                                              ? 'Password should be at least 7 characters'
                                              : null,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            const SizedBox(
                              height: 50,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: MaterialButton(
                                  onPressed: () {
                                    final isValid =
                                        _form.currentState!.validate();
                                    if (isValid) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomeScreen()));
                                    } else {
                                      Fluttertoast.showToast(
                                          msg:
                                              "Username / Password is Incorrect",
                                          gravity: ToastGravity.SNACKBAR,
                                          fontSize: 16.0);
                                    }
                                  },
                                  height: 50,

                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                  // decoration: BoxDecoration(
                                  // ),

                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 50,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: const Text(
                                  "Don't have any account? Sign Up",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          passwordObscured = !passwordObscured;
        });
      },
      icon: passwordObscured
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }
}
