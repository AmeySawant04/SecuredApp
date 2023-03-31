import 'package:demo/Model/ChatModel.dart';
import 'package:demo/Screen/IndividualPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> IndividualPage(chatModel: chatModel,)));
      },
      child: Column(
          children: [
            ListTile(
            leading: CircleAvatar(
              radius: 28,
              child: SvgPicture.asset(
                "assets/groups.svg",
                color: Colors.white,
                height: 40,
                width: 40,),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(chatModel.name, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            subtitle:Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 2.5,
                ),
                Text(chatModel.currentMessage, style: TextStyle(
                  fontSize: 13,

                ),),
              ],
            ),

            trailing: Text(chatModel.time),
      ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 80),
              child: Divider(
                thickness: 1.25,
              ),
            )
          ],
        ),
    );
  }
}
