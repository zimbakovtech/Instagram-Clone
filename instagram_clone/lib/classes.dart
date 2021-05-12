class Feed {
  String username;
  String caption;
  String post;
  String profile;

  bool isLiked;
  bool isSaved;

  int likes;
  int comments;
  int posted;

  Feed({
    this.username,
    this.caption,
    this.post,
    this.profile,
    this.isLiked,
    this.isSaved,
    this.likes,
    this.comments,
    this.posted,
  });
}

class Story {
  String username;
  String profile;
  bool isPressed;

  Story({
    this.username,
    this.profile,
    this.isPressed,
  });
}

class Dms {
  String name;
  String profile;
  String status;
  String username;
  bool following;

  Dms({this.name, this.profile, this.status, this.username, this.following});
}
