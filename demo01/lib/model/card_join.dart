import 'package:flutter/cupertino.dart';

class CardJoinRoom {
  Name? name;
  Picture? picture;
  String? email;
  String? phone;
  
 
  CardJoinRoom({this.name, this.picture, this.email, this.phone});
 
  CardJoinRoom.fromJson(Map<String, dynamic> json)
      : this.name = new Name.fromJson(json['name']),
        this.picture = new Picture.fromJson(json['picture']),
        this.email = json['email'],
        this.phone = json['phone'];
}
 
class Name {
  String? last;
  String? first;
 
  Name({this.last, this.first});
 
  Name.fromJson(Map<String, dynamic> json)
      : this.last = json['last'],
        this.first = json['first'];
}
 
class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}


// class CardJoinRoom {
//   final String idRoom;
//   final int secondsRoom;
//   final int numberPlayer;
//   final String namePlayer;
//   final Color? colorRoom;
//   CardJoinRoom({
//     required this.idRoom,
//     required this.secondsRoom,
//     required this.numberPlayer,
//     required this.namePlayer,
//      this.colorRoom,
//   });
//   static List<CardJoinRoom> listCardJoinRoom = [
//     CardJoinRoom(
//         idRoom: 'MD12HF',
//         secondsRoom: 10,
//         numberPlayer: 2,
//         namePlayer: 'ngoc nhu',
//         ),
//     CardJoinRoom(
//         idRoom: 'MS33LN',
//         secondsRoom: 10,
//         numberPlayer: 4,
//         namePlayer: 'be ngoc'),
//     CardJoinRoom(
//         idRoom: 'HT56GH',
//         secondsRoom: 10,
//         numberPlayer: 4,
//         namePlayer: 'phuong nguyen'),
//     CardJoinRoom(
//         idRoom: 'JK96PL',
//         secondsRoom: 10,
//         numberPlayer: 4,
//         namePlayer: 'nguyen phuong'),
//   ];
// }
