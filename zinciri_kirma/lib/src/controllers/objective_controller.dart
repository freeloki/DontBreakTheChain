import 'package:get/get.dart';

class ObjectiveController extends GetxController {
  final objectives = <String>[].obs;

  void addState() {
    objectives.add('Objective ${objectives.length + 1}');
  }

  void removeState(int index) {
    objectives.removeAt(index);
  }
}
