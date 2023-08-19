import 'package:flutter/widgets.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligiblityMessage;
  void checkEligiblity(int age) {
    if (age >= 18) {
      isEligible = true;
      eligiblityMessage = "You Are Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligiblityMessage = "You Are Not Eligible";
      notifyListeners();
    }
  }
}
