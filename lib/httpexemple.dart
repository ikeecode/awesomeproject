import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpExemple extends StatefulWidget {
  const HttpExemple({super.key});

  @override
  State<HttpExemple> createState() => _HttpExemple();
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int getUserId() {
    return userId;
  }

  int getId() {
    return id;
  }

  String getTitle() {
    return title;
  }

  String getBody() {
    return body;
  }

  factory Post.toJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': getUserId(),
      'id': getId(),
      'title': getTitle(),
      'body': getBody(),
    };
  }
}

class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });

  String getName() {
    return name;
  }

  String getEmail() {
    return email;
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'], email: json['email']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': getName(),
      'email': getEmail(),
    };
  }
}

class _HttpExemple extends State<HttpExemple> {
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

  @override
  void initState() {
    // TODO: implement initState
    getPhotos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.95),
        title: const Text(
          "Network Calls",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
      body: Container(
        child: Card(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {},
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: "Create", // post
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.get_app),
            label: "Read", // get
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: "Update", // put
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete),
            label: "delete", // delete
          ),
        ],
      ),
    );
  }
}

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        thumbnailUrl: json["thumbnailUrl"]);
  }
}
