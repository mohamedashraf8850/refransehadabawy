import 'exports.dart';

final picker = ImagePicker();

Future pickImage(File _imageFile) async {
  final pickedFile = await picker.getImage(source: ImageSource.gallery);

  _imageFile = File(pickedFile.path);
}

Future uploadImageToFirebase(BuildContext context, File _imageFile) async {
  String fileName = basename(_imageFile.path);
  StorageReference firebaseStorageRef =
      FirebaseStorage.instance.ref().child('uploads/$fileName');
  StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
  StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  taskSnapshot.ref.getDownloadURL().then(
        (value) => print("Done: $value"),
      );
}
