// homepage controller

import 'package:get/get.dart';

class HomePageController extends GetxController {
  final objectives = <String>[].obs;

  void addObjective() {
    objectives.add('Objective ${objectives.length + 1}');
  }

  void removeObjective(int index) {
    objectives.removeAt(index);
  }
}
