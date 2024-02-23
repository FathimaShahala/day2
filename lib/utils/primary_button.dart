import 'package:flutter/material.dart';
import 'package:day2/screens/navigation/bottom_navigation.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required GlobalKey<FormState> form,
  }) : _form = form;

  final GlobalKey<FormState> _form;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        final isValid = _form.currentState!.validate();
        if (isValid) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomNavigationScreen()));
        } else {
          Fluttertoast.showToast(
              msg: "Username / Password is Incorrect",
              gravity: ToastGravity.SNACKBAR,
              fontSize: 16.0);
        }
      },
      height: 50,
      color: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      child: const Center(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
