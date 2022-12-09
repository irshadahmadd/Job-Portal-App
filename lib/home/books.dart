import 'package:flutter/material.dart';

import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';
class Books extends StatefulWidget {
  const Books({Key? key}) : super(key: key);

  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              _key.currentState!.openDrawer();
            },
            child: const Icon(Icons.menu,color: Colors.black,)),
        title: const Text("Books",style: TextStyle(color: Colors.black),),
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
      body: SingleChildScrollView(
        child: Center(

          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: MediaQuery.of(context).size.height/70,),
                Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Group 70.png"),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                const Text("Fictions",style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 01.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 02.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 03.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                const Text("Design and Creative",style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 03.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 01.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 02.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                const Text("Novels",style: TextStyle(color: Colors.black,fontSize: 20),),
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 01.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 03.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.8,
                      height: MediaQuery.of(context).size.height/4.8,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Thumb 02.png"),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
