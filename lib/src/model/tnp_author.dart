part of thenounproject;

/**
      "location": "Los Angeles, California, US",
      "name": "Iconathon",
      "permalink": "/Iconathon1",
      "username": "Iconathon1"
   */
class Author {
  String? location;
  String? name;
  String? permalink;
  String username;
  Author({
    this.location,
    this.name,
    this.permalink,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      'location': location ?? '',
      'name': name ?? '',
      'permalink': permalink ?? '',
      'username': username,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      location: map['location'],
      name: map['name'],
      permalink: map['permalink'],
      username: map['username'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) => Author.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Author &&
        other.location == location &&
        other.name == name &&
        other.permalink == permalink &&
        other.username == username;
  }

  @override
  int get hashCode {
    return location.hashCode ^
        name.hashCode ^
        permalink.hashCode ^
        username.hashCode;
  }
}
