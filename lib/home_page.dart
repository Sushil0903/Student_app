import 'package:flutter/material.dart';
import 'package:student_app/util.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9800),
        title: Text("Home page",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              setState(() {

              });
            },
              child: Icon(Icons.restart_alt,color: Colors.white,))
        ],
      ),

      body:ListView.builder(

        itemCount: student.Studentdetail.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Container(
                height:80,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black54),
                child: Column(
                  children: [
                    Text(
                      "Name :${student.Studentdetail[index]["Name"]}",style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    Text(
                      "Grid :${student.Studentdetail[index]["Grid"]}",style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    Text(
                      "Standard :${student.Studentdetail[index]["Std"]}",style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  ],
                )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "Add_detail");

      },child: Icon(Icons.add,color: Colors.white,size: 35,),backgroundColor: Color(0xffFF9800)),
    );
  }
}
