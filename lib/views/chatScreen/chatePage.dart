import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../models/apiData/chatModel.dart';
import 'package:intl/intl.dart';
import 'package:regexed_validator/regexed_validator.dart';

String Uid = '1';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List<Message> message=[
    Message(
      text:'Hello',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'1',
    ),
    Message(
      text:'hi',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'2',
    ),
    Message(
      text:'Hello',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'1',
    ),
    Message(
      text:'Hello',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'2',
    ),
    Message(
      text:'Hello',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'1',
    ),
    Message(
      text:'https://www.google.com/url?q=http://www.myntra.com/Dress-Material/Ethnic-Yard/Ethnic-Yard-Women-Blue--Gold-Toned-Embroidered-Semi-Stitched-Dress-Material/19462198/buy&sa=U&ved=0ahUKEwitjsjP4Pb8AhXsTGwGHcoRBLwQwSsIDg&usg=AOvVaw32znlI6U8krpyeVAnYQXYi',
      date:DateTime.now().subtract(Duration(minutes: 1)),
      id:'2',
    ),
  ];

  bool extractLink(String text) {
  RegExp exp = RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+', caseSensitive: false);
  Iterable<Match> matches = exp.allMatches(text);
  return matches.length > 0 ? true : false;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SenderName'),
      ),
      body: Column(
        children: [
          Expanded(
            child:GroupedListView<Message, DateTime>(
              elements: message,
              groupBy: (message)=>DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupHeaderBuilder: (Message message)=>SizedBox(
                height: 40,
                child: Card(
                  color:Theme.of(context).primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                      style: const TextStyle(color: Colors.white),
                      ),
                  ), 
                ),
              ),
              itemBuilder: (context,Message message)=>Align(
                alignment: message.id==Uid?Alignment.centerRight:Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: extractLink( message.text ) ? Column(children: [Image.network('https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcS_8DWHcC3dV86V2aWwqGEHlMr1XzDzhCpIQhF9tk2GwN9jG8UP8QdqppTBy_dOTPSx3hkprp_MyAR7-1H_HsTqlRgdBUbXV6GARWApvrUp6omjMiHighhfxA&usqp=CAE',width: MediaQuery.of(context).size.width*0.5),Text('Women Blue & Gold-Toned\n Embroidered \nSemi-Stitched Dress Material',)],) : Text(message.text),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
              
            ),
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Message..'
              ),
            ),
          )
        ],
      ),
    );
  }
}