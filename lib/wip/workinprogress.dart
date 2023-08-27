import 'dart:io';
import 'package:instacam/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:instacam/screens/signup.dart';
import 'package:instacam/utils/colors.dart';
import 'package:instacam/screens/login.dart';

class WorkInProgress extends StatefulWidget {
  const WorkInProgress({super.key});

  @override
  State<WorkInProgress> createState() => _WorkInProgressState();
}

class _WorkInProgressState extends State<WorkInProgress> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mobileBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mobileBackgroundColor,
          title: Text(
            "Work In Progress",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Spacer(),
              Center(
                child: Text(
                  "L4FeeR",
                  style: TextStyle(color: Colors.blue, fontSize: 40),
                ),
              ),
              Spacer(),
              Text(
                "This project is still in WIP",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Row(
                children: [
                  OutlinedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      icon: Icon(Icons.navigate_before),
                      label: Text("Back")),
                  Spacer(),
                  OutlinedButton.icon(
                      onPressed: () => exit(0),
                      icon: Icon(Icons.exit_to_app),
                      label: Text("Exit")),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
