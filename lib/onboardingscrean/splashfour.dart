import 'dart:async';
import 'package:flutter/material.dart';
import 'package:triya_app/login/register1.dart';
import 'SplashTwo.dart';
class SplashFour extends StatefulWidget {
  const SplashFour({Key? key}) : super(key: key);

  @override
  State<SplashFour> createState() => _SplashFourState();
}

class _SplashFourState extends State<SplashFour> {
  bool check1=false;
  bool check2=false;
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(hours: 4),(
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
       child:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(height: MediaQuery.of(context).size.height/5,),
           const Text("Tell Us more about yourself",style: TextStyle(color: Colors.black,fontSize: 18),),
           SizedBox(height: MediaQuery.of(context).size.height/40,),
           Container(
             height: MediaQuery.of(context).size.height/5,
             width: MediaQuery.of(context).size.width/1.1,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
             ),
             child: ListTileTheme(
               child: CheckboxListTile(
                 title: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Image.asset("assets/XMLID 1258.png"),
                       const Text("I am Looking for a job\n opportunity",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
                     ],
                   ),
                 ),
                 tileColor: Colors.white,
                 side: const BorderSide(
                   color: Colors.white,
                   width: 2,
                 ),
                 selected: check1,
                 activeColor: Colors.white,
                 checkColor: Colors.white,

                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15),
                   side: BorderSide(
                     width: 3,
                     color:
                       check1? const Color(0xff4170db):Colors.white,
                   )
                 ),
                 value: check1,
                 onChanged: (bool? value){
                   setState(() {
                     check1=value!;
                   });
                 },
               ),
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height/30,),
           Container(
             height: MediaQuery.of(context).size.height/5,
             width: MediaQuery.of(context).size.width/1.1,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
             ),
             child: ListTileTheme(
               child: CheckboxListTile(
                 title: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Image.asset("assets/career.png"),
                       const Text("I am Looking for right\ncondedate for my company",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
                     ],
                   ),
                 ),
                 tileColor: Colors.white,
                 side: const BorderSide(
                   color: Colors.white,
                   width: 2,
                 ),
                 selected: check2,
                 activeColor: Colors.white,
                 checkColor: Colors.white,
                 shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15),
                     side: BorderSide(
                       width: 3,
                       color:
                       check2? const Color(0xff4170db):Colors.white,
                     )
                 ),
                 value: check2,
                 onChanged: (bool? value){
                   setState(() {
                     check2=value!;
                   });
                 },
               ),
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height/6,),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegistorOne()));
             },
             child: Container(
               height: MediaQuery.of(context).size.height/15,
               width: MediaQuery.of(context).size.width/1.1,
               decoration: BoxDecoration(
                 color: const Color(0xff4170db),
                 borderRadius: BorderRadius.circular(20),
               ),
               child: const Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontSize: 18),)),
             ),
           )
         ],
       ),

      ),
    );
  }
}
