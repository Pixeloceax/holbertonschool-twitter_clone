import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String bio;
  final String imgUrl;
  final bool isVerified;

  const UsersSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.bio,
    required this.imgUrl,
    required this.isVerified,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(imgUrl),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 5),
                    if (isVerified)
                      Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 16,
                      ),
                  ],
                ),
                Text(
                  bio,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  '$username',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
