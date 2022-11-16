import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:slider/modal.dart';

class first extends StatelessWidget {

  modal m= Get.put(modal());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider ")),
      body: Column(children: [
        Obx(() => Slider(onChanged:(value) {
          m.change(value);
        },min: 1,
          max: 10,
          value: m.v.value,),),
        Obx(() => Text("Value :-${m.v}"))
      ]),
    );
  }
}
