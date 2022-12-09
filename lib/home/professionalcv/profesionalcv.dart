import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:triya_app/home/professionalcv/acadamichistory.dart';
import 'package:triya_app/home/professionalcv/aditionaltraining.dart';
import 'package:triya_app/home/ceartecv.dart';
import 'package:triya_app/home/professionalcv/conferenceattaned.dart';
import 'package:triya_app/home/professionalcv/contactinfo.dart';
import 'package:triya_app/home/professionalcv/industryawards.dart';
import 'package:triya_app/home/professionalcv/keyskills.dart';
import 'package:triya_app/home/professionalcv/personalstatement.dart';
import 'package:triya_app/home/professionalcv/profaffiliation.dart';
import 'package:triya_app/home/professionalcv/profcirtificate.dart';
import 'package:triya_app/home/professionalcv/profexp.dart';
import 'package:triya_app/home/professionalcv/publications.dart';
class ProfCv extends StatefulWidget {
  const ProfCv({Key? key}) : super(key: key);

  @override
  State<ProfCv> createState() => _ProfCvState();
}

class _ProfCvState extends State<ProfCv> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreteCv()));
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        title: const Text("Professional CV",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/1,
              height: MediaQuery.of(context).size.height/4.3,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/7,
                    width:MediaQuery.of(context).size.width/1,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/1234567.png"),
                        fit: BoxFit.fill,
                      ),
                    ),

                  ),
                  Center(
                    child: PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: TextButton(
                              onPressed: () => getimage(ImageSource.gallery),
                              child: const Text("Gallery"),
                            ),
                          ),
                          PopupMenuItem(
                            child: TextButton(
                              onPressed: () => getimage(ImageSource.camera),
                              child: const Text("Camera"),
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
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(

                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/FiverImage.jpg"),
                                fit: BoxFit.fill,
                              ),

                            ),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(80),
                                child: _image != null
                                    ? Image.file(
                                  _image!,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                )
                                    : const Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            // top: 65,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.blue,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PersonalStatement()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Personal Statement",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfExp()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Professional Experience",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ContactInfo()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Contact Information",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AcadamicHistory()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Academic History",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const KeySkills()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Key Skills",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const IndusAwards()));
              },

              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Industrial Rewards",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfCirtef()));
              },

              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Professional Certificates",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Publications()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Publications",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfAffiliat()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Professional affiliations",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ConfAtained()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Conference attained",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdditionalTraining()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Additional training",style: TextStyle(color: Colors.black,fontSize: 17),),
                    Icon(Icons.arrow_right_alt_rounded,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Container(
              color: Colors.grey,
              height: 1,
              width: MediaQuery.of(context).size.width/1,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2,color: Colors.blue),
              ),
              child: const Center(
                child: Text("Review",style: TextStyle(color: Colors.blue),),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
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
            SizedBox(height: MediaQuery.of(context).size.height/30,),
          ],
        ),
      ),
    );
  }
}
