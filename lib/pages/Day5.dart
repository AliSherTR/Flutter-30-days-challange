import 'package:flutter/material.dart';

class TikTokUI extends StatelessWidget {
  const TikTokUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tik Tok Ui"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 25,
            right: 10,
            left: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close),
                Icon(Icons.music_note),
                Column(
                  children: [
                    Icon(Icons.filter),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Flip"),
                    SizedBox(
                      height: 30,
                    ),
                    Icon(Icons.speed),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Speed"),
                    SizedBox(
                      height: 30,
                    ),

                    Icon(Icons.star),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Beautify"),
                    SizedBox(
                      height: 30,
                    ),
                    Icon(Icons.timer),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Timer"),
                    SizedBox(
                      height: 30,
                    ),
                    Icon(Icons.filter_3),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Filters"),
                    SizedBox(
                      height: 10,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blueAccent,
                ),

              ],
            ),
          )
        ],

      ),
    );
  }
}
