import 'package:QuizGame/models/quiz_question.dart';

const questions = [
  QuizQuesiton('what are the main building blocks of Flutter UIs?', [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ]),
  QuizQuesiton('How are Flutter UIs Built', [
    'By Combining widgets in code',
    'By Combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using Xcode for  ios and Anroid Studio for android',
  ]),
  QuizQuesiton('What\'s the Purpose of a StatefulWidget', [
    'Update UI as data Changes',
    'Update data as UI changes',
    'Ignore data changes',
    'Render UI that does not depend on data',
  ]),
  QuizQuesiton(
      'Which Widget should you try t use more often : Stateless or StateFulWidget?',
      [
        'Stateless Widget',
        'Stateful Widget',
        'Both are Equally Good',
        'None of the above',
      ]),
  QuizQuesiton('what happens if you change data in a statelessWidget?', [
    'the UI is not Updated',
    'the UI is Updated',
    'The Closest StateFulWidget is updated',
    'Any Nested StatefulWidgets are updated',
  ]),
  QuizQuesiton('How should you update data inside of StatefulWidgets?', [
    'By Calling setState()',
    'By Calling updateData()',
    'By Calling updateUI()',
    'By Calling updateState()',
  ])
];
