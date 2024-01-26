class User {
  final int id;
  final String name;
  final String username;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        username: json['username'],
        email: json['email']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "User(name:${name}, email: ${email}";
  }
}

//=============================================================

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
  Map<String, dynamic> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
    };
  }
}

//=============================================================

class Album {
  //final int userId;
  final int id;
  final String title;

  Album({
    //required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      // userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      // 'userId': userId,
      'id': id,
      'title': title,
    };
  }
}
