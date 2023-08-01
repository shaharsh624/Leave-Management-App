import 'package:flutter/material.dart';

class ScaffoldBody extends StatefulWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  State<ScaffoldBody> createState() => _ScaffoldBodyState();
}

class _ScaffoldBodyState extends State<ScaffoldBody> {

  bool isPasswordShown=false;

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                child: Image(
                  image: AssetImage(
                    "assets/pdeu.png"
                  ),
                  height: 200,
                  width: 200,
                )
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "PDEU High Rise Hostel",
                  style: TextStyle(
                    fontSize: Width/14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Ubuntu",
                  ),
                ),
              ),

              Text(
                "Hostel Leave Application",
                style: TextStyle(
                  fontSize: Width/18,
                  fontFamily: "Ubuntu",
                ),
              ),

              SizedBox(
                height: Height/15,
              ),

              Container(
                width: Width/1.3,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Width/30),
                  child: Text(
                    "Roll Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: Width/24,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1,
                      fontFamily: "Ubuntu",
                    ),
                  ),
                ),
              ),

              Container(
                width: Width/1.3,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFFCAC9C9),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(Width/10))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Width/30,vertical: Width/100),
                  child: TextField(
                    style: TextStyle(
                      fontSize: Width/25,
                      letterSpacing: 1,
                      fontFamily: "Ubuntu",
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Roll Number",
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: Height/50,
              ),

              Container(
                width: Width/1.3,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: Width/30),
                  child: Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: Width/24,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),

              Container(
                width: Width/1.3,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFCAC9C9),
                        width: 3
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(Width/10))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Width/30,vertical: Width/80),
                  child: TextField(
                    style: TextStyle(
                      fontSize: Width/25,
                      letterSpacing: 1,
                      fontFamily: "Ubuntu",
                    ),
                    obscureText: !isPasswordShown,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Password",
                      suffixIconConstraints: BoxConstraints(
                        minHeight: 32,
                        minWidth: 32,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          setState(() {
                            isPasswordShown=!isPasswordShown;
                          });
                        },
                        child: Icon(
                          isPasswordShown?Icons.visibility:Icons.visibility_off,
                          color: Colors.black,
                          size: Width/20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: Height/15,
              ),

              TextButton(
                onPressed: (){

                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(Width/10)),
                  )
                ),
                child: Container(
                  width: Width/1.3,
                  decoration: BoxDecoration(
                    color: Color(0xFF0A2540),
                    borderRadius: BorderRadius.circular(Width/10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Width/35),
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Width/20,
                          fontFamily: "Ubuntu",
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}