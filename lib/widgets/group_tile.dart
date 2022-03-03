import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class GroupTile extends StatelessWidget {

  final iconUrl;
  final title;
  final text;
  final time;
  final unread;

  GroupTile({this.iconUrl, this.title, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread ? subtitleTextStyle : subtitleTextStyle.copyWith(color: blackColor),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
