
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/uni_provider.dart';
import '../models/user/user_model.dart';

extension ContextX on BuildContext {
  // Smart navigation shortcuts (Based auto_route)
  //> context.router.replace(route) //   pushReplacement
  //> context.router.push(route)   //   push

  // My Models
  UniProvider get uniProvider => Provider.of<UniProvider>(this, listen: false);

  UniProvider get listenUniProvider => Provider.of<UniProvider>(this);


  //width & height
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  //paddings
  EdgeInsets get padding => MediaQuery.of(this).padding;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  void removeFocus() {
    if (FocusScope.of(this).hasFocus || FocusScope.of(this).hasPrimaryFocus) {
      FocusScope.of(this).unfocus();
    }
  }

  void showSnackbar({
    required String message,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
          ),
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(seconds: 3),
        ),
      );
  }
}
