import 'package:flutter/material.dart';
import 'package:triya_app/home/ceartecv.dart';

import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';
class ApplyNow extends StatefulWidget {
  const ApplyNow({Key? key}) : super(key: key);

  @override
  State<ApplyNow> createState() => _ApplyNowState();
}

class _ApplyNowState extends State<ApplyNow> {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: const Text("Apply Now",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      key: _key,
      drawer: SafeArea(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width/1.2,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children:  [
                Container(
                  height: MediaQuery.of(context).size.height/8,
                  width:MediaQuery.of(context).size.width/1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/1234567.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        const CircleAvatar(backgroundImage: AssetImage("assets/FiverImage.jpg"),radius: 30,),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Irshad Khan",style: TextStyle(color: Colors.white),),
                            Text("FLutter Developer",style: TextStyle(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.4,
                  height: MediaQuery.of(context).size.height/1.1,

                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home2()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/home.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("Home",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyAccProf()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/account-circle.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("My Account",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const JobDescription()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/Icon.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("Job Description",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateJob()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/clipboard-text.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("Create a Job",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Comments()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/shopping.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("Comments",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Likes()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/heart.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("Likes",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListofUsers()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/heart.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("List Of Users",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/30,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AllApplicants()));
                        },
                        child: Row(

                          children: [
                            Image.asset("assets/wallet.png"),
                            SizedBox( width: MediaQuery.of(context).size.width/10,),
                            const Text("All Applications",style: TextStyle(color: Colors.black,fontSize: 15),)
                          ],
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            const Text("APPLY JOB WITH"),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.blue)
              ),
              child: Row(
                children: [
                  Image.asset("assets/Group 54.png"),
                  SizedBox(width: MediaQuery.of(context).size.width/40,),
                  const Text("NORMAL CV",style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreteCv()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.blue)
                ),
                child: Row(
                  children: [
                    Image.asset("assets/Group 54.png"),
                    SizedBox(width: MediaQuery.of(context).size.width/40,),
                    const Text("CREATE CV",style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.blue)
              ),
              child: Row(
                children: [
                  const Icon(Icons.file_upload_outlined,size: 35,),
                  SizedBox(width: MediaQuery.of(context).size.width/40,),
                  const Text("UPLOAD NEW CV",style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
