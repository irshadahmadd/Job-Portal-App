import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.search,color: Colors.black,size: 30,),
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search",
            enabledBorder: InputBorder.none,
            focusedBorder:  InputBorder.none,
            disabledBorder:  InputBorder.none,
            focusedErrorBorder:  InputBorder.none,

          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [

            SizedBox(height: MediaQuery.of(context).size.height/20,),
            Image.asset("assets/Group 33.png"),
          ],
        ),
      ),
    );
  }
}
