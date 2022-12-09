import 'package:flutter/material.dart';
import 'package:triya_app/home/standardcv/stadardcv.dart';
class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {

  final GlobalKey<FormState> _farmkey=GlobalKey<FormState>();
  TextEditingController text1=TextEditingController();
  TextEditingController text2=TextEditingController();
  TextEditingController text3=TextEditingController();
  TextEditingController text4=TextEditingController();
  TextEditingController text5=TextEditingController();
  TextEditingController text6=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const StandarCv()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text("Contact Information",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.15,
            child: Form(
              key: _farmkey,
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  TextFormField(
                    controller: text1,
                    decoration: const InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(fontSize: 17)

                    ),
                    validator: (String? value)
                    {
                      if(value!.isEmpty){
                        return "PLease Complete";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  TextFormField(
                    controller: text2,
                    decoration: const InputDecoration(
                        hintText: "Email Address",
                        hintStyle: TextStyle(fontSize: 17)

                    ),
                    validator: (String? value){
                      if(value!.isEmpty)
                      {
                        return "PLease Complete";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                  Padding(
                    padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width/1.46),
                    child: const    Text("Address ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: TextFormField(
                          controller: text3,
                          decoration: const InputDecoration(
                              hintText: "House",
                              hintStyle: TextStyle(fontSize: 17)

                          ),
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "PLease Complete";
                            }
                            return null;
                          },
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: TextFormField(
                          controller: text4,
                          decoration: const InputDecoration(
                              hintText: "Area",
                              hintStyle: TextStyle(fontSize: 17)

                          ),
                          validator: (String? value)
                          {
                            if(value!.isEmpty){
                              return "PLease Complete";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: TextFormField(
                          controller: text5,
                          decoration: const InputDecoration(
                              hintText: "City",
                              hintStyle: TextStyle(fontSize: 17)

                          ),
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "PLease Complete";
                            }
                            return null;
                          },
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: TextFormField(
                          controller: text6,
                          decoration: const InputDecoration(
                              hintText: "State",
                              hintStyle: TextStyle(fontSize: 17)

                          ),
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "PLease Complete";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                  GestureDetector(
                    onTap: (){
                      if(_farmkey.currentState!.validate())
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const StandarCv()));

                      }
                      else{
                        "Please Complete The Information";
                      }


                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.2,
                      height: MediaQuery.of(context).size.height/18,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2,color: Colors.blue),
                      ),
                      child: const Center(
                        child: Text("Save",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
