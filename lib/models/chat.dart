class Chat {
  late String name, lastMessage, image, time;
  late bool isActive;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.isActive,
  });
}

List chatsData = [
  Chat(
    name: 'John Smith', 
    lastMessage: 'Hes big in the armor, right? And without her what are you?', 
    image: 'assets/images/user.jpg', 
    time: '3m ago', 
    isActive: false,
  ),
  Chat(
    name: 'Michael Williams', 
    lastMessage: 'You dont want to see me angry', 
    image: 'assets/images/user_2.jpg', 
    time: '8m ago', 
    isActive: true,
  ),
  Chat(
    name: 'Emily Johnson', 
    lastMessage: 'One thing is for sure: it will be one hell of a meeting.', 
    image: 'assets/images/user_3.jpg', 
    time: '5d ago', 
    isActive: false,
  ),
  Chat(
    name: 'Sarah Davis', 
    lastMessage: 'every night i have the same dream', 
    image: 'assets/images/user_4.jpg', 
    time: '2m ago', 
    isActive: true,
  ),
  Chat(
    name: 'Christopher', 
    lastMessage: 'Hello! I am...', 
    image: 'assets/images/user_5.jpg', 
    time: '18m ago', 
    isActive: true,
  ),
   Chat(
    name: 'Jan', 
    lastMessage: 'Sure, no problem!', 
    image: 'assets/images/user_6.jpg', 
    time: '18m ago', 
    isActive: true,
  ),
];