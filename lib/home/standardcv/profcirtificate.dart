import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:triya_app/home/standardcv/stadardcv.dart';
class ProfCirtef extends StatefulWidget {
  const ProfCirtef({Key? key}) : super(key: key);

  @override
  State<ProfCirtef> createState() => _ProfCirtefState();
}

class _ProfCirtefState extends State<ProfCirtef> {
  final GlobalKey<FormState> _farmkey=GlobalKey<FormState>();
  TextEditingController text1=TextEditingController();
  File? _image;

  Future getimage(ImageSource source) async {
    // ignore: invalid_use_of_visible_for_testing_member
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      _image = imageTemporary;
      Navigator.pop(context);
    });
  }

  File? file;


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
        title: const Text("Professional Certificate",style: TextStyle(color: Colors.black),),
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
                        hintText: "Certificate/title Description",
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
                      Center(
                        child: PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                child: TextButton(
                                  onPressed: () => getimage(ImageSource.gallery),
                                  child: const Text("Internal Storage"),
                                ),
                              ),
                              PopupMenuItem(
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _image = null;
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: const Text("Remove"),
                                ),
                              ),
                            ];
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width/2,
                            height: MediaQuery.of(context).size.height/15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1,color: Colors.blue)
                            ),
                            child: const Center(child: Text("UPLOAD PDF/IMAGE",style: TextStyle(color: Colors.blue),)),
                          )
                        ),
                      ),
                      const CircleAvatar(backgroundColor: Colors.blue,radius: 25,child: Icon(Icons.add,color: Colors.white,size: 30,),)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/2,),

                  GestureDetector(
                    onTap: (){
                      if(_farmkey.currentState!.validate())
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const StandarCv()));
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
