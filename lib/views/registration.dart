import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/customButton.dart';
import 'package:flutter_application_2/views/customtext.dart';
import 'package:flutter_application_2/views/customtextField.dart';
import 'package:get/get.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.orange.shade900,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CustomText(
                    label: "Registration Form",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomText(
                  label: "Firstname",
                  labelColor: Colors.blue,
                ),
              ),
              CustomTextField(
                  Controller: usernameController,
                  hintText: "Enter your first name",
                  prefixIcon: const Icon(Icons.person)),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomText(
                  label: "Second Name",
                  labelColor: Colors.blue,
                ),
              ),
              CustomTextField(
                  Controller: usernameController,
                  hintText: "Enter your second name",
                  prefixIcon: const Icon(Icons.person)),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomText(
                  label: "Phone Number",
                  labelColor: Colors.blue,
                ),
              ),
              CustomTextField(
                  Controller: usernameController,
                  hintText: "Enter your phone number",
                  prefixIcon: const Icon(Icons.person)),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomText(
                  label: "Email",
                  labelColor: Colors.blue,
                ),
              ),
              CustomTextField(
                  Controller: usernameController,
                  hintText: "Enter your email",
                  prefixIcon: const Icon(Icons.person)),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomText(
                  label: "Password",
                  labelColor: Colors.blue,
                ),
              ),
              CustomTextField(
                  Controller: usernameController,
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.person)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(label: "Confirm Password"),
              ),
              CustomTextField(
                Controller: passwordController,
                hintText: "Renter password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility),
              ),
              const SizedBox(height: 20),
              CustomButton(
                label: "login",
                action: navigateToCalculator,
              )
            ]),
      ),
    );
  }
  void navigateToCalculator() {
    () => Get.toNamed("/calculator");
  }
}
