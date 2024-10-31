import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignupView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:[
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(labelText: 'email'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.cPass,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cAuth.signup(
                  controller.cEmail.text,
                  controller.cPass.text,
                );
              },
              child: const Text('Confirm'),
            ),
            const SizedBox(height: 10),
            // Suggested code may be subject to a license. Learn more: ~LicenseLog:130296503.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3623608230.
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Balik ke login'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TextButton(
            //       onPressed: () {
                    
            //       },
            //       child: const Text('Balik ke login'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}