import 'package:refransehadabawy/files/exports.dart';

class UserData {
  final String uid;

  UserData({this.uid});
}

class UData {
  String uId, type, status, phone, name, mail, image;

  UData({
    this.uId,
    this.mail,
    this.type,
    this.status,
    this.phone,
    this.image,
    this.name,
  });

  UData.fromSnapshot(DocumentSnapshot snapshot) {
    this.uId = snapshot.data()["uId"];
    this.type = snapshot.data()["type"];
    this.mail = snapshot.data()["mail"];
    this.image = snapshot.data()['image'];
    this.status = snapshot.data()["status"];
    this.phone = snapshot.data()["phone"];
    this.name = snapshot.data()["name"];
  }
}
