import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:triya_app/login/signin.dart';

import 'createaccount.dart';
class RegistorOne extends StatelessWidget {
  const RegistorOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backroundblurr.jpeg"),
                fit: BoxFit.cover,
                opacity: 3.0,
              ),
            ),

          ),
          Container(
            width: double.infinity,

            decoration: const BoxDecoration(
            ),
            child: Column(

              children: [
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                const Text("Find The right job or right candidate",style:TextStyle(color: Colors.black,fontSize: 17),),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(20),

                          decoration: const BoxDecoration(
                              color:Color(0xff3b5999),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff837d6d),
                                    spreadRadius: 5,
                                    offset: Offset(1,1),
                                    blurRadius: 15
                                )
                              ]


                          ),
                          child: const FaIcon(FontAwesomeIcons.facebook,color: Colors.white,)
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),

                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff837d6d),
                              spreadRadius: 5,
                              offset: Offset(1,1),
                              blurRadius: 15
                            )
                          ]

                        ),
                        child: const FaIcon(FontAwesomeIcons.google,color: Colors.black,)
                      ),
                      Container(
                          padding: const EdgeInsets.all(20),

                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff837d6d),
                                    spreadRadius: 5,
                                    offset: Offset(1,1),
                                    blurRadius: 15
                                )
                              ]

                          ),
                          child: Column(
                            children: const [
                              Icon(Icons.phone,color: Color(0xff3b5999),),
                              Text("OTP",style: TextStyle(color: Color(0xff3b5999),fontSize: 10),)
                            ],
                          )
                      ),

                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20,),

                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width/1.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(height: MediaQuery.of(context).size.height/400,
                        width: MediaQuery.of(context).size.width/4,
                          color: Colors.grey,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height/25,
                         width: MediaQuery.of(context).size.width/3,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(width: 2,color:const Color(0xff3b5999),)
                         ),
                          child: const Center(child: Text("USING E-MAIL",style: TextStyle(color: Colors.black),)),
                        ),
                        Container(height: MediaQuery.of(context).size.height/400,
                          width: MediaQuery.of(context).size.width/4,
                          color: Colors.grey,
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIN()));
                      },

                      child: const Center(child: Text("SIGN IN",style: TextStyle(color: Colors.black),))),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAccount()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/18,
                      width: MediaQuery.of(context).size.width/3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2,color:const Color(0xff3b5999),)
                      ),
                      child: const Center(child: Text("REGISTOR",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ],)
              ],
            )
          ),
        ],
      ),
    );
  }
}
