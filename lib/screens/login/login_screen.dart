import 'package:animate_do/animate_do.dart';
import 'package:day2/utils/custom_textfield.dart';
import 'package:day2/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:day2/utils/app_images.dart';
import 'package:day2/utils/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _form = GlobalKey<FormState>();
  bool passwordObscured = true;

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
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          AppImages.loginLogo,
                          width: 60,
                          height: 60,
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
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 30,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: const Center(
                                          child: Text("Login",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      const SizedBox(height: 40),
                                      CustomTextField(
                                        //obscureText: true,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        label: "Email",
                                        hintText: 'vijaybhuva90@gmail.com',
                                        suffixIcon: null,
                                        validator: (val) {
                                          if (!val!.isValidEmail) {
                                            return 'Enter a valid email';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      CustomTextField(
                                        obscureText: passwordObscured,
                                        keyboardType: TextInputType.number,
                                        label: "Password",
                                        hintText: '. . . . . .',
                                        suffixIcon: togglePassword(),
                                        validator: (val) => val!.length < 5
                                            ? 'Password should be at least 6 characters'
                                            : null,
                                      ),
                                    ],
                                  ),
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: PrimaryButton(form: _form)),
                            const SizedBox(
                              height: 60,
                            ),
                            FadeInUp(
                                duration: const Duration(milliseconds: 1),
                                child: const Text(
                                  "Don't have any account? Sign Up",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
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
          // print(passwordObscured);
        });
      },
      icon: passwordObscured
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      iconSize: 15,
      alignment: Alignment.bottomRight,
      color: Colors.grey,
    );
  }
}
