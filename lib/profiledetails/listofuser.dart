import 'package:flutter/material.dart';

import 'allapplicants.dart';
import 'comments.dart';
import 'createjob.dart';
import 'home2.dart';
import 'jobdescription.dart';
import 'likes.dart';
import 'myaccountprofile.dart';

class ListofUsers extends StatefulWidget {
  const ListofUsers({Key? key}) : super(key: key);
  @override
  State<ListofUsers> createState() => _ListofUsersState();
}
class _ListofUsersState extends State<ListofUsers> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

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
            size: 30,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "List of Users",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/121212.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Accepted",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/ewewqewq.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Rejected",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/121212.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Accepted",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/ewewqewq.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Rejected",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/121212.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Accepted",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/ewewqewq.png"),
                            radius: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Column(
                                                  children: const [
                                                    Text(
                                                      "Accepted",
                                                    ),
                                                    Text(
                                                      "Rejected",
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                5.7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: const Center(
                                            child: Text(
                                          "Rejected",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "Employee",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                              Text("Joined 6 days ago")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width / 1.35,
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
