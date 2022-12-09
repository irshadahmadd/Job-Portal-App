import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:triya_app/login/register1.dart';
import 'package:triya_app/login/signin.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegistorOne()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text("Create Account",style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/30),
            width: MediaQuery.of(context).size.width/1.1,
            child: Column(
              children: [
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Enter Email",
                              suffixIcon: const Icon(Icons.email),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Email';
                            }
                            if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Please a valid Email';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            email = value;
                          },
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.person),
                              hintText: "Enter Your First Name",
                              labelText: "Enter First Name",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Name';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            name = value;
                          },
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.person),
                              hintText: "Enter Your Last Name",
                              labelText: "Enter Last Name",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Name';
                            }
                            return null;
                          },
                          onSaved: (String? value) {
                            name = value;
                          },
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: password,
                          obscureText: true,
                          keyboardType: TextInputType.text,

                          decoration: InputDecoration(
                              hintText: "Passward",
                              labelText: "Enter Passward",

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
                              return 'Please Enter a Password';
                            }
                            return null;
                          },

                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
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
                            print(password.text);

                            print(confirmpassword.text);

                            if (password.text != confirmpassword.text) {
                              return "Password does not match";
                            }

                            return null;
                          },

                        ),
                      ],
                    )),

                SizedBox(height: MediaQuery.of(context).size.height/20,),
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.transparent,
                              content: Container(
                                width: MediaQuery.of(context).size.width / 1.1,
                                height: MediaQuery.of(context).size.height/2,

                                decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text("Confirm Phone Number",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                      GestureDetector(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateAccount()));
                                          },
                                          child: const Icon(Icons.cancel))
                                      ],
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                                    Form(
                                        key: _formkey,
                                        child:Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width /1.6,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              hintText: "Phone",
                                              prefixIcon: Icon(Icons.phone)
                                            ),
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            validator: (String? value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter phone no ';
                                              }
                                              return null;
                                            },
                                            onSaved: (String? value) {
                                              phone = value;
                                            },
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height/20,),
                                        Container(
                                          width: MediaQuery.of(context).size.width /1.6,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(

                                                hintText: "OTP",
                                                suffix: Text("Send OTP",),
                                                prefixIcon: Icon(Icons.lock)
                                            ),
                                            autovalidateMode: AutovalidateMode.onUserInteraction,
                                            validator: (String? value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter phone no ';
                                              }
                                              return null;
                                            },
                                            onSaved: (String? value) {
                                              otp= value;
                                            },
                                          ),
                                        ),

                                      ],

                                    )

                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height/30,),
                                    GestureDetector(
                                      onTap: (){
                                        if(_formkey.currentState!.validate()){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignIN()));
                                        }
                                        else {
                                          "Please confirm Phone No";
                                        }
                                      },
                                      child: Container(
                                        height: MediaQuery.of(context).size.height/15,
                                        width: MediaQuery.of(context).size.width/2,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff4170db),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: const Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 18),)),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            );
                          });
                    }
                    else {
                      "PLease Enter Valid Data";
                    }

                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/15,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      color: const Color(0xff4170db),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(child: Text("Registor",style: TextStyle(color: Colors.white,fontSize: 18),)),
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


