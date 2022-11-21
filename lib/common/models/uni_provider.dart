import 'package:flutter/foundation.dart';
import '../models/user/user_model.dart';
import 'contact_model.dart';


class UniProvider with ChangeNotifier {
  UserModel currUser = const UserModel();
  // List<ContactModel>? originalContacts;

  void updateUser(UserModel data) {
    currUser = data;
    notifyListeners();
    // return data;
  }

  // void updateOriginalContacts(List<ContactModel> data) {
  //   originalContacts = data;
  //   notifyListeners();
  //   // return data;
  // }
}

