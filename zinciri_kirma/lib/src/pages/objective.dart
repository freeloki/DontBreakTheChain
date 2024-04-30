// detailed objective view containing the objective details and the objective's tasks and progress

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Objective extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Objective')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Objective 1'),
              const SizedBox(height: 16.0),
              // create custom widget dynamically add chained boxes
              // to represent progress.
              Container(
                height: 200.0,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        const SizedBox(width: 16.0),
                        Container(
                          width: 100.0,
                          height: 100.0,
                          color: Colors.green,
                          child: Center(child: Text('Progress ${index + 1}')),
                        ),
                      ],
                    );
                  },
                ),
              ),

              // align the button to bottom.
              const Spacer(),
              ElevatedButton(onPressed: () => {}, child: Text('Add Progress')),
              ElevatedButton(
                onPressed: () => Get.toNamed('/home'),
                child: const Text('View Tasks'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
