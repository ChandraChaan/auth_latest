import 'package:flutter/material.dart';

import '../utility/app_text_feild.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: AppInputTextFeild()),);
  }
}
