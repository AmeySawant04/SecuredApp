import 'package:demo/CustomUI/CustomCard.dart';
import 'package:demo/Model/ChatModel.dart';
import 'package:flutter/material.dart';
class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel>chats = [
    ChatModel(name: "Rocket", icon: "groups.svg", isGroup: true, time: "6:00", currentMessage: "This is Krupa Gurav"),
    ChatModel(name: "Gaymey", icon: "groups.svg", isGroup: true, time: "6:30", currentMessage: "Team Rocket's Leader and Feminist ")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index)=>CustomCard(
            chatModel: chats[index]
        ),
      ),
    );
  }
}

