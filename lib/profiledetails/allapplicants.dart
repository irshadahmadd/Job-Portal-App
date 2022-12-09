import 'package:flutter/material.dart';
class AllApplicants extends StatefulWidget {
  const AllApplicants({Key? key}) : super(key: key);

  @override
  State<AllApplicants> createState() => _AllApplicantsState();
}

class _AllApplicantsState extends State<AllApplicants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.black,
        ),
        title: const Text(
          "All Applicants",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/121212.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),

                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("  "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),

                            ],
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width/1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/ewewqewq.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("    "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),

            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/121212.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),

                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("  "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),

                            ],
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width/1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/ewewqewq.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("    "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),

            SizedBox(height: MediaQuery.of(context).size.height/50,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/121212.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Irshad Khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),

                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("  "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),

                            ],
                          ),

                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 0.8,
                  width: MediaQuery.of(context).size.width/1.35,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/30,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,
                child: Row(
                  children: [

                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.1,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(backgroundImage: AssetImage("assets/ewewqewq.png"),radius: 40,),
                          Padding(
                            padding:  const EdgeInsets.only(top: 10,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    const Text(
                                      "Marya khan",
                                      style: const TextStyle(color: Colors.black, fontSize: 18),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "ik8030893@gmail.com",
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                ),
                                Row(
                                  children:  [
                                    Image.asset("assets/employ.png"),
                                    const SizedBox(width: 10,),
                                    const Text("Employee",style: TextStyle(color: Colors.black,fontSize: 15),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text("    "),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.more_vert,size: 30,),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/50,),

          ],
        ),
      ),
    );
  }
}
