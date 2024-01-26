import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'jsonplaceholderclasses.dart';

/// Flutter code sample for [NavigationBar].

class NetworkCalls extends StatefulWidget {
  const NetworkCalls({super.key});

  @override
  State<NetworkCalls> createState() => _NetworkCallsState();
}

class _NetworkCallsState extends State<NetworkCalls> {
  int currentPageIndex = 0;

  List<Photo> photos = [];

  void getPhotos() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    final data = convert.jsonDecode(response.body) as List<dynamic>;

    for (var element in data) {
      photos.add(Photo.fromJson(element));
      break;
    }

    setState(() {});
  }

  Future getUser() async {
    var response =
        //await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
        await http.get(Uri.https("jsonplaceholder.typicode.com", "/users"));

    var jsonData = convert.jsonDecode(response.body);

    List<User> users = [];

    for (dynamic juser in jsonData) {
      User user = User.fromJson(juser);
      users.add(user);
    }

    print(users.length);
    return users;
  }

  Future<void> getUserById(userId) async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users/${userId}"));
    //await http.get(Uri.https("jsonplaceholder.typicode.com", "/users/${userId}"));

    if (response.statusCode == 200) {
      var jsonData = convert.jsonDecode(response.body);

      User user = User.fromJson(jsonData);
      print("===================User is =========================");
      print(user.toString());

      //return user;
    } else {
      print("===================User is =========================");
      print("RESPONSE CODE IS ${response.statusCode}");
    }
  }

  Future<void> postAlbum(String title) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: convert.jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 201) {
      print("==============================================================");
      print("Your Album ${title} is CREATED SUCCESFULLY");
      print("Your Album ${title} is CREATED SUCCESFULLY");
      print("Your Album ${title}  is CREATED SUCCESFULLY");
      print("==============================================================");
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    TextEditingController input = TextEditingController();
    TextEditingController read = TextEditingController();

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.create),
            label: 'Create',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.read_more)),
            label: 'Read',
          ),
          NavigationDestination(
            icon: Icon(Icons.update),
            label: 'Update',
          ),
          NavigationDestination(
            icon: Icon(Icons.delete),
            label: 'Delete',
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            label: 'List Users',
          ),
        ],
      ),
      body: <Widget>[
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Form(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.album,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.white38),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          hintText: 'Put your album title here...',
                          hintStyle: const TextStyle(color: Colors.white60)),
                      controller: input,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      print(input.text);

                      postAlbum(input.text);
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Form(
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.white38),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(9.0),
                          ),
                          filled: true,
                          fillColor: Colors.grey,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          hintText: 'Put the userId here...',
                          hintStyle: const TextStyle(color: Colors.white60)),
                      keyboardType: TextInputType.number,
                      controller: read,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: FloatingActionButton(
                      onPressed: () async {
                        print(read.text);
                        await getUserById(read.text);
                      },
                      child: Text(
                        "Get User",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Update page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        /// Delete page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Delete page',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        Card(
          child: FutureBuilder(
            future: getUser(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const Center(
                  child: Text("Loading"),
                );
              } else {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email),
                    );
                  },
                  itemCount: snapshot.data.length,
                );
              }
            },
          ),
        ),
      ][currentPageIndex],
    );
  }
}
