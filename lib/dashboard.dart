import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'conatrol.dart';

class deshboard extends StatelessWidget {
  TextEditingController EnterAddName=TextEditingController();
  controle c2 = Get.put(controle());
Dasbord()
{
  c2.data_b().then((value) {
    c2.get_account();
  },);
}
  @override
  Widget build(BuildContext context) {
  Dasbord();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF651A7E),
          title: Text(
            "Dashboard ",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () => null,
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                )),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Save as PDF")),
                PopupMenuItem(child: Text("Save as Excel")),
              ],
            )
          ]),
      body:Obx(()=>(c2.temp.value==true)? ListView.builder(itemCount: c2.name.value.length,itemBuilder: (context, index) {
        return  Card(
            shape: OutlineInputBorder(borderSide: BorderSide(),borderRadius: BorderRadius.circular(10)),margin: EdgeInsets.all(10),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Text(
                              "  ${c2.name.value[index]}",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        Spacer(),
                        Spacer(),
                        Spacer(),
                        Expanded(
                            child: IconButton(
                                onPressed:() {

                                  showDialog(context: context, builder: (context) {
                                    return AlertDialog(title: Text("Are you syore this ${c2.name.value[index]} data is deleted"),actions: [
                                      Container(
                                        height: 33,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Color(0xFF651A7E))),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              "NO",
                                              style: TextStyle(color: Color(0xFF651A7E)),
                                            )),
                                      ),
                                      Container(
                                        height: 33,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Color(0xFF651A7E),
                                            borderRadius: BorderRadius.circular(50),
                                            border: Border.all(color: Color(0xFF651A7E))),
                                        child: TextButton(
                                            onPressed: () {
                                              c2.delete_account(c2.an_id.value[index]);
                                              Navigator.pop(context);
                                              c2.get_account().then((value) {
                                                c2.temp.value=true;
                                              },);
                                            },
                                            child: Text(
                                              "YES",
                                              style: TextStyle(color: Colors.white),
                                            )),
                                      ),
                                    ],);
                                  },);
                                },
                                icon: Icon(
                                  Icons.delete_rounded,
                                  color: Color(0xFF651A7E),
                                ))),
                        Expanded(
                            child: IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: double.infinity,
                                          color: Color(0xFF651A7E),
                                          child: Text(
                                            "Update Account",
                                            style: TextStyle(fontSize: 16, color: Colors.white),
                                          ),
                                        ),
                                        content: Container(
                                            margin: EdgeInsets.only(left: 8, right: 8),
                                            child: TextField(controller: EnterAddName,
                                              cursorColor: Colors.red,
                                              decoration: InputDecoration(labelText: "Update Account name",labelStyle: TextStyle(color: Colors.redAccent),
                                                  focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.red))),
                                            )),
                                        actions: [
                                          Container(
                                            height: 33,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(color: Color(0xFF651A7E))),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "CANCEL",
                                                  style: TextStyle(color: Color(0xFF651A7E)),
                                                )),
                                          ),
                                          Container(
                                            height: 33,
                                            width: 120,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF651A7E),
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(color: Color(0xFF651A7E))),
                                            child: TextButton(
                                                onPressed: () {
                                                  EnterAddName.text;
                                                 c2.update_account(c2.an_id[index],EnterAddName.text);
                                                 Navigator.pop(context);
                                                  c2.get_account().then((value) {
                                                    c2.temp.value=true;
                                                  },);
                                                },
                                                child: Text(
                                                  "UPDATE",
                                                  style: TextStyle(color: Colors.white),
                                                )),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Color(0xFF651A7E),
                                ))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(margin: EdgeInsets.only(left: 20,right: 20,bottom: 5),
                              decoration: BoxDecoration( color: Colors.grey,borderRadius: BorderRadius.circular(7)),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                Text("Credit",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("Rs.${c2.credit.value[index]}",style: TextStyle(color: Colors.black,fontSize: 15),)
                              ]),
                            )),
                        Expanded(
                            child: Container(margin: EdgeInsets.only(left: 20,right: 20,bottom: 5),
                              decoration: BoxDecoration(color: Colors.redAccent,borderRadius: BorderRadius.circular(7)),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                Text("Debit",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                                Text("Rs.${c2.debit.value[index]}",style: TextStyle(color: Colors.black,fontSize: 15),)
                              ]),
                            )),
                        Expanded(
                            child: Container(margin: EdgeInsets.only(left: 20,right: 20,bottom: 5),
                              decoration: BoxDecoration(color: Color(0xFF651A7E),borderRadius: BorderRadius.circular(7)),
                              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                                Text("Balance",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                                Text("Rs.${c2.balance.value[index]}",style: TextStyle(color: Colors.white,fontSize: 15),)
                              ]),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ));
      },):Center(child: CircularProgressIndicator())),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffe04134),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: double.infinity,
                    color: Color(0xFF651A7E),
                    child: Text(
                      "Add New Account",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  content: Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: TextField(controller: EnterAddName,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(labelText: "Account name",labelStyle: TextStyle(color: Colors.redAccent),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red))),
                      )),
                  actions: [
                    Container(
                      height: 33,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xFF651A7E))),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "CANCEL",
                            style: TextStyle(color: Color(0xFF651A7E)),
                          )),
                    ),
                    Container(
                      height: 33,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color(0xFF651A7E),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Color(0xFF651A7E))),
                      child: TextButton(
                          onPressed: () {
                            c2.add(EnterAddName.text);
                            EnterAddName.text="";
                            Navigator.pop(context);
                            c2.get_account().then((value) {
                              c2.temp.value=true;
                            },);
                          },
                          child: Text(
                            "SAVE",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(
            Icons.add_box_outlined,
            color: Colors.white,
          )),
    );
  }
}
