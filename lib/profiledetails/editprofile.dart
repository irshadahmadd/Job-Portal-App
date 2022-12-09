import 'package:flutter/material.dart';
import 'package:triya_app/profiledetails/myaccountprofile.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  String? name, email, lastname,phone,otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyAccProf()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        centerTitle: true,
        title: const Text("Edit Profile",style: TextStyle(color: Colors.black),),
        actions: const [
          Center(child: Text("Done",style: TextStyle(fontSize: 20,color: Colors.green),)),
          SizedBox(width: 23,)
        ],
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
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.phone),
                              hintText: "Mobile",
                              labelText: "Enter Number",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.person),
                              hintText: "Manager at Ola Tech",
                              labelText: "Manager",
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

                      ],
                    )),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
