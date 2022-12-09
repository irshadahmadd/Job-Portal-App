import 'package:flutter/material.dart';
import 'package:triya_app/home/normalcv/normalcv.dart';
import 'package:triya_app/home/professionalcv/profesionalcv.dart';
import 'package:triya_app/home/standardcv/stadardcv.dart';
class CreteCv extends StatefulWidget {
  const CreteCv({Key? key}) : super(key: key);

  @override
  State<CreteCv> createState() => _CreteCvState();
}

class _CreteCvState extends State<CreteCv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text("Create Resume",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(

            children: [
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              const Text("Please Select Which Resume you want to create"),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const NormalCv()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2,color: Colors.blue),
                  ),
                  child: const Center(
                    child: Text("NORMAL CV",style: TextStyle(color: Colors.blue),),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfCv()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2,color: Colors.blue),
                  ),
                  child: const Center(
                    child: Text("PROFESSIONAL CV",style: TextStyle(color: Colors.blue),),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const StandarCv()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2,color: Colors.blue),
                  ),
                  child: const Center(
                    child: Text("STANDARD CV",style: TextStyle(color: Colors.blue),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
