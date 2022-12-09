import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:triya_app/home/createresume.dart';
import 'package:triya_app/login/createaccount.dart';
import 'package:triya_app/login/forgotpassward.dart';
class SignIN extends StatefulWidget {
  const SignIN({Key? key}) : super(key: key);

  @override
  State<SignIN> createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  String? name, email, lastname,phone,otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAccount()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text("SIGN IN",style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(

            width: MediaQuery.of(context).size.width/1.1,
            child: Column(
              children: [
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/7,),

                        TextFormField(
                          controller: password,
                          obscureText: true,
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(
                              hintText: "Email Or Phone",
                              labelText: "Enter email or phone",

                              suffixIcon: const Icon(Icons.mail),

                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter email or phone';
                            }
                            return null;
                          },

                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/20,),
                        TextFormField(
                          controller: confirmpassword,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Confirm Passward",
                              hintText: "Confirm Passward",
                              suffixIcon: const Icon(Icons.remove_red_eye),

                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Passward Does Not Match';
                            }

                            return null;
                          },

                        ),
                      ],
                    )),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                Padding(
                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.8),
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPassward()));
                      },

                      child: Text("Forgot Passward?",style: TextStyle(fontSize: 17),)),
                ),

                SizedBox(height: MediaQuery.of(context).size.height/8,),
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()) {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateResume()));
                    }
                  
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      color: const Color(0xff4170db),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("SignIn",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
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

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
