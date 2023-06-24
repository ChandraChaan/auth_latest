import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    var controllerpw = TextEditingController();

    return Scaffold(
        body: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(Icons.arrow_back),
            Text(
              'Login Page',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
                  Image.network("https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter Login-ID',
            labelText: 'Login-ID',
            suffixIcon: IconButton(
              onPressed: controller.clear,
              icon: Icon(Icons.clear),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: controllerpw,
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter password',
            labelText: 'password',
            suffixIcon: IconButton(
              onPressed: controllerpw.clear,
              icon: Icon(Icons.clear),
            ),
          ),
        ),
      ),
      Text(
        'Forgot Password',
        style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
      Container(
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.purple, width: 2.0),
        ),
      ),
    ])));
  }
}
