import 'package:flutter/material.dart';
import 'package:triya_app/home/PrivateJob.dart';
import 'package:triya_app/home/ceartecv.dart';
import 'package:triya_app/home/govtjob.dart';
import 'package:triya_app/home/videos.dart';
import 'package:triya_app/profiledetails/allapplicants.dart';
import 'package:triya_app/profiledetails/comments.dart';
import 'package:triya_app/profiledetails/createjob.dart';
import 'package:triya_app/profiledetails/home2.dart';
import 'package:triya_app/profiledetails/jobdescription.dart';
import 'package:triya_app/profiledetails/myaccountprofile.dart';

import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import 'books.dart';
class CreateResume extends StatefulWidget {
  const CreateResume({Key? key}) : super(key: key);
  @override
  State<CreateResume> createState() => _CreateResumeState();
}

class _CreateResumeState extends State<CreateResume> {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Image.asset("assets/Skype_Picture_2021_08_04T07_57_12_241Z.png"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          Text("  "),
        ],
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/10),

          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height/4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/Rectangle 48.png"),
                  fit: BoxFit.fill,
                )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height/30,
                child: const Text("Discover Jobs",style: TextStyle(color: Colors.black,fontSize: 18),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const GovtJob()));
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                offset: const Offset(5,5),
                              ),

                            ]
                          ),
                          child: Center(
                            child: Image.asset("assets/Mask Group 1.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/50,
                      ),
                      const Text("Government Jobs",style: TextStyle(color: Colors.black,fontSize: 14),),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivateJob()));
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  offset: const Offset(5,5),
                                ),

                              ]
                          ),
                          child: Center(
                            child: Image.asset("assets/drib.png",fit: BoxFit.cover,),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height/50,
                      ),
                      const Text("Private Company Jobs",style: TextStyle(color: Colors.black,fontSize: 14),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                height: MediaQuery.of(context).size.height/3.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Mask Group 2.png"),
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreteCv()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color: const Color(0xff4170db),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(child: Text("CREATE YOUR RESUME",style: TextStyle(color: Colors.white,fontSize: 18),)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              GestureDetector(
                onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Books()));
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Books",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("Read More",style: TextStyle(color: Colors.blue,fontSize: 17),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                      children: [
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    offset: const Offset(5,5),
                                  ),

                                ]
                            ),
                            child: Center(
                              child: Image.asset("assets/study.png"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/50,
                          ),
                          const Text("Novels",style: TextStyle(color: Colors.black,fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    offset: const Offset(5,5),
                                  ),

                                ]
                            ),
                            child: Center(
                              child: Image.asset("assets/Group 46.png",fit: BoxFit.cover,),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/50,
                          ),
                          const Text("Jobs Presentation",style: TextStyle(color: Colors.black,fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    offset: const Offset(5,5),
                                  ),

                                ]
                            ),
                            child: Center(
                              child: Image.asset("assets/Group 45.png"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/50,
                          ),
                          const Text("Graduation Books",style: TextStyle(color: Colors.black,fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    offset: const Offset(5,5),
                                  ),

                                ]
                            ),
                            child: Center(
                              child: Image.asset("assets/bottleneck.png"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/50,
                          ),
                          const Text("Others",style: TextStyle(color: Colors.black,fontSize: 10),),
                        ],
                      ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      offset: const Offset(5,5),
                                    ),

                                  ]
                              ),
                              child: Center(
                                child: Image.asset("assets/Path 1.png"),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/50,
                            ),
                            const Text("Novels",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      offset: const Offset(5,5),
                                    ),

                                  ]
                              ),
                              child: Center(
                                child: Image.asset("assets/Group 46.png",fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/50,
                            ),
                            const Text("Jobs Presentation",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      offset: const Offset(5,5),
                                    ),

                                  ]
                              ),
                              child: Center(
                                child: Image.asset("assets/Group 45.png"),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/50,
                            ),
                            const Text("Graduation Books",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width/30,),
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      offset: const Offset(5,5),
                                    ),

                                  ]
                              ),
                              child: Center(
                                child: Image.asset("assets/bottleneck.png"),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/50,
                            ),
                            const Text("Others",style: TextStyle(color: Colors.black,fontSize: 10),),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Videos()));
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Videos",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("See More",style: TextStyle(color: Colors.blue,fontSize: 17),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height/30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child:  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/3.7,
                        height: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                offset: const Offset(5,5),
                              ),
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset("assets/123.png"),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            const Text("Education",style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      Container(
                        width: MediaQuery.of(context).size.width/3.7,
                        height: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                offset: const Offset(5,5),
                              ),
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset("assets/1234.png"),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            const Text("Entertainment",style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width/30,),
                      Container(
                        width: MediaQuery.of(context).size.width/3.7,
                        height: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                offset: const Offset(5,5),
                              ),
                            ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset("assets/12345.png"),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height/30,
                            ),
                            const Text("Fasion",style: TextStyle(color: Colors.black,fontSize: 15),),
                          ],
                        ),
                      ),
                    ],
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
