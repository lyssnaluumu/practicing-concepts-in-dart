abstract class SortingStrategy {
  List<int> sort(List<int> numbers);
}

class BubbleSort implements SortingStrategy {
  @override
  List<int> sort(List<int> numbers) {
    // Bubble sort algorithm
    return numbers;
  }
}

class QuickSort implements SortingStrategy {
  @override
  List<int> sort(List<int> numbers) {
    // Quick sort algorithm
    return numbers;
  }
}

void main() {
  List<int> numbers = [5, 3, 8, 1];
  SortingStrategy strategy = QuickSort();
  numbers = strategy.sort(numbers);
  print(numbers);
}
