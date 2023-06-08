// TASK ONE

class ListCompressor {
  List<int> compressLists(List<List<int>> lists) {
    List<int> result = [];

    for (List<int> list in lists) {
      for (int value in list) {
        if (!result.contains(value)) {
          result.add(value);
        }
      }
    }

    return result;
  }
}

// TASK TWO

class DataSetPrinter {
  void printDataSet(List<List<List<int>>> dataSet) {
    for (List<List<int>> subList1 in dataSet) {
      for (List<int> subList2 in subList1) {
        for (int element in subList2) {
          print(element);
        }
      }
      
    }
  }
}

// TASK THREE

class GetMaxValue {
  int findMaxValue(List<int> array) {

    int max = array[0];

    for (int i = 0; i < array.length; i++) {
      if(array[i] > max) {
        max = array[i];
      }
    }
   
    return max;
  }
}

// TASK FOUR

extension ListExtension<T extends Comparable> on List<T> {
  List<T> getMaxMinValue() {

    T max = this[0];
    T min = this[0];

    for (var i = 0; i < length; i++) {
      if(this[i].compareTo(min) < 0) {
        min = this[i];
      }

      if(this[i].compareTo(max) > 0) {
        max = this[i];
      }
    }

    return  [min,max];
  }
}


// TASK FIVE
class DataSetProcessor {
  List<int> getAgeValues(List<Map<String, dynamic>> dataValue) {
    return dataValue.map<int>((item) => item['age'] as int).toList();
  }

  List<Map<String, dynamic>> getAgeGreaterThanSix(List<Map<String, dynamic>> dataValue) {
    return dataValue.where((item) => item['age'] > 6).toList();
  }

  List<String> getNameValues(List<Map<String, dynamic>> dataValue) {
    return dataValue.map<String>((item) => item['name'] as String).toList();
  }

  int getSumOfAgeValues(List<Map<String, dynamic>> dataValue) {
    return dataValue.fold(0, (sum, item) => sum + (item['age'] as int));
  }
}


void main() {

  // Task ONE
  List<List<int>> inputLists = [
    [1, 2, 3],
    [2, 3, 4],
    [4, 5, 6]
  ];

  ListCompressor compressor = ListCompressor();
  List<int> compressedList = compressor.compressLists(inputLists);

  print(compressedList);

  // Task TWO
  List<List<List<int>>> dataSet = [
    [[1, 2, 4], [5, 3, 5]],
    [[1, 22, 4], [5, 33, 5]],
    [[5, 13, 5]],
  ];

  DataSetPrinter printer = DataSetPrinter();
  // printer.printDataSet(dataSet);


  // TASK THREE

  List<int> array = [5, 2, 4, 3];

  GetMaxValue finder = GetMaxValue();
  int maxValue = finder.findMaxValue(array);

  print(maxValue);


  // TASK FOUR

  List<int> numbers = [1,2,3,7,4];

  List<int> minMaxValues = numbers.getMaxMinValue();

  int min = minMaxValues[0];
  int max = minMaxValues[1];

  print('Min value: $min');
  print('Max value: $max');


  // TASK FIVE

  List<Map<String, dynamic>> dataValue = [
    {'age': 5, 'name': 'tolu'},
    {'age': 7, 'name': 'grace'},
    {'age': 11, 'name': 'bola'},
  ];

  DataSetProcessor processor = DataSetProcessor();

  List<int> ageValues = processor.getAgeValues(dataValue);
  print('Age values: $ageValues');

  List<Map<String, dynamic>> getAgeGreaterThanSix = processor.getAgeGreaterThanSix(dataValue);
  print('Age > 6: $getAgeGreaterThanSix');

  List<String> nameValues = processor.getNameValues(dataValue);
  print('Name values: $nameValues');

  int sumOfAgeValues = processor.getSumOfAgeValues(dataValue);
  print('Sum of ages: $sumOfAgeValues');




}
