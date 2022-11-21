import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../pages/main/dashboard_page.dart';
import '../extensions/context_extensions.dart';
import '../extensions/extensions.dart';
import '../models/user/user_model.dart';
import 'firebase_services.dart';


class AuthService {
  static final auth = FirebaseAuth.instance;

  /// Google LOGIN
  static Future signInWithGoogle(BuildContext context) async {
    print('START: signInWithGoogle()');
    await auth.signOut();
    await GoogleSignIn().signOut();
    final googleUser = await GoogleSignIn().signIn();

    // Sign in & Create user on firebase console
    final googleAuth = await googleUser!.authentication;
    await auth.signInWithCredential(
        GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken));

    var authUser = auth.currentUser;
    var user = context.uniProvider.currUser.copyWith(
      accessLevel: AccessLevel.restricted,
      uid: authUser?.uid,
      email: authUser?.email,
      name: authUser?.displayName,
      photoUrl: authUser?.photoURL,
    );

    var doc = await FirebaseServices.getDocData(authUser!.uid, 'users');
    if (doc.exists && doc.data() != null) {
      user = UserModel.fromJson(doc.data()!);
    } else {
       FirebaseServices.updateData(user.toJson(), doc: authUser.uid, collection: 'users');
    }
    context.uniProvider.updateUser(user);

    // var accessLevel = context.uniProvider.currUser.accessLevel;
    // print('accessLevel $accessLevel'); // null - Approved - Admin
    // HomePage().pushReplacement(context);

    DashboardPage().pushReplacement(context);
  }
}
