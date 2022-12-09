import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:triya_app/onboardingscrean/SplashTwo.dart';
class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds: 4),(
            (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SplashTwo()));
        }
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/undraw_career_progress_ivdb 1.png"),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            const Text("Get numbers of opportunities and find a dream job"),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            const SpinKitThreeBounce(
                duration: Duration(seconds: 3),
                color: Colors.black)

          ],
        ),

      ),
    );
  }
}

