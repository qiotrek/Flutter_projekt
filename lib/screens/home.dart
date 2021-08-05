import 'dart:developer';

import 'package:flutter_testowe/controllers/counterController.dart';
import 'package:flutter_testowe/screens/other.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  final CounterController counterController=Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Kliknięcia: ${counterController.counter.value}")),
          SizedBox(
            height:10
          ),
          ElevatedButton(onPressed: (){
Get.to(OtherScreen());
          }, child: Text("Otwórz inną stronę")
         )
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){counterController.inckrement();},
      child: Icon(Icons.add),
    ),
    );
  }
}