import 'package:flutter/material.dart';

class CreateJob extends StatefulWidget {
  const CreateJob({Key? key}) : super(key: key);

  @override
  State<CreateJob> createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();
  TextEditingController text5 = TextEditingController();
  TextEditingController text6 = TextEditingController();
  String? selectedDropdown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: const Icon(
          Icons.cancel_outlined,
          size: 30,
          color: Colors.black,
        ),
        title: const Text(
          "Create a Job",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.expand_more,
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "assets/Avatar.png",
                    ),
                    const Text(
                      "Nike\n ik8030893@gmail.com",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    const Text("  "),
                    const Text("  "),
                  ],
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.1,

                child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text1,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Software Engineer",
                              labelText: "Job Title",

                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text2,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Location",

                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text3,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Salary",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),

                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text4,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Employments type",
                              suffixIcon: DropdownButton(
                                value: selectedDropdown,
                                items: [
                                 DropdownMenuItem(value: "1",child: Text("Full Time")),
                                  DropdownMenuItem(value: "2",child: Text("Part Time")),
                                  DropdownMenuItem(value: "3",child: Text("Contract Time")),
                                ],
                                onChanged: (val){
                                     setState(() {
                                       selectedDropdown= val as String;
                                     });
                                },
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),


                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text5,
                          decoration: InputDecoration(
                              labelText: "Tags",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height/30,),
                        TextFormField(
                          controller: text6,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Job Description",
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                  )
                              )
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
