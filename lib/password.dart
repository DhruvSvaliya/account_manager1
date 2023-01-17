import 'package:account_manager/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'conatrol.dart';

class password extends StatelessWidget {
  controle c1 = Get.put(controle());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("image/a1.webp"))),
        child: Stack(alignment: Alignment.center, children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("image/book1.png")),
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Account Manager",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "FORGOY PASSWORD?",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Obx(() => Container(
                        height: 40,
                        width: 40,child: Text("${c1.ans.value}"),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                      ),),
                      Container(
                        height: 40,
                        width: 40,child: Text("${c1.ans.value}"),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                      ),
                      Container(
                        height: 40,
                        width: 40,child: Text("${c1.ans.value}"),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                      ),
                      Container(
                        height: 40,
                        width: 40,child: Text("${c1.ans.value}"),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            border: Border.all(color: Colors.black)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () => c1.pass("1"),
                          child: Text(
                            "1",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () => c1.pass("2"),
                          child: Text(
                            "2",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () => c1.pass("3"),
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () => c1.pass("4"),
                          child: Text(
                            "4",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () => c1.pass("5"),
                          child: Text(
                            "5",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () => c1.pass("6"),
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () => c1.pass("7"),
                          child: Text(
                            "7",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () => c1.pass("8"),
                          child: Text(
                            "8",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed: () =>c1.pass("9"),
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     IconButton(onPressed: () => null, icon: Icon(Icons.backspace_outlined,color: Color(0xFF651A7E),)),
                      TextButton(
                          onPressed: () => null,
                          child: Text(
                            "0",
                            style: TextStyle( fontWeight: FontWeight.bold,
                                fontSize: 28,color: Colors.black),
                          )),
                      TextButton(
                          onPressed:() {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                              return deshboard();
                            },));
                          },
                          child: Text(
                            "OK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFF651A7E)),
                          )),
                    ],
                  ),
                ]),
              )
            ],
          )
        ]),
      ),
    );
  }
}
