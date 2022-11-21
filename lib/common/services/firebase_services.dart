import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:entry/entry.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/cleanSnack.dart';
import '../extensions/extensions.dart';
import 'dart:io';

import '../../widgets/aCustom_widgets.dart';
import '../models/user/user_model.dart';

class FirebaseServices {
  static final db = FirebaseFirestore.instance;
  static final storage = FirebaseStorage.instance.ref();
  static const locationStorage =
      'https://firebasestorage.googleapis.com/v0/b/sayeret-people.appspot.com/o/';

  static Future updateData(Map<String, dynamic> jsonData,
      {required String doc, required String collection}) async {
    await db.collection(collection).doc(doc).set(jsonData, SetOptions(merge: true));
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> getData(String collection,
      {int? limit}) async {
    var snapshot = limit != null
        ? await db.collection(collection).limit(limit).get()
        : await db.collection(collection).get();
    return snapshot;
  }

  static Future<QuerySnapshot<Map<String, dynamic>>> getUserUpdatesData(
      UserModel user) async {
    var snapshot = await db
        .collection('updates')
        .limit(10)
        .where('to', arrayContains: user.type!.name)
        .get();
    return snapshot;
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> getDocData(
      String doc, String collection) async {
    var data = await db.collection(collection).doc(doc).get();
    return data;
  }

  static Future deleteDoc(String collection, String document) async {
    await db.collection(collection).doc(document).delete();
  }

  static Future<String> uploadFile(BuildContext context, String name, String path) async {
    var profileImageFile = File(path);
    var refFile = FirebaseServices.storage.child(name);
    await refFile
        .putFile(profileImageFile)
        .then((_) => cleanSnack(context, text: 'התמונה עודכנה בהצלחה', sec: 3))
        .catchError((e) => print('putFile Err: $e'));
    var imageUrl = await refFile.getDownloadURL();
    return imageUrl;
  }

  static Future deleteFile(String fileLink) async {
    print('START: deleteFile()');
    // print('fileLink $fileLink');
    var fileName = fileLink.replaceAll(FirebaseServices.locationStorage, '');
    fileName = fileName.split('?alt')[0].toString();
    fileName = Uri.decodeFull(fileName);
    var refFile = FirebaseServices.storage.child(fileName);
    await refFile.delete();
  }

  static Future<List<String>> get getLuzesImages async {
    print('START: getFiles()');
    List<String> imageLinks = [];
    final storageRef = FirebaseStorage.instance.ref().child("luzes/");
    final listResult = await storageRef.listAll();
    for (var item in listResult.items) {
      var url = await item.getDownloadURL();
      imageLinks.add(url);
    }
    imageLinks.sort();
    return imageLinks;
  }
}
