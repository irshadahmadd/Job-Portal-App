import 'package:flutter/material.dart';
import 'package:triya_app/home/professionalcv/profesionalcv.dart';
class AdditionalTraining extends StatefulWidget {
  const AdditionalTraining({Key? key}) : super(key: key);

  @override
  State<AdditionalTraining> createState() => _AdditionalTrainingState();
}

class _AdditionalTrainingState extends State<AdditionalTraining> {
  final GlobalKey<FormState> _farmkey=GlobalKey<FormState>();
  TextEditingController text1=TextEditingController();
  TextEditingController text2=TextEditingController();
  TextEditingController text3=TextEditingController();
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
        title: const Text("Additional Training",style: TextStyle(color: Colors.black),),
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
                        hintText: "Company Name",
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
                        hintText: "Specialization/field",
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
                    controller: text3,
                    decoration: const InputDecoration(
                        hintText: "Description",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      const CircleAvatar(backgroundColor: Colors.blue,radius: 25,child: Icon(Icons.add,color: Colors.white,size: 30,),)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/4,),

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

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
