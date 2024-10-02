import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false; // Default to not searching

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear(); // Clear search when stopped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              surfaceTintColor: Colors.green,
              floating: false,
              pinned: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                title: true
                    ? Container(
                        margin: const EdgeInsets.only(left: 30),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: const TextStyle(color: Colors.white70),
                            filled: true,
                            fillColor: Colors.pink,
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Set border radius here
                              borderSide:
                                  BorderSide.none, // Remove the border line
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Set border radius here for focused state
                              borderSide:
                                  BorderSide.none, // Remove the border line
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  30.0), // Set border radius here for enabled state
                              borderSide:
                                  BorderSide.none, // Remove the border line
                            ),
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                      )

                    // ? Container(
                    //     width: double.infinity,
                    //     height: 50,
                    //     margin: const EdgeInsets.only(left: 25, bottom: 5),
                    //     decoration: BoxDecoration(
                    //         color: Colors.pink,
                    //         borderRadius: BorderRadius.circular(30)),
                    //   child: Row(
                    //     children: [
                    //       Expanded(

                    //         child: TextField(

                    //           controller: _searchController,
                    //           decoration: const InputDecoration(
                    //             hintText: 'Search...',
                    //             hintStyle: TextStyle(color: Colors.white70),
                    //             border: InputBorder.none,
                    //             filled: true,
                    //             fillColor: Colors.pink,
                    //             prefixIcon: Icon(Icons.search),
                    //           ),
                    //           style: const TextStyle(color: Colors.black),
                    //         ),
                    //       ),
                    //       IconButton(
                    //         icon: const Icon(Icons.clear),
                    //         onPressed: _stopSearch,
                    //       ),
                    //     ],
                    //   ),
                    // )
                    : const Text(
                        'AppBar Title',
                        style: TextStyle(color: Colors.white),
                      ),

                // background: ,
                centerTitle: true,
              ),
              actions: [
                IconButton(
                  icon: Icon(_isSearching ? Icons.clear : Icons.search),
                  onPressed: () {
                    if (_isSearching) {
                      _stopSearch();
                    } else {
                      _startSearch();
                    }
                  },
                ),
              ],
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}
