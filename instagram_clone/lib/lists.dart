import 'classes.dart';

List<Story> profiles = [
  Story(username: 'Your Story', profile: 'dm.jpg', isPressed: false),
  Story(username: 'zendaya', profile: 'zendaya.jpg', isPressed: false),
  Story(username: 'kyrieirving', profile: 'kyrie.jpg', isPressed: false),
  Story(username: 'travisscott', profile: 'travis.jpg', isPressed: false),
  Story(username: 'therock', profile: 'therock.jpeg', isPressed: false),
  Story(username: 'kyliejenner', profile: 'kylie.jpg', isPressed: false),
  Story(username: 'zendaya', profile: 'zendaya.jpg', isPressed: false),
  Story(username: 'kyrieirving', profile: 'kyrie.jpg', isPressed: false),
  Story(username: 'travisscott', profile: 'travis.jpg', isPressed: false),
  Story(username: 'therock', profile: 'therock.jpeg', isPressed: false),
  Story(username: 'kyliejenner', profile: 'kylie.jpg', isPressed: false),
];

List<Feed> posts = [
  Feed(
      username: 'zendaya',
      caption: 'sunday funday',
      post: 'zendaya_post.jpg',
      profile: 'zendaya.jpg',
      isLiked: false,
      isSaved: false,
      comments: 213,
      likes: 31027,
      posted: 73),
  Feed(
      username: 'travisscott',
      caption: 'sicko mode on',
      post: 'travis_post.jpeg',
      profile: 'travis.jpg',
      isLiked: false,
      isSaved: false,
      comments: 76,
      likes: 15430,
      posted: 96),
  Feed(
      username: 'therock',
      caption: 'workin\' hard',
      post: 'therock_post.jpeg',
      profile: 'therock.jpeg',
      isLiked: false,
      isSaved: false,
      comments: 100,
      likes: 18050,
      posted: 25),
  Feed(
      username: 'damjanzimbakov',
      caption: 'rock - art',
      post: 'dm_post.jpg',
      profile: 'dm.jpg',
      isLiked: false,
      isSaved: false,
      comments: 50,
      likes: 500,
      posted: 110),
  Feed(
      username: 'kyliejenner',
      caption: 'glossy.',
      post: 'kylie_post.jpg',
      profile: 'kylie.jpg',
      isLiked: false,
      isSaved: false,
      comments: 200,
      likes: 22234,
      posted: 49),
  Feed(
      username: 'kyrieirving',
      caption: 'get buckets',
      post: 'kyrie_post.jpg',
      profile: 'kyrie.jpg',
      isLiked: false,
      isSaved: false,
      comments: 213,
      likes: 2803,
      posted: 73),
  Feed(
      username: 'zendaya',
      caption: 'sunday funday',
      post: 'zendaya_post.jpg',
      profile: 'zendaya.jpg',
      isLiked: false,
      isSaved: false,
      comments: 213,
      likes: 26053,
      posted: 1),
  Feed(
      username: 'travisscott',
      caption: 'sicko mode on',
      post: 'travis_post.jpeg',
      profile: 'travis.jpg',
      isLiked: false,
      isSaved: false,
      comments: 76,
      likes: 15104,
      posted: 96),
  Feed(
      username: 'therock',
      caption: 'workin\' hard',
      post: 'therock_post.jpeg',
      profile: 'therock.jpeg',
      isLiked: false,
      isSaved: false,
      comments: 100,
      likes: 18000,
      posted: 25),
  Feed(
      username: 'damjanzimbakov',
      caption: 'rock - art',
      post: 'dm_post.jpg',
      profile: 'dm.jpg',
      isLiked: false,
      isSaved: false,
      comments: 50,
      likes: 500,
      posted: 23),
  Feed(
      username: 'kyliejenner',
      caption: 'glossy.',
      post: 'kylie_post.jpg',
      profile: 'kylie.jpg',
      isLiked: false,
      isSaved: false,
      comments: 200,
      likes: 22234,
      posted: 140),
  Feed(
      username: 'kyrieirving',
      caption: 'get buckets',
      post: 'kyrie_post.jpg',
      profile: 'kyrie.jpg',
      isLiked: false,
      isSaved: false,
      comments: 213,
      likes: 26000,
      posted: 5),
];

List<Dms> directs = [
  Dms(name: 'Zendaya', profile: 'zendaya.jpg', status: 'Sent 1m ago'),
  Dms(name: 'Travis Scott', profile: 'travis.jpg', status: 'Seen 8m ago'),
  Dms(name: 'The Rock', profile: 'therock.jpeg', status: 'Sent 20m ago'),
  Dms(name: 'Kyrie Irving', profile: 'kyrie.jpg', status: 'Sent 1h ago'),
  Dms(name: 'Kylie Jenner', profile: 'kylie.jpg', status: 'Sent 3h ago'),
  Dms(name: 'Zendaya', profile: 'zendaya.jpg', status: 'Opened 5h ago'),
  Dms(name: 'Travis Scott', profile: 'travis.jpg', status: 'Sent 10h ago'),
  Dms(name: 'The Rock', profile: 'therock.jpeg', status: 'Seen 19h ago'),
  Dms(name: 'Kyrie Irving', profile: 'kyrie.jpg', status: 'Opened 1d ago'),
  Dms(name: 'Kylie Jenner', profile: 'kylie.jpg', status: 'Sent 3d ago'),
  Dms(name: 'Zendaya', profile: 'zendaya.jpg', status: 'Sent 1m ago'),
  Dms(name: 'Travis Scott', profile: 'travis.jpg', status: 'Seen 8m ago'),
  Dms(name: 'The Rock', profile: 'therock.jpeg', status: 'Sent 20m ago'),
  Dms(name: 'Kyrie Irving', profile: 'kyrie.jpg', status: 'Sent 1h ago'),
  Dms(name: 'Kylie Jenner', profile: 'kylie.jpg', status: 'Sent 3h ago'),
  Dms(name: 'Zendaya', profile: 'zendaya.jpg', status: 'Opened 5h ago'),
  Dms(name: 'Travis Scott', profile: 'travis.jpg', status: 'Sent 10h ago'),
  Dms(name: 'The Rock', profile: 'therock.jpeg', status: 'Seen 19h ago'),
  Dms(name: 'Kyrie Irving', profile: 'kyrie.jpg', status: 'Opened 1d ago'),
  Dms(name: 'Kylie Jenner', profile: 'kylie.jpg', status: 'Sent 3d ago'),
];
