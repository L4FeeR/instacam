import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instacam/utils/snackbarmessage.dart';
import 'package:instacam/firebase_options.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);
  Future<void> SignUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await SignUpWithEmail(email: email, password: password, context: context);
    } on FirebaseException catch (e) {
      print(e);
      ShowSnackBar(context, e.message!);
    }
  }
}
