// Task 1: Number Analysis App
// Name: Kidus Ergetachew

final numbers = <int>[34,-7,89,12,-45,67,3,100,-2,55];
int? findMax(List<int> numbers) {
    if(numbers.isEmpty){
        print('Error : The list of numbers is empty. Cannot find maximum value.');  
        return null;}
    int maxNumber =numbers[0];
  for (var i= 1; i<numbers.length;i++){
    if (maxNumber< numbers[i]){
        maxNumber=numbers[i];
    }
  }
  return maxNumber;
}
 
int? findMin(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Error : The list of numbers is empty. Cannot find minimum value.');
    return null; //null safety
  }
   int minNumber =numbers[0];
 for(var i=1; i<numbers.length;i++){
    if(minNumber>numbers[i]) {
        minNumber=numbers[i];
    }
   } 
   return minNumber;
}
 
int? calculateSum(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Error : The list of numbers is empty. Cannot calculate sum.');
    return null;
  }
  int calculateSum = numbers[0];
  for(var i=1; i<numbers.length;i++){
    calculateSum += numbers[i];
  }
  return calculateSum;
}
 
double? calculateAverage(List<int> numbers) {
    if (numbers.isEmpty) {
    print('Error : The list of numbers is empty. Cannot calculate average.');
    return null;
  }
  int? sum = calculateSum(numbers);
  if (sum == null) {
    return null;
  }
  return sum / numbers.length;
}
int? countNegatives(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Error :  The list of numbers is empty. Cannot count negatives.');
    return null;
  }
  int negativeNumber = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] < 0) {
      negativeNumber++;
    }
  }
  return negativeNumber;
}

// implemented sorting  using bubble sort
List<int>? sortAscending(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Error : The list of numbers is empty. Cannot sort numbers');
    return null;
  }
  for (var i = 0; i < numbers.length - 1; i++) {
    for (var j = 0; j < numbers.length - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        int temp = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = temp;
      }
    }
  }
  return numbers;
}
// rewritten using built in dart methods

// using reduce built in method we compare and return the maximum
var maxNumber = numbers.reduce((a, b) => a > b ? a : b);
// using reduce method we compare and return the minimum
var minNumber = numbers.reduce((a, b) => a < b ? a : b);
// using fold built in  method we sum all the numbers on the list
var sum = numbers.fold(0, (acc, n) => n + acc);
// using where built in method we get the negative number based on our condition
var negativeCount = numbers.where((a) => a < 0).length;

// manually written code is more easier for us learners to understand when learning but it is more code to be written

// collection methods  are short are optimized internally but can feel abstract specially if when we are not familiar or used to functional programming.



void main(){
    int? maxNumber = findMax(numbers);
    int? minNumber = findMin(numbers);
    int? Sum = calculateSum(numbers);
    double? average = calculateAverage(numbers);
    int? countedNegatives = countNegatives(numbers);
    List<int>? sort = sortAscending(numbers);
    print ('Number            Analysis Resultus');
    print ('========================================');
    print ('Numbers           $numbers');
    print ('MinNumber         $minNumber');
    print ('MaxNmumber        $maxNumber');
    print ('CalculateSum      $Sum');
    print ('CalculateAverage  $average');
    print ('countNegatives    $countedNegatives');
    print ('sortAscending     $sort ');
    print('Maximum by reduce  : $maxNumber');
    print('Minimum by reduce  : $minNumber');
    print('Sum by fold        : $Sum');
    print('Negative by where  : $negativeCount');
}
