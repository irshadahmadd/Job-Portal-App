import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "My Jobs",
          style: TextStyle(color: Colors.black),
        ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //1st
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Row(
                children: const [
                  Text("Newest first"),
                  Icon(Icons.expand_more),
                ],
              ),
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
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Text("Multan"),
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
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" "),
                Text(" "),
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          "View Applicant",
                          style: TextStyle(color: Colors.blue,fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey,
                  height:0.4,
                  width: MediaQuery.of(context).size.width/1.6,
                )
              ],),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            //second
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Rectangle 12.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Software Engineer\nGoJek",style: TextStyle(color: Colors.black,fontSize: 15),),
                      Row(
                        children: [
                          const Icon(Icons.location_on,color: Colors.grey,),
                          const Text("Multan"),
                        ],
                      ),
                      const Text("Full Time 1 Day ago",style: TextStyle(color: Colors.black,fontSize: 15),),
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
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Image.asset("assets/heart.png"),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          const Icon(Icons.share,color: Colors.grey,)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" "),
                Text(" "),
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          "View Applicant",
                          style: TextStyle(color: Colors.blue,fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey,
                  height:0.4,
                  width: MediaQuery.of(context).size.width/1.6,
                )
              ],),
          //3rd
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Rectangle 15.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Contents Writer\nMicrosoft",style: TextStyle(color: Colors.black,fontSize: 15),),
                      Row(
                        children: [
                          const Icon(Icons.location_on,color: Colors.grey,),
                          const Text("Multan"),
                        ],
                      ),
                      const Text("Full Time 1 Day ago",style: TextStyle(color: Colors.black,fontSize: 15),),
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
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Image.asset("assets/heart.png"),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          const Icon(Icons.share,color: Colors.grey,)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" "),
                Text(" "),
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          "View Applicant",
                          style: TextStyle(color: Colors.blue,fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey,
                  height:0.4,
                  width: MediaQuery.of(context).size.width/1.6,
                )
              ],),
            //4th
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Rectangle 18.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Location Manager\nNik",style: TextStyle(color: Colors.black,fontSize: 15),),
                      Row(
                        children: [
                          const Icon(Icons.location_on,color: Colors.grey,),
                          const Text("Multan"),
                        ],
                      ),
                      const Text("Full Time 1 Day ago",style: TextStyle(color: Colors.black,fontSize: 15),),
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
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Image.asset("assets/heart.png"),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          const Icon(Icons.share,color: Colors.grey,)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" "),
                Text(" "),
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          "View Applicant",
                          style: TextStyle(color: Colors.blue,fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey,
                  height:0.4,
                  width: MediaQuery.of(context).size.width/1.6,
                )
              ],),
            //5th
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/1.1,
              height: MediaQuery.of(context).size.height/8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/Rectangle 21.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Store Manager\n OnePlus",style: TextStyle(color: Colors.black,fontSize: 15),),
                      Row(
                        children: [
                          const Icon(Icons.location_on,color: Colors.grey,),
                          const Text("Multan"),
                        ],
                      ),
                      const Text("Full Time 1 Day ago",style: TextStyle(color: Colors.black,fontSize: 15),),
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
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          Image.asset("assets/heart.png"),
                          SizedBox(width: MediaQuery.of(context).size.width/30,),
                          const Icon(Icons.share,color: Colors.grey,)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(" "),
                Text(" "),
                Container(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: MediaQuery.of(context).size.height / 23,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.blue,
                          child: Center(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          "View Applicant",
                          style: TextStyle(color: Colors.blue,fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey,
                  height:0.4,
                  width: MediaQuery.of(context).size.width/1.6,
                )
              ],),

          ],
        ),
      ),
    );
  }
}
