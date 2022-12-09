import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:triya_app/profiledetails/editprofile.dart';
class MyAccProf extends StatefulWidget {
  const MyAccProf({Key? key}) : super(key: key);

  @override
  State<MyAccProf> createState() => _MyAccProfState();
}

class _MyAccProfState extends State<MyAccProf> {
  File? _image;

  Future getimage(ImageSource source) async {
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
        leading: const Icon(Icons.menu,color: Colors.black,),
        title: const Text("Irshad Ahmad",style: TextStyle(color: Colors.black),),
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Irshad Khan",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text("+923039340151",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text("ik8030@gmail.com",style: TextStyle(color: Colors.black,fontSize: 20),)
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children:  [
                         GestureDetector(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));
                           },
                           child:  Text("Edit",style: TextStyle(color: Colors.black,fontSize: 20),),
                         ),



                      Text(" ",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text(" ",style: TextStyle(color: Colors.black,fontSize: 20),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Manager at OLA Technologies",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text("Interest: Design Manager",style: TextStyle(color: Colors.black,fontSize: 20),),

                     ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/10,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: const [

                      Text(" ",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text(" ",style: TextStyle(color: Colors.black,fontSize: 20),),
                      Text(" ",style: TextStyle(color: Colors.black,fontSize: 20),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
