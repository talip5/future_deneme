import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class future1 {

  void getData1() async {
    Future<QuerySnapshot> querySnapshot = FirebaseFirestore.instance.collection(
        'data').get();
    await querySnapshot.then((value1) {
      //print(value1.size);
      //print(value1.docs.length);
      print(value1.docs.first.get('name'));
      //print(value1.docs.first.reference.path);

    });
  }

  void getData2() async {
    Future<QuerySnapshot> querySnapshot = FirebaseFirestore.instance.collection(
        'data').get();
    querySnapshot.then((value){
      print(value.docs.length);
    });
  }
  void addData(){
    FirebaseFirestore.instance.collection('data').doc().set({'name':'a1'});
  }
  void addData1(){
    FirebaseFirestore.instance.collection('data').doc('1').set(task);
  }

    void addData2(Map<String,dynamic> task){
    FirebaseFirestore.instance.collection('data').doc().set(task);
  }

  void deleteData(String id) async{
    print('delete');
    /*await FirebaseFirestore.instance.collection('data1').doc(id).delete().catchError((e){
      print(e);
      print('xxxxx');
    });*/
    await FirebaseFirestore.instance.collection('data').doc(id).delete();
  }
  var task=<String,dynamic>{
    'name':'update35'
  };
  }