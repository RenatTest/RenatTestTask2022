import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class AvatarEdit extends StatefulWidget {
  @override
  _AvatarEditState createState() => _AvatarEditState();
}

class _AvatarEditState extends State<AvatarEdit> {
  final user = FirebaseAuth.instance.currentUser;
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  void takePhoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 39),
      child: GestureDetector(
        onTap: () {
          print('Change user photo');
          showModalBottomSheet(
            context: context,
            builder: ((builder) => bottomSheet()),
          );
        },
        child: CircleAvatar(
          radius: 45,
          backgroundColor: HexColor('#127E00'),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: _imageFile == null
                ? NetworkImage(user.photoURL)
                : FileImage(File(_imageFile.path)),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      alignment: Alignment.center,
      color: HexColor('#127E00'),
      height: 90.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 18.0,
              color: HexColor('#FFFFFF'),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            // ignore: deprecated_member_use
            FlatButton.icon(
              icon: Icon(
                Icons.camera,
                color: HexColor('#FFFFFF'),
              ),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text(
                "Camera",
                style: TextStyle(
                  fontSize: 15.0,
                  color: HexColor('#FFFFFF'),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // ignore: deprecated_member_use
            FlatButton.icon(
              icon: Icon(
                Icons.image,
                color: HexColor('#FFFFFF'),
              ),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text(
                "Gallery",
                style: TextStyle(
                  fontSize: 15.0,
                  color: HexColor('#FFFFFF'),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
