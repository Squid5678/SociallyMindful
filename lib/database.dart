import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService {

  final String uid;
  DatabaseService({  this.uid });

  //collection reference
  final CollectionReference personDetails = FirebaseFirestore.instance.collection("auth_details");
  Future registerUserData(String name, String email, String password, String age, String discordTag, String zipCode) async {
    return await personDetails.doc(uid).set({
      "name": name,
      "email": email, 
      "password": password,
      "age": age,
      "discordTag": discordTag,
      "zipCode": zipCode, 
    });
  }
}

/*class DatabaseMethods {
  Future<void> addUserInfo(userData) async {
    FirebaseFirestore.instance.collection("auth_details").add(userData).catchError((e) {
      print(e.toString());
    });
  }
}*/