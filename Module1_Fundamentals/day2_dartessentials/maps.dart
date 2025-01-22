void main() {
  exercise5();
}

// Exercise 1: Write a function that takes a string and returns a map of each word and its frequency.
void exercise1({String string = "Hello"}) {
  Map map = {};
  List list = string.split('');

  for (int i = 0; i < list.length; i++) {
    if (map.containsKey(list[i])) {
      map[list[i]] += 1;
    } else {
      map[list[i]] = 1;
    }
  }
  print(map);
}

// Exercise 2: Given a map, implement a function to find keys that correspond to a specific value.
void exercise2(
    {Map map = const {1: "hello", 2: "world", 3: "hello"},
    String targetValue = "hello"}) {
  List list = [];
  map.forEach((key, value) {
    if (value == targetValue) {
      list.add(key);
    }
  });
  print(list);
}

// Exercise 3: Merge two maps. If they have the same key, the value in the second map should overwrite the value in the first.
void exercise3(
    {Map map1 = const {1: "hello", 2: "world", 3: "hello"},
    Map map2 = const {1: "hi", 2: "world", 4: "hello"}}) {
  final mergedMap = Map.from(map1);
  mergedMap.forEach((key, value) {
    if (map2.containsKey(key)) {
      mergedMap[key] = map2[key];
    }
  });
  map2.forEach((key, value) {
    if (!mergedMap.containsKey(key)) {
      mergedMap[key] = value;
    }
  });

  print(mergedMap);
}

//Exercise 4: Write a program that multiplies all numeric values in a map by 2.
void exercise4() {
  Map map = {1: 2, 2: 3, 3: 4, 4: 5};
  map.forEach((key, value) => map[key] = value * 2);
  print(map);
}

//Exercise 5: Given a string, count the number of uppercase letters, lowercase letters, and digits, and store the results in a map.
void exercise5({String string = "12637hasyvFGCUVSDJKbja31wer"}) {
  Map map = {'Digits': 0, 'Uppercase': 0, 'Lowercase': 0};

  for (var char in string.split('')) {
    if (char.toUpperCase() == char && char.toLowerCase() != char) {
      // Uppercase check
      map['Uppercase']++;
    } else if (char.toLowerCase() == char && char.toUpperCase() != char) {
      // Lowercase check
      map['Lowercase']++;
    } else if (int.tryParse(char) != null) {
      // Digit check
      map['Digits']++;
    }
  }
  print(map);
}
