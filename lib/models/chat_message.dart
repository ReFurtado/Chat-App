
// ignore_for_file: constant_identifier_names

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  late String text;
  late String hour;
  late ChatMessageType messageType;
  late MessageStatus messageStatus;
  late bool isSender;

  ChatMessage({
    required this.text,
    required this.hour,
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List demeChatMessages = [
  ChatMessage(
    text: 'Hiii',
    hour: '17:15',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: 'Hello, \nhow are you?',
    hour: '17:19',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: '',
    hour: '17:21',
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: '',
    hour: '17:30',
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
  ChatMessage(
    text: 'Error',
    hour: '17:32',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  ChatMessage(
    text: 'This looks great!!',
    hour: '17:34',
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: false,
  ),

];

