import 'package:flutter/material.dart';
import 'package:instacam/wip/workinprogress.dart';
import 'package:instacam/screens/signup.dart';
import 'package:instacam/widgets/textfield.dart';
import 'package:instacam/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Spacer(),
          Container(
            child: RichText(
              text: const TextSpan(
                  text: "Insta",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 50),
                  children: [
                    TextSpan(text: "Cam", style: TextStyle(color: Colors.green))
                  ]),
            ),
          ),
          Spacer(),
          TextFieldInput(
            hintText: "Enter your email",
            isPass: false,
            textEditingController: _emailController,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 10,
          ),
          TextFieldInput(
            hintText: "Enter your Password",
            isPass: true,
            textEditingController: _passController,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WorkInProgress()));
            },
            child: Container(
              child: const Text("Login"),
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                  color: blueColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)))),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: const Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              InkWell(
                onTap: () {
                  print("pressed Sign up");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Spacer(),
        ]),
      )),
    );
  }
}
