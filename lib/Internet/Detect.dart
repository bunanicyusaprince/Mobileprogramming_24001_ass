import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sidebar/broad/Second.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sidebar/Login.dart';

class Internet extends StatefulWidget {
  const Internet({Key? key}) : super(key: key);

  @override
  State<Internet> createState() => _InternetState();
}

class _InternetState extends State<Internet> {
  late StreamSubscription subscription;
  var isDeviceConnected = true;

  @override
  void initState() {
    super.initState();
    getConnectivity();
  }

  getConnectivity() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      setState(() {
        isDeviceConnected = result != ConnectivityResult.none;
      });
      if (!isDeviceConnected) {
        showDialoglogBox();
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Connectivity Checker',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              ),
              child: Text('LOGIN HERE'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              isDeviceConnected
                  ? "Internet connected successfully"
                  : "No internet connection please try again later",
              style: TextStyle(
                fontSize: 18,
                color: isDeviceConnected ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  void showDialoglogBox() {
    Fluttertoast.showToast(
      msg: "No internet connection Try again later",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
    );
  }
}
