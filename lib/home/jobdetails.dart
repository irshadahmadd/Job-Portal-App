import 'package:flutter/material.dart';
import 'package:triya_app/home/applynow.dart';
import 'package:triya_app/home/savedjob.dart';

import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';

class JobDetails extends StatefulWidget {
  const JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xffe1e1e1),
        leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: const Text(
          "Job Details",
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
        child: Container(
          color: const Color(0xffe1e1e1),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 14,
                        width: MediaQuery.of(context).size.width / 1.34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff4170db),
                        ),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.white,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white),
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SvaedJob()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300],
                          ),
                          child: const Center(
                              child: Icon(
                            Icons.wrap_text_sharp,
                            size: 30,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                          child: const Center(
                              child: Text(
                            "Compression",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ))),
                      Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: const Center(
                              child: Text(
                            "Business",
                          ))),
                      Container(
                          height: MediaQuery.of(context).size.height / 14,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black)),
                          child: const Center(
                              child: Text(
                            "Date",
                          ))),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 20),
                  height: MediaQuery.of(context).size.height / 1.4,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 150,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        height: MediaQuery.of(context).size.height / 3.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              14,
                                      width:
                                          MediaQuery.of(context).size.width / 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[300],
                                      ),
                                      child: const Center(
                                          child: Image(
                                        image: AssetImage("assets/google.png"),
                                      )),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          40,
                                    ),
                                    const Text(
                                      "Google LLC.",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    )
                                  ],
                                ),
                                const Text(
                                  "Products Design",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(Icons.location_on_outlined),
                                    Text("123 Sabsazar Multan\n Pakistan ")
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.compare_sharp,
                                  size: 30,
                                ),
                                const Icon(
                                  Icons.share,
                                  size: 30,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.alarm,
                                        size: 20,
                                      ),
                                      Text("Full time")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 1.5),
                        child: const Text(
                          "Requirements",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            const Text(
                                "Creative with in eyes for shapes and colors"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            const Text(
                                "Being Good in English Communication with Clients"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            const Text("Must has at least university degree"),
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
                                  builder: (context) => ApplyNow()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: const Color(0xff4170db),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text(
                            "Apply Now",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
