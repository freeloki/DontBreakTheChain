// home page contains list of objectives

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Zinciri Kırma')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemCount: controller.objectives.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.objectives[index]),
                      subtitle: Text('Objective ${index + 1}'),
                      leading: const Icon(Icons.check),
                      onTap: () => {
                        Get.snackbar('Objective', 'Objective ${index + 1}'),
                        Get.toNamed('/objective')
                      },
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => controller.removeObjective(index),
                      ),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: controller.addObjective,
              child: const Text('Add Objective'),
            )
          ],
        ),
      ),
    );
  }
}
