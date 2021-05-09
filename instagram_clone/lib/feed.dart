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
