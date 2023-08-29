import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instacam/screens/login.dart';
import 'package:instacam/services/firebase_auth_methods.dart';
import 'package:instacam/utils/colors.dart';
import 'package:instacam/widgets/textfield.dart';
import 'package:instacam/wip/workinprogress.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void SignUpUser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).SignUpWithEmail(
        email: _emailController.text,
        password: _passController.text,
        context: context);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      Spacer(),
                      Text(
                        "Sign Up",
                        style:
                            TextStyle(color: Colors.greenAccent, fontSize: 40),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFieldInput(
                        hintText: "Enter your Username",
                        isPass: false,
                        textEditingController: _usernameController,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldInput(
                        hintText: "Enter your email",
                        isPass: false,
                        textEditingController: _emailController,
                        textInputType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldInput(
                        hintText: "Enter your password",
                        isPass: true,
                        textEditingController: _passController,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldInput(
                        hintText: "Enter bio",
                        isPass: false,
                        textEditingController: _bioController,
                        textInputType: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          SignUpUser;
                        },
                        child: Container(
                          child: const Text("Sign Up"),
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const ShapeDecoration(
                              color: blueColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2)))),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 18, horizontal: 1),
                            child: const Text(
                              "Do you have an account?",
                              style: TextStyle(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print("Pressed Login");
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            )));
  }
}
