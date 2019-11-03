import 'package:flutter/material.dart';

class User{
  
  String id;
  String email;
  String password;
  String phoneNumber;
  String imageUrl;
  User({this.id,@required this.email,@required this.password,this.imageUrl,this.phoneNumber});
}