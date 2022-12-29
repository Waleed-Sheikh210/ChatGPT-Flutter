import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

Widget getSenderView(
        {CustomClipper? clipper, BuildContext? context, String? text}) => ChatBubble(

  elevation:0,
  clipper: clipper,
  alignment: Alignment.topRight,
  margin:const EdgeInsets.only(top: 20),
  backGroundColor: Color(0xFF005D4B),
  child: Container(
    padding:const EdgeInsets.symmetric(horizontal: 4),
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context!).size.width * 0.7,
    ),
    child: Text(
      text.toString(),
      style:const TextStyle(color: Colors.white,fontSize: 16,),
      textAlign: TextAlign.right,
    ),
  ),
);

Widget getReceiverView(
    {CustomClipper? clipper, BuildContext? context, String? text}) => ChatBubble(
  clipper: clipper,
  elevation:0,

  alignment: Alignment.topLeft,

  backGroundColor:Color(0xFF212E36),
  margin:const EdgeInsets.only(top: 20),
  child: Container(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context!).size.width * 0.7,
    ),
    child: Text(
      text.toString() ,
      style: TextStyle(color: Colors.white,fontSize: 16,),
    ),
  ),
);