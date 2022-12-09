import 'package:flutter/material.dart';

import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';
import 'search.dart';

class SvaedJob extends StatefulWidget {
  const SvaedJob({Key? key}) : super(key: key);

  @override
  State<SvaedJob> createState() => _SvaedJobState();
}

class _SvaedJobState extends State<SvaedJob> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: const Text(
          "Saved Jobs",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              },
              child: const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              )),
          SizedBox(width: MediaQuery.of(context).size.width / 30),
        ],
      ),
      key: _key,
      drawer: SafeArea(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width / 1.2,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 1,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/1234567.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/FiverImage.jpg"),
                          radius: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Irshad Khan",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("FLutter Developer",
                                style: TextStyle(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 1.1,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home2()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/home.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Home",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyAccProf()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/account-circle.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "My Account",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const JobDescription()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/Icon.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Job Description",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateJob()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/clipboard-text.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Create a Job",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Comments()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/shopping.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Comments",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Likes()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Likes",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ListofUsers()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "List Of Users",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AllApplicants()));
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/wallet.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "All Applications",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
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
          child: Column(
            children: [
              //frist
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 7.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Store Manager\nOnePlus",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              //2nd
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 12.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Software Engineer\nGoJek",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              //3rd
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 15.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Contents Writer\nMicrosoft",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),

              //4th
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 18.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location Manager\nNik",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              //5th
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 21.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Store Manager\n OnePlus",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),

              //6th
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/Rectangle 23.png"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Quality Assurance\nAmerican",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                            ),
                            const Text("Multan"),
                          ],
                        ),
                        const Text(
                          "Full Time 1 Day ago",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset("assets/bookmark.png"),
                        Row(
                          children: [
                            Image.asset("assets/message-outline.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            Image.asset("assets/heart.png"),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30,
                            ),
                            const Icon(
                              Icons.share,
                              color: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 0.4,
                    width: MediaQuery.of(context).size.width / 1.2,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
