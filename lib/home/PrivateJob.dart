import 'package:flutter/material.dart';
import 'package:triya_app/home/savedjob.dart';
import '../profiledetails/allapplicants.dart';
import '../profiledetails/comments.dart';
import '../profiledetails/createjob.dart';
import '../profiledetails/home2.dart';
import '../profiledetails/jobdescription.dart';
import '../profiledetails/likes.dart';
import '../profiledetails/listofuser.dart';
import '../profiledetails/myaccountprofile.dart';
import 'jobdetails.dart';

class PrivateJob extends StatefulWidget {
  const PrivateJob({Key? key}) : super(key: key);

  @override
  State<PrivateJob> createState() => _PrivateJobState();
}

class _PrivateJobState extends State<PrivateJob> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: const Text("Private Company Jon"),
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
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
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
                              child: Image.asset("assets/finance.png"),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            const Text(
                              "Accounting & Finance",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                              child: Image.asset("assets/Marketing.png"),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            const Text(
                              "Advertising & Marketing",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30,
                    right: MediaQuery.of(context).size.width / 30),
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
                              height: MediaQuery.of(context).size.height / 14,
                              width: MediaQuery.of(context).size.width / 8,
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
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const JobDetails()));
                                },
                                child: const Text(
                                  "Google LLC.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ))
                          ],
                        ),
                        const Text(
                          "Principle Products Design",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.alarm,
                            ),
                            Text("Full time")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30,
                    right: MediaQuery.of(context).size.width / 30),
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
                              height: MediaQuery.of(context).size.height / 14,
                              width: MediaQuery.of(context).size.width / 8,
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
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const JobDetails()));
                                },
                                child: const Text(
                                  "Google LLC.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ))
                          ],
                        ),
                        const Text(
                          "Videos Adds Management",
                          style: TextStyle(fontSize: 19),
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.alarm,
                            ),
                            Text("Full time")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30,
                    right: MediaQuery.of(context).size.width / 30),
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
                              height: MediaQuery.of(context).size.height / 14,
                              width: MediaQuery.of(context).size.width / 8,
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
                              width: MediaQuery.of(context).size.width / 40,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const JobDetails()));
                                },
                                child: const Text(
                                  "Google LLC.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ))
                          ],
                        ),
                        const Text(
                          "Videos Adds Management",
                          style: TextStyle(fontSize: 19),
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.alarm,
                            ),
                            Text("Full time")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
