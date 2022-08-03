// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final emailValidator = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: formkey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/photo.jpg"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == "") {
                        return "name is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(hintText: "Name"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "") return "Email is required";

                      if (!emailValidator.hasMatch(value!))
                        return "Email not valid";
                      return null;
                    },
                    controller: emailController,
                    decoration: InputDecoration(hintText: "Email"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "") return "Phone is required";

                      return null;
                    },
                    controller: phoneController,
                    decoration: InputDecoration(hintText: "Phone"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      onPressed: () {
                        formkey.currentState!.validate();
                      },
                      child: Text("SUBMIT"))
                ],
              ),
            )),
      ),
    );
  }
}
