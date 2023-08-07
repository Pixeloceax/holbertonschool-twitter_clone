import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  final String name;
  final String username;
  final String imgUrl;
  final bool isVerified;
  final String content;

  PostWidget({
    required this.name,
    required this.username,
    required this.imgUrl,
    required this.isVerified,
    required this.content,
  });

  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(widget.imgUrl),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 4),
                      widget.isVerified
                          ? Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 16,
                            )
                          : SizedBox.shrink(),
                      SizedBox(width: 8),
                      Text(
                        widget.username,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        ' - 1h',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                widget.content,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
              Text('0'),
              SizedBox(width: 8),
              IconButton(icon: Icon(Icons.repeat), onPressed: () {}),
              Text('0'),
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: () {},
              ),
              Text('2'),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
