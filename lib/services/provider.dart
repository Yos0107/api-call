import 'package:api_testing/models/usermodel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

import 'apis/getApi.dart';

class Hamroprovider extends ChangeNotifier {
  List _antim = [];

  List get antim => _antim;

  antimData() async {
    _antim = await getUser();
    notifyListeners();
  }
}
// class Hamroprovider extends ChangeNotifier{

// }