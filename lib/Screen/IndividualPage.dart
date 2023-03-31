
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Model/ChatModel.dart';
class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key,required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back,
                size: 24
                ,),
              CircleAvatar(
                child: SvgPicture.asset(
                  "assets/groups.svg",
                  color: Colors.white,
                  height: 40,
                  width: 40,),
                radius: 20,
                backgroundColor: Colors.blueGrey,

              )
            ],
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.chatModel.name,style: TextStyle(
              fontSize: 18.5,
              fontWeight: FontWeight.bold,
            )
            ),
            Text("last seen today at 12:05",style: TextStyle(
              fontSize: 13,
            ) ,)
            ],

        ),
      ) ,
    );
  }
}



