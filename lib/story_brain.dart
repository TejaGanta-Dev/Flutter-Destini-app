import 'story.dart';

class StoryBrain {
  // ignore: prefer_final_fields
  int storyNumber = 0;
  List<int> endOfStory = [3, 4, 5];
  final List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[storyNumber].storyTitle;
  }

  getChoice1() {
    return _storyData[storyNumber].choice1;
  }

  getChoice2() {
    return _storyData[storyNumber].choice2;
  }

  nextStory(int choiceValue) {
    if (endOfStory.contains(storyNumber)) {
      storyNumber = 0;
      return;
    }
    if (storyNumber == 0) {
      if (choiceValue == 1) {
        storyNumber = 2;
      } else {
        storyNumber = 1;
      }
      return;
    }
    if (storyNumber == 2) {
      if (choiceValue == 1) {
        storyNumber = 5;
      } else {
        storyNumber = 4;
      }
      return;
    }
    if (storyNumber == 1) {
      if (choiceValue == 1) {
        storyNumber = 2;
      } else {
        storyNumber = 3;
      }
      return;
    }
  }

  bool checkVisibility() {
    if (endOfStory.contains(storyNumber)) {
      return false;
    }
    return true;
  }
}
