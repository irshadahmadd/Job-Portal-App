import 'package:flutter/material.dart';
class JobDescription extends StatefulWidget {
  const JobDescription({Key? key}) : super(key: key);

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Job Description",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [

          Center(child: Text("POST",style: TextStyle(color: Colors.green,fontSize: 18),)),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/50,),
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
                          children: const [
                            Icon(Icons.location_on,color: Colors.grey,),
                            Text("Multan"),
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
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Container(
                color: Colors.grey,
                height:0.5,
                width: MediaQuery.of(context).size.width/1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.1,

                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("SALARY",style: TextStyle(color: Colors.black,fontSize: 20),),
                        SizedBox(height: 10,),
                        Text("400\$ Per/month",style: TextStyle(color: Colors.black,fontSize: 20),)
                      ],
                    ),
                    Column(
                      children: const [
                        Text(" "),
                        Text("  ")
                      ],
                    ),
                    Column(
                      children: const [
                        Text("  "),
                        Text("  ")
                      ],
                    ),
                  ],
                )
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Container(
                color: Colors.grey,
                height:0.5,
                width: MediaQuery.of(context).size.width/1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text("Contacts",style: TextStyle(color: Colors.black,fontSize: 20),),
                          const SizedBox(height:10,),
                          Row(
                            children:  const [
                              Icon(Icons.phone_callback_rounded,color: Colors.black,size: 30,),
                              SizedBox(width:10,),
                              Text("+923039340151",style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                          const SizedBox(height:10,),
                          Row(

                            children:  const [
                              Icon(Icons.email,color: Colors.black,size: 30,),
                              SizedBox(width:10,),
                              Text("ik8030893@gmail.com",style: TextStyle(color: Colors.black,fontSize: 18),)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  const [
                          Text(" "),
                          SizedBox(height:10,),
                          Text("Call",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight:FontWeight.bold),),
                          SizedBox(height:10,),
                          Text("Email",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight:FontWeight.bold),)
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              Container(
                color: Colors.grey,
                height:0.5,
                width: MediaQuery.of(context).size.width/1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("TAGS",style: TextStyle(color: Colors.black,fontSize: 18),),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(
                          height: MediaQuery.of(context).size.height/20 ,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1,color: Colors.black),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                            child: Center(child: Text("Tech",style: TextStyle(fontSize: 15),)),
                          ),

                        ),
                          Container(
                            height: MediaQuery.of(context).size.height/20 ,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1,color: Colors.black),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                              child: Center(child: Text("Software",style: TextStyle(fontSize: 15),)),
                            ),

                          ),
                          Container(
                            height: MediaQuery.of(context).size.height/20 ,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(width: 1,color: Colors.black),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
                              child: Center(child: Text("Emblems",style: TextStyle(fontSize: 15),)),
                            ),

                          ),
                        ],
                      ),
                    ],
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30,),
              Container(
                color: Colors.grey,
                height:0.5,
                width: MediaQuery.of(context).size.width/1,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50,),
              SizedBox(
                  width: MediaQuery.of(context).size.width/1.1,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Description",style: TextStyle(color: Colors.black,fontSize: 18),),
                      SizedBox(height: MediaQuery.of(context).size.height/50,),
                      Text("Lorem ipsum dolor sit rumnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis tenetur iure eius earum ut molestias architecto voluptate aliquam",
                      style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
