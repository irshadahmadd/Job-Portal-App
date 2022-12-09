import 'package:flutter/material.dart';
class Likes extends StatefulWidget {
  const Likes({Key? key}) : super(key: key);

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
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
          "Likes(2)",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  const CircleAvatar(backgroundImage: AssetImage("assets/FiverImage.jpg"),radius: 30,),
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Irshad Khan",style: TextStyle(color: Colors.black,fontSize: 20),),

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  const CircleAvatar(backgroundImage: AssetImage("assets/121212.png"),radius: 30,),
                  SizedBox(width: MediaQuery.of(context).size.width/30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Ahmad Sohail",style: TextStyle(color: Colors.black,fontSize: 20),),

                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
