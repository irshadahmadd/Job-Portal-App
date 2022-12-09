import 'package:flutter/material.dart';
import 'package:triya_app/home/professionalcv/profesionalcv.dart';
class AcadamicHistory extends StatefulWidget {
  const AcadamicHistory({Key? key}) : super(key: key);

  @override
  State<AcadamicHistory> createState() => _AcadamicHistoryState();
}

class _AcadamicHistoryState extends State<AcadamicHistory> {

 final GlobalKey<FormState> _farmkey=GlobalKey<FormState>();
 TextEditingController text1=TextEditingController();
 TextEditingController text2=TextEditingController();
 TextEditingController text3=TextEditingController();
 TextEditingController text4=TextEditingController();
 TextEditingController text5=TextEditingController();
 TextEditingController text6=TextEditingController();
 TextEditingController text7=TextEditingController();
 TextEditingController text8=TextEditingController();
 TextEditingController text9=TextEditingController();
 TextEditingController text10=TextEditingController();
 TextEditingController text11=TextEditingController();
 TextEditingController text12=TextEditingController();
 TextEditingController text13=TextEditingController();
 TextEditingController text14=TextEditingController();
 TextEditingController text15=TextEditingController();
 TextEditingController text16=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfCv()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text("Acadamic History",style: TextStyle(color: Colors.black),),
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
                      TextFormField(
                              controller: text1,
                              decoration: const InputDecoration(
                                hintText: "School Name",
                                hintStyle: TextStyle(fontSize: 17)
                              ),
                        validator: (String? value){
                                if(value!.isEmpty){
                                  return "PLease Complete";
                                }
                        },

                            ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text2,
                        decoration: const InputDecoration(
                            hintText: "Year of Passing",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text3,
                        decoration: const InputDecoration(
                            hintText: "SSLC(Percentage) Name",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text4,
                        decoration: const InputDecoration(
                            hintText: "Secondary Diploma",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text5,
                        decoration: const InputDecoration(
                            hintText: "Year of Passing",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text6,
                        decoration: const InputDecoration(
                            hintText: "Score Percentage",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Padding(
                        padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width/2.5),
                        child: const    Text("Degree Qualifications ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text7,
                        decoration: const InputDecoration(
                            hintText: "Institute Name",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width/3,
                            child: TextFormField(
                              controller: text8,
                              decoration: const InputDecoration(
                                  hintText: "From",
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
                              controller: text9,
                              decoration: const InputDecoration(
                                  hintText: "To",
                                  hintStyle: TextStyle(fontSize: 17)

                              ),
                              validator: (String? value){
                                if(value!.isEmpty){
                                  return "PLease Complete";
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text10,
                        decoration: const InputDecoration(
                            hintText: "No Of Backlogs",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text11,
                        decoration: const InputDecoration(
                            hintText: "Aggregate Score (Percentage)",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text12,
                        decoration: const InputDecoration(
                            hintText: "Gap Between Education Years)",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text13,
                        decoration: const InputDecoration(
                            hintText: "Reason Of Gap Between Education)",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      Padding(
                        padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width/1.5),
                        child: const    Text("Masters ",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text14,
                        decoration: const InputDecoration(
                            hintText: "Institute/College Name",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text15,
                        decoration: const InputDecoration(
                            hintText: "Specialization)",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/40,),
                      TextFormField(
                        controller: text16,
                        decoration: const InputDecoration(
                            hintText: "Year Of Completion",
                            hintStyle: TextStyle(fontSize: 17)

                        ),
                        validator: (String? value){
                          if(value!.isEmpty){
                            return "PLease Complete";
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/20,),

                      GestureDetector(
                        onTap: (){
                          if(_farmkey.currentState!.validate())
                           {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfCv()));
                           }
                          else {
                            "Enter Data";
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
        ),
      ),
    );
  }
}
