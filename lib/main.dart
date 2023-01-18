import 'package:account_manager/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'conatrol.dart';

void main() {
  runApp(GetMaterialApp(
    home: first(),
    debugShowCheckedModeBanner: false,
  ));
}

class first extends StatelessWidget {
  controle c = Get.put(controle());
  TextEditingController setpass=TextEditingController();

  getpassword()
  async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('password');
    if(action==null)
      {
        print("password is not set");
      }
    else
      {

        print("password is set");
      }
  }

  @override
  Widget build(BuildContext context) {
getpassword();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("image/a1.webp"))),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width / 1.3,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 20,
                  width: double.infinity,
                  color: Color(0xFF651A7E),
                  child: Text("Settings",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
                Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(controller: setpass,
                        style: TextStyle(color: Color(0xFF651A7E)),
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                            labelText: "Set password",
                            labelStyle: TextStyle(color: Colors.black),
                            helperText: "Password must be 4 character long"))),
                ListTile(
                  title: Text(
                    "Set security questions for retrieve your password when you forgot.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  leading: Icon(Icons.label_important, color: Color(0xFF651A7E)),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Obx(() => DropdownButton(
                        value: c.que.value,
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(
                              value: "Security Question 1",
                              child: Text(
                                "Security Question 1",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What was the first mobile that you purchased?",
                              child: Text(
                                "What was the first mobile that you purchased?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What was the name of you best friend at childhood?",
                              child: Text(
                                "What was the name of you best friend at childhood?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value: "What was the name of you first pet?",
                              child: Text(
                                "What was the name of you first pet?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value: "What is your favourite chilren's book?",
                              child: Text(
                                "What is your favourite chilren's book?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What was the first film you saw in the cinema?",
                              child: Text(
                                "What was the first film you saw in the cinema?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What was the name of your favourite teacher at primary school?",
                              child: Text(
                                "What was the name of your favourite teacher at primary school?",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                        onChanged: (value) {
                          c.que.value = value!;
                        },
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(color: Color(0xFF651A7E)),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        labelText: "Answer*",
                        labelStyle: TextStyle(color: Colors.grey),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Obx(() => DropdownButton(
                        value: c.que1.value,
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(
                              value: "Security Question 2",
                              child: Text(
                                "Security Question 2",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What is the name of your favourite sports team?",
                              child: Text(
                                "What is the name of your favourite sports team?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value: "Who was your  favourite singer or band?",
                              child: Text(
                                "Who was your  favourite singer or band?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value: "What is your first job?",
                              child: Text(
                                "What is your first job?",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value:
                                  "What was the model of your first motorised vechicle",
                              child: Text(
                                "What was the model of your first motorised vechicle",
                                style: TextStyle(color: Colors.black),
                              )),
                          DropdownMenuItem(
                              value: "What was your childhood nickname?",
                              child: Text(
                                "What was your childhood nickname?",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                        onChanged: (value) {
                          c.que1.value = value!;
                        },
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                      cursorColor: Colors.red,
                      style: TextStyle(color: Color(0xFF651A7E)),
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        labelText: "Answer*",
                        labelStyle: TextStyle(color: Colors.grey),
                      )),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 33,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xFF651A7E))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "EXIT",
                            style: TextStyle(color: Color(0xFF651A7E)),
                          )),
                    ),
                    Container(
                      height: 33,
                      width: 120,
                      decoration: BoxDecoration(color: Color(0xFF651A7E),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xFF651A7E))),
                      child: TextButton(
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            await prefs.setString('password', setpass.text);
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return password();
                            },));
                          },
                          child: Text(
                            "SET",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                ),

              ]),
            ),
          )
        ]),
      ),
    );
  }
}
