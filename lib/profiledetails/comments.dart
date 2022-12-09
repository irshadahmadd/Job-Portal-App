import 'package:flutter/material.dart';
class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  TextEditingController comments=TextEditingController();
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
          "Comments(2)",
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
                      Text("Lorem ipsum dolor sit amet consectetur\n adipisicing mollitia,uptatum laborum",style: TextStyle(color: Colors.black)),
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
                      Text("Lorem ipsum dolor sit amet consectetur\n adipisicing mollitia,uptatum laborum",style: TextStyle(color: Colors.black)),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.width/1.8,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  controller: comments,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: "Write Your Comments here",
                    enabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),

                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/1.5),
              child: const Text("ADD",style: TextStyle(color: Colors.green,fontSize: 20),),
            )

          ],
        ),
      ),
    );
  }
}
