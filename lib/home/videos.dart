import 'package:flutter/material.dart';
import 'package:triya_app/home/videos/videoplayer.dart';
import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';
class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
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
          "Videos",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width / 1.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.width / 3.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff638ff6),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  offset: const Offset(5, 5),
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset("assets/finance.png"),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                              ),
                              const Text(
                                "Accounting & Finance",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.width / 3.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  offset: const Offset(5, 5),
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset("assets/Marketing.png"),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                              ),
                              const Text(
                                "Advertising & Marketing",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.2,
                          height: MediaQuery.of(context).size.width / 3.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  offset: const Offset(5, 5),
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset("assets/arch.png"),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 30,
                              ),
                              const Text(
                                "Architecture",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 3.5,
                  // decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/Rectangle 48.png"),
                  //       fit: BoxFit.fill,
                  //     )),
                  child: const VideosPlayer(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/Ellipse 7.png"),
                      radius: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Spoken English easy Technique |",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mentors Series | 10 Minutes School",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes School |5M views | 2 Days Ago ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),
                    const Icon(
                      Icons.more_vert,
                      size: 35,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 3.5,
                  // decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/Rectangle 48.png"),
                  //       fit: BoxFit.fill,
                  //     )),
                  child: const VideosPlayer(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/Ellipse 7.png"),
                      radius: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Spoken English easy Technique |",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mentors Series | 10 Minutes School",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes School |5M views | 2 Days Ago ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),
                    const Icon(
                      Icons.more_vert,
                      size: 35,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 3.5,
                  // decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //       image: AssetImage("assets/Rectangle 48.png"),
                  //       fit: BoxFit.fill,
                  //     )),
                  child: const VideosPlayer(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/Ellipse 7.png"),
                      radius: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Spoken English easy Technique |",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Mentors Series | 10 Minutes School",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes School |5M views | 2 Days Ago ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),
                    const Icon(
                      Icons.more_vert,
                      size: 35,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
