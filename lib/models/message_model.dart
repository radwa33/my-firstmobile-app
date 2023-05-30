//import 'package:chatto/models/user_model.dart';


import 'package:untitled3/models/user_model.dart';

class Message {
  final User sender;
  final String
  time; //  type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/olavia.jpg',
);

// USERS
final User yassin = User(
  id: 1,
  name: 'yassin',
  imageUrl: "images/olavia.jpg",
);
final User khlood = User(
  id: 2,
  name: 'khlood',
  imageUrl: 'images/olavia.jpg',
);
final User radwa = User(
  id: 3,
  name: 'radwa',
  imageUrl: 'images/olavia.jpg',
);
final User eriny = User(
  id: 4,
  name: 'eriny',
  imageUrl: 'images/olavia.jpg',
);
final User salma = User(
  id: 5,
  name: 'Salma',
  imageUrl: 'images/olavia.jpg',
);
final User manar = User(
  id: 6,
  name: 'manar',
  imageUrl: 'images/olavia.jpg',
);
final User sondos = User(
  id: 7,
  name: 'sondos',
  imageUrl: 'images/olavia.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [salma, sondos, eriny, radwa, yassin];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: khlood,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? how much is your Arduino?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: eriny,
    time: '4:30 PM',
    text: 'Hi, where can i met you?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: radwa,
    time: '3:30 PM',
    text: 'that is too much, can you make it 150 LE?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: manar,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: sondos,
    time: '1:30 PM',
    text: 'okay i will meet you in collage at 12:30 pm ',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: salma,
    time: '12:30 PM',
    text: 'i will take it , meet me at NP304 if you are there',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: yassin,
    time: '11:30 AM',
    text: 'do you have the 8051 Microcontroller also?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: khlood,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? how much is your Arduino?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'it is 140 LE ',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: khlood,
    time: '3:45 PM',
    text: 'That is too much for me',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: khlood,
    time: '3:15 PM',
    text: 'can you make it 100 ?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'sorry i cannot but i can rent it for 50',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: khlood,
    time: '2:00 PM',
    text: 'Nice! can i take it next sunday ?',
    isLiked: false,
    unread: true,
  ),
];