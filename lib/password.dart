import 'package:account_manager/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
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
        child: ScreenLock(correctString: c1.pass2.value,onValidate: (input) async {
            if(input==c1.pass2.value)
              {
                return await Future.value(true);
              }
            else
              {
                return await Future.value(false);
              }
        }, onUnlocked: () {
          print("hello");
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return deshboard();
          },));
        },),),

    );
  }
}
