import 'package:flutter/material.dart';

class ContactBloc extends ChangeNotifier {
  bool _invite1 = true;
  get invite1 => _invite1;

  bool _invite2 = false;
  get invite2 => _invite2;

  bool _invite3 = false;
  get invite3 => _invite3;

  bool _invite4 = true;
  get invite4 => _invite4;

  changeInvite1() {
    _invite1 = !_invite1;
    notifyListeners();
  }

  changeInvite2() {
    _invite2 = !_invite2;
    notifyListeners();
  }

  changeInvite3() {
    _invite3 = !_invite3;
    notifyListeners();
  }

  changeInvite4() {
    _invite4 = !_invite4;
    notifyListeners();
  }

  bool _receipt1 = false;
  get receipt1 => _receipt1;

  bool _receipt2 = true;
  get receipt2 => _receipt2;

  bool _receipt3 = false;
  get receipt3 => _receipt3;

  bool _receipt4 = false;
  get receipt4 => _receipt4;

  changereceipt1() {
    _receipt1 = !_receipt1;
    notifyListeners();
  }

  changereceipt2() {
    _receipt2 = !_receipt2;
    notifyListeners();
  }

  changereceipt3() {
    _receipt3 = !_receipt3;
    notifyListeners();
  }

  changereceipt4() {
    _receipt4 = !_receipt4;
    notifyListeners();
  }

  bool _option1 = false;
  get option1 => _option1;

  bool _option2 = false;
  get option2 => _option2;

  bool _option3 = false;
  get option3 => _option3;

  bool _option4 = false;
  get option4 => _option4;

  changeOption1() {
    _option1 = !_option1;
    notifyListeners();
  }

  changeOption2() {
    _option2 = !_option2;
    notifyListeners();
  }

  changeOption3() {
    _option3 = !_option3;
    notifyListeners();
  }

  changeOption4() {
    _option4 = !_option4;
    notifyListeners();
  }
}
