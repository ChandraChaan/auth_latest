import 'package:flutter/material.dart';


class resetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _controllerpw = TextEditingController();

    return Scaffold(
        body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10,),
                  Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: _controllerpw,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Mobile no',
                  labelText: 'Mobile no',
                  suffixIcon: IconButton(
                    onPressed: _controllerpw.clear,
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                'Please enter Register Mobile number here',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  // fontWeight: FontWeight.bold,
                  // decoration: TextDecoration.underline
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('Send OTP'),
            ),
          ),
          SizedBox(height: 15,),
          Container(
                alignment: Alignment.centerLeft,
                child: Text("Enter the OTP here",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45))),
          SizedBox(
              height: 8,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                otpBoxBuilder(),
                SizedBox(
                  width: 5,
                ),
                otpBoxBuilder(),
                SizedBox(
                  width: 5,
                ),
                otpBoxBuilder(),
                SizedBox(
                  width: 5,
                ),
                otpBoxBuilder(),
                otpBoxBuilder(),
                SizedBox(
                  width: 5,
                ),
                otpBoxBuilder(),
                SizedBox(
                  width: 5,
                ),
              ],
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: _controllerpw,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'New password',
                  labelText: 'New password',
                  suffixIcon: IconButton(
                    onPressed: _controllerpw.clear,
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
          ),
                    SizedBox(height: 35,),

                    Container(
              child: Center(
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.purple, width: 2.0),
              ),
          ),
        ]),
            )));
  }

  Widget otpBoxBuilder() {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      child: TextField(
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
        textAlign: TextAlign.center,
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
    );
  }
}
