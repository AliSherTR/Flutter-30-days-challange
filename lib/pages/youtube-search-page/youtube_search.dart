import 'package:flutter/material.dart';

class YoutubeSearch extends StatefulWidget {
  const YoutubeSearch({super.key});

  @override
  State<YoutubeSearch> createState() => _YoutubeSearchState();
}

class _YoutubeSearchState extends State<YoutubeSearch> {
  bool _searchBarOpen = false;
  int _currentIndex = 0;

  AppBar searchBox() {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          border: InputBorder.none,
        ),
      ),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          setState(() {
            _searchBarOpen = false;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _searchBarOpen
          ? searchBox()
          : AppBar(
              backgroundColor: Colors.red,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/youtube-logo.png",
                    height: 40,
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_searchBarOpen == false) {
                          _searchBarOpen = true;
                        }
                      });
                    },
                    child: Icon(
                      Icons.search,
                      size: 34,
                    ),
                  ),
                ],
              ),
            ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              // Add bottom margin to each card
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        child: Center(
                          child: Text("Thumbnail Here"),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      // Horizontal padding for title and subtitle
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          // Space above title
                          Text(
                            "Title Here",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 5),
                          // Space between title and subtitle
                          Text(
                            "Channel Name Here",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          // Space below subtitle
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.red,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: "Subscriptions"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
