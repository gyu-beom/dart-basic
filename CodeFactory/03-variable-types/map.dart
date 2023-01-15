void main() {
  // Declare #1
  Map dictionary = {
    'apple': '사과',
    'banana': '바나나',
    'watermelon': '수박',
  };

  print(dictionary);

  print(dictionary['apple']);
  print(dictionary['banana']);
  print(dictionary['watermelon']);

  print('====================');
  Map dictionary2 = {};

  print(dictionary2);

  // Add
  dictionary2.addAll({
    'apple': '사과',
    'banana': '바나나',
    'watermelon': '수박',
  });

  print(dictionary2);

  // Remove
  dictionary2.remove('apple');

  print(dictionary2);

  // Modify
  dictionary2['banana'] = 'devops-gyubeom';

  print(dictionary2);
  print(dictionary2['banana']);

  print('====================');
  // Declare #2
  Map dictionary3 = new Map();
  Map dictionary4 = new Map.from({
    'apple': '사과',
    'banana': '바나나',
    'watermelon': '수박',
  });

  print(dictionary3);
  print(dictionary4);

  print(dictionary4.keys.toList());
  print(dictionary4.values.toList());

  print('====================');
  // Declare with types
  Map<String, int> price = {
    'apple': 2000,
    'banana': 4000,
    'watermelon': 6000,
  };

  print(price);
}
