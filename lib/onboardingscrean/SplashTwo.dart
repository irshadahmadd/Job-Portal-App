import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:triya_app/onboardingscrean/splashthree.dart';
class SplashTwo extends StatefulWidget {
  const SplashTwo({Key? key}) : super(key: key);

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds: 4),(
            (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SplashThree()));
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
            Image.asset("assets/undraw_interview_rmcf 1.png"),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            const Text("Find the perfect condedate to fit into your"),
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
