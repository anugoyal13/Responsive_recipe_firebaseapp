// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class hometext extends StatefulWidget {
//   @override
//   _hometextState createState() => _hometextState();
// }
//
// class _hometextState extends State<hometext> {
//   bool isUploaded=false;
//   @override
//   void initState(){
//     super.initState();
//     upload();
//
//   }
//   Future upload() async{
//   //initialize firebase
//     await Firebase.initializeApp();
//
//   //upload documents to firestore
//     final refuser=FirebaseFirestore.instance.collection('user').doc();
//     await refuser.set({'username':'AnuG'});
//   //upload file to firebase storage
//     final response=await http.get(('https://image.freepik.com/free-photo/top-view-delicious-fried-chicken-with-seasonings-vegetables-dark-space_140725-75663.jpg'));
//     final imageBytes=response.bodyBytes;
//
//      final refImage = FirebaseStorage().ref().child('images/example.jpg');
//      final uploadTask=refImage.putData(imageBytes);
//      await uploadTask.onComplete;
//      setState(() {
//        isUploaded =true;
//      });
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text(isUploaded?"uploaded" : "uploading..."))
//     );
//   }
// }
