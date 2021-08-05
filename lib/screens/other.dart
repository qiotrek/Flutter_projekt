import 'package:flutter/material.dart';
import 'package:flutter_testowe/controllers/counterController.dart';
import 'package:get/get.dart';

class OtherScreen extends StatelessWidget {
  
final CounterController _counterController=Get.find();
final CounterController counterController=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Center(child: Text("Ekran został naciśnięty ${_counterController.counter.value} razy")),
   SizedBox(height: 10),

      FloatingActionButton(onPressed: (){
       Get.back();
      
       
        }, child: Text("Wróć")
        ),
        FloatingActionButton(onPressed:(){counterController.zero();
       
      
       
        }, child: Text("Zerój")
        )
        ],
      ))
        
      
      
    );
  }
}