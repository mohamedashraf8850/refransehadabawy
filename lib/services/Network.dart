import 'package:refransehadabawy/files/exports.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  UserData _userFromUser(User user) {
    return user != null ? UserData(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<UserData> get user {
    return _auth
        .authStateChanges()
        //.map((User user) => _userFromUser(user));
        .map(_userFromUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword({String email, String password}) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(
      {String email,
      String password,
      String name,
      String phone,
      String type}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      // create a new document for the user with the uid
      await DatabaseService(uid: user.uid).saveUserData(
          mail: email,
          password: password,
          name: name,
          phone: phone,
          type: type);
      return _userFromUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> saveUserData(
      {String name,
      String type,
      String phone,
      String mail,
      String status,
      String password}) async {
    return await usersCollection.doc(uid).set({
      'name': name,
      'uId': uid,
      'type': type,
      'phone': phone,
      'mail': mail,
      'status': 'online',
      'password': password
    });
  }
  //
  // // brew list from snapshot
  // List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot) {
  //   return snapshot.docs.map((doc) {
  //     //print(doc.data);
  //     return Brew(
  //         name: doc.data()['name'] ?? '',
  //         strength: doc.data()['strength'] ?? 0,
  //         sugars: doc.data()['sugars'] ?? '0');
  //   }).toList();
  // }

  // get brews stream
  // Stream<List<Brew>> get users {
  //   return usersCollection.snapshots().map(_brewListFromSnapshot);
  // }
}
