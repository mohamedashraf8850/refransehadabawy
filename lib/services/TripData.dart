import 'package:refransehadabawy/files/exports.dart';

class TripData {
  var Initial_price,
      Final_price,
      distance,
      fromAddress,
      locationDrop,
      locationPick,
      locationSide,
      status,
      toAddress,
      uId,
      tripId,
      uPhone,
      uName,
      Request_timestamp,
      Accept_timestamp,
      Arrive_timestamp,
      Start_timestamp,
      End_timestamp;

  TripData(
      {this.Initial_price,
      this.Final_price,
      this.distance,
      this.fromAddress,
      this.locationDrop,
      this.locationPick,
      this.locationSide,
      this.status,
      this.toAddress,
      this.uId,
      this.tripId,
      this.uPhone,
      this.uName,
      this.Request_timestamp,
      this.Accept_timestamp,
      this.Arrive_timestamp,
      this.Start_timestamp,
      this.End_timestamp});

  TripData.fromSnapshot(DocumentSnapshot documentSnapshot) {
    this.tripId = documentSnapshot.id;
    this.uName = documentSnapshot.data()["uName"];
    this.Initial_price = documentSnapshot.data()["price_Initial"];
    this.Final_price = documentSnapshot.data()["price_Final"];
    this.distance = documentSnapshot.data()["distance"];
    this.fromAddress = documentSnapshot.data()["fromAddress"];
    this.locationDrop = documentSnapshot.data()["locationDrop"];
    this.locationPick = documentSnapshot.data()["locationPick"];
    this.locationSide = documentSnapshot.data()["locationSide"];
    this.status = documentSnapshot.data()["status"];
    this.Request_timestamp = documentSnapshot.data()["time_Request"];
    this.Accept_timestamp = documentSnapshot.data()["time_Accept"];
    this.Arrive_timestamp = documentSnapshot.data()["time_Arrive"];
    this.Start_timestamp = documentSnapshot.data()["time_Start"];
    this.End_timestamp = documentSnapshot.data()["time_End"];
    this.toAddress = documentSnapshot.data()["toAddress"];
    this.uId = documentSnapshot.data()["uId"];
    this.uPhone = documentSnapshot.data()["uPhone"];
  }
}

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<TripData>> get trips {
    return _firestore
        .collection("Trips")
        .where("status", isEqualTo: "Pending")
        .snapshots()
        .map((event) => event.docs.map((DocumentSnapshot documentSnapshot) {
              return TripData(
                tripId: documentSnapshot.id,
                uName: documentSnapshot.data()["uName"],
                Initial_price: documentSnapshot.data()["price_Initial"],
                Final_price: documentSnapshot.data()["price_Final"],
                distance: documentSnapshot.data()["distance"],
                fromAddress: documentSnapshot.data()["fromAddress"],
                locationDrop: documentSnapshot.data()["locationDrop"],
                locationPick: documentSnapshot.data()["locationPick"],
                locationSide: documentSnapshot.data()["locationSide"],
                status: documentSnapshot.data()["status"],
                Request_timestamp: documentSnapshot.data()["time_Request"],
                Accept_timestamp: documentSnapshot.data()["time_Accept"],
                Arrive_timestamp: documentSnapshot.data()["time_Arrive"],
                Start_timestamp: documentSnapshot.data()["time_Start"],
                End_timestamp: documentSnapshot.data()["time_End"],
                toAddress: documentSnapshot.data()["toAddress"],
                uId: documentSnapshot.data()["uId"],
                uPhone: documentSnapshot.data()["uPhone"],
              );
            }).toList());
  }
}
