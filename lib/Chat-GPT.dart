import 'package:chat/chats_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_9.dart';
import 'package:flutter_chatgpt_api/flutter_chatgpt_api.dart';

class ChatGPT extends StatefulWidget {
  const ChatGPT({Key? key}) : super(key: key);

  @override
  State<ChatGPT> createState() => _ChatGPTState();
}

class _ChatGPTState extends State<ChatGPT> {
  String? sessionToken = "eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIn0..IAdHuGr6LZoqFybw.E8eVDHqEqUG2Bavw0vAaoj6Aq9rGn6iDbY2DbvF7q9FUw4gy-4C1pbAR2A8gvxAB4zc5tNzbZSs5pOLo3HcWni1xZDTdiX63L9ILSNgPn4ddupyoRk0bK9qpd_0ktb5z4E01IL3ToQXmHs2nPVkfMx5yNHksCg8ENDUZFUl60Kqy9OeepYelpFJn3In4Tog9-Y3WtnjIdq63A6Ts9oEJIs1VMcs7mlxW2xa9gMRlkZCd6OFKJFkQrNIglMeCZ4L_4kg9rvPlxPxoa7NLtySkOONSRsQDWsJcqz4qVn3Kech7QvIK8ISxYyfhAZOgb55LOkPYyOahZIrV_VMm9LDFxl2cRcF3yfmauQIfm7ef2LMe-zWPsz_-WoVZGp-WNd-s4MtSLzXOUg7D3EnBROw5NJVdx3xwTGFssHnO0ILa6Fy2m7JlcHXuUzYDe8zNOznlm6V8VMA4VPs5TH54b9XCHiCg1j7aXth4IRDbr050p9K422aZ9hxYhII1qO5KJ13xUGCDcPoe870PYgzKjKKuvMM1vVtYZ5608rsfsWnMbAcYqoqYyjLikUO5EX4MWFiwqk-JHHiypXZP3gL97-eFdBinP32i5fIKV1p011Tp4uZm_uIe-Oh9ohItaa2O7Y_wxzVKDdRh4XGfXyrNq5gpbJkmPgwZVEIxH8Kz6QhItE_jYQJFt4m2ldquqOE9iEK--n-6o2rkDGtDk6U8FJ9uYmWtBXlVw6Ez3vcTNzusBqMgxoWG5giFbHY2f63bl_aFmXFALZLW_ghqtRUz2BXe50I4ZkIz4ezagANpGvTShTFiRApoJLaLH7JFn4-2qdtNNtXAwwiON2nhyZxY5oqd5bKVy2lUy7cfYeueqqbz0LKwAwq44m1h4-RIaloa4koBsA--7FzEXbD4-hHV2DqU3vCqNZQzjNqeqUOEpMYcdsp0nyUCIpAYOGBYQtcBUT4ABPFjMBZ732LyKRzxcTNtbskJMaWIanUgRQ6GXcEmp-1SnqnFlOyWXGRamib7CdGdMJK37MFw0hvmzUDqTopLJZ-JOGJqXnNXmzHuVISbr3yz68K6NJm9IdmwA_6fhs1rRz9lYeV4zPbGw-qoJSlTexlNK_JeYS_76DIk9QEom1Xh3wNzc3mt8X6Do3BJg8SsQb-o39Bei_ILHDUROg8lP6AgkAabozR8vJ42yvXy16S2DNQBpmehEgmymZtwIuqnqqG_YaF8IaNeJcgm7Es-nxU2q3MKm1xSGj9ARh7hOdaLk48ZcCh3mC_Y_t5QK2ZmDf65ACh88GTn8ydhpgyGdJQ3BeAbM1OTpHfXkT6WVEAkfsK_zYO5RTCvAtOW13ohbd8n6O7DmSUBmHmvR8X8Av2Pj5zlYBoenDHdKk1Ii3TUWvYicUwvRmPYkvoEcWdy01WEdQ5UCJyqeXO8g2iGtM3TBbhNg4PjDilpjio39HMmqsCObhS5rGYwLlHXbfIh0RvWxR8LDzD0UIN2hMojxeGV_nUaxq06FVPaT2JleFCPk9k4_Qu-lOVcSx6CphFNhXq60nwMAfcNTfurNu9_SplBKcoOQvNFlKZzVQHK2apeergpdP6zJN3IixnCGp-LjuiiNVcy9XM1OnxAiEEJ4E5FIekjO2CJA-4rgWKws_S5BaE1HZ_L7tmRrrFERqvmcJWBUHf8OBf6yyZaDpsVg3xlmhRlyuOjUxZafdmiKY8w60WWEqaTYRyMdxJAKrJ3HXxyWm1q3kq4nlHl1BdXo9m9F-yeEf6fO7g4rTxTULNKGA3Akcq39F-ammTmomSv7PBRjFWlG0YOIIPoskpOSUbc8RJ2orbs6ozAtjTf1vHvTnd-Rm030TelYglR-px0T416EjoXv9q-musD1JKRxP35NjNtLsFNQb8BhnVuztdccPDXTU-i_9IMFnMFzD96H7zMc5XBBxZxc4LP4uMdxGelaiu0NYUtVlRoXKcYYqmmUV6ycTqhET_tVjP4cA4YxMnkmgguoqWEkuV1_YP6WB-EuOWSX7pnRulcXwlALlQTJKwAqDhAGBD_jRsHRrEBPSHmsmiacD2FLPb8u9_LgYB_s_JIs0kXzfTXS3q3b6IyTDPBfo0_A4QJrHeduZ85XQ0efJ0f9pcv8UwiaXQG31oXr3b-RU7QYwF3GFVSIuV8fyVXvrd_8IRd_WXbHIzsiRYxXvoUF_QSaP8jeRW78qZZutUeHZprTLVNevKeoArS0Qj1YmakydeEkPax4oiQAAxO8ETMmnSgz-fx3YThldzf3aLenoWIllkx4h4kwVej7ajQ_QLy9Mx95cVyCJY.zVetKZIlfKTiMClm5Wv0Fg";
  String? clearanceToken = "H3iUmCp45SHHH9I9BZx_9pZPa1eyPvad3wP1aRC3FEs-1672308556-0-1-c40056d1.ea1e2d1f.d5edca42-160";
  var _api;
  GPTAPI(){
  _api  = ChatGPTApi(sessionToken: sessionToken.toString(), clearanceToken: clearanceToken.toString());
  }

  final chatController = TextEditingController();
  List chatsData = [
  {
    "id": 1,
    "message": "Hello"
  },
    {
      "id": 2,
    "message": "yo"
  },
    {
      "id": 1,
    "message": "Testing"
  },
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title:const Text("Chat-GPT"),centerTitle: true,backgroundColor: Color(0xFF2C373E),elevation: 10,),
        body: Container(
          padding:const EdgeInsets.symmetric(horizontal: 14,vertical: 8),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: chatsData.length,
                itemBuilder: (context, index) {
                  return chatsData[index]['id'] == 1 ? Align(
                    alignment: Alignment.topRight,
                    child: getSenderView(
                      text: chatsData[index]["message"],
                      context: context,
                      clipper: ChatBubbleClipper9(type: BubbleType.sendBubble,)
                    ),
                  )
                  :
                  getReceiverView(
                      text: chatsData[index]["message"],
                      context: context,
                      clipper: ChatBubbleClipper9(type: BubbleType.receiverBubble,)
                  );
                },
                separatorBuilder: (context, index) =>const SizedBox(),
              ),

              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
padding: EdgeInsets.symmetric(horizontal: 15 ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(30),
                        color: Color(0xFF2C373E)
                      ),
                      child: TextFormField(
                        controller: chatController,
                        minLines: 1,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white
                        ),
                        cursorColor:  Color(0xFF005D4B),
                        decoration: InputDecoration(

                          border: InputBorder.none,
                          errorBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    onTap: () {
                      chatController.clear();
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF00A884),
                      ),
                        child: Icon(Icons.send,color: Colors.white,)),
                  )
                ],
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
