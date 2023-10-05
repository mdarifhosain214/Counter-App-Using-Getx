import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Controller controller =Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App with GetX"),
      ),
      body: Container(
        color: Colors.grey,
        height: Get.height,
        width: Get.width,
        child: Center(
          child:Obx(()=> Text(controller.count.value.toString(),style: Theme.of(context).textTheme.bodyLarge,)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.increase();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
