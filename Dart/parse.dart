List<int> toIntList(String source) {
  //Разделяем строку на подстроки - split()
  //Разделитель - просто пробел или запятая с пробелом
  final List<String> substrings = source.trim().split(RegExp(r'[ ,]+'));
  final List<int> numbers = [];

  //Преобразуем каждую подстроку в int
  for (int i = 0; i < numbers.length; i++) {
    numbers.add(int.parse(substrings[i]));
  }

  return numbers;
}