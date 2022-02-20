import 'package:flutter/material.dart';
import 'package:flutter_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String time;
  final bool read;

  ChatTile(
      {this.image = '',
      this.name = '',
      this.message = '',
      this.time = '',
      this.read = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: title,
              ),
              Text(
                message,
                style: read == true ? subTitle : subTitleUnread,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subTitle,
          ),
        ],
      ),
    );
  }
}
