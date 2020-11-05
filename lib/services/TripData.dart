import 'package:refransehadabawy/files/exports.dart';

class TripData {
  var Price,
      distance,
      fromAddress,
      locationDrop,
      locationPick,
      locationSide,
      status,
      timestamp,
      toAddress,
      uId,
      uPhone,
      uName;

  TripData(
      {this.Price,
      this.distance,
      this.fromAddress,
      this.locationDrop,
      this.locationPick,
      this.locationSide,
      this.status,
      this.timestamp,
      this.toAddress,
      this.uId,
      this.uName,
      this.uPhone});
}

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<TripData>> get trips {
    return _firestore
        .collection("Trips")
        .where("status", isEqualTo: "Pendding")
        .snapshots()
        .map((event) => event.docs.map((DocumentSnapshot documentSnapshot) {
              return TripData(
                uName: documentSnapshot.data()["uName"],
                Price: documentSnapshot.data()["Price"],
                distance: documentSnapshot.data()["distance"],
                fromAddress: documentSnapshot.data()["fromAddress"],
                locationDrop: documentSnapshot.data()["locationDrop"],
                locationPick: documentSnapshot.data()["locationPick"],
                locationSide: documentSnapshot.data()["locationSide"],
                status: documentSnapshot.data()["status"],
                timestamp: documentSnapshot.data()["timestamp"],
                toAddress: documentSnapshot.data()["toAddress"],
                uId: documentSnapshot.data()["uId"],
                uPhone: documentSnapshot.data()["uPhone"],
              );
            }).toList());
  }
}
