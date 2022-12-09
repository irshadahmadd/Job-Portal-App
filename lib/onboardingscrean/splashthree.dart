import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:triya_app/onboardingscrean/splashfour.dart';
class SplashThree extends StatefulWidget {
  const SplashThree({Key? key}) : super(key: key);

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 4),(
        (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SplashFour()));
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
            Image.asset("assets/undraw_career_development_oqcb 1.png"),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            const Text("Grow in your career with endless opportunities"),
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
