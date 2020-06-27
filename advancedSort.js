function swap(array, i, j) {
  [array[i], array[j]] = [array[j], array[i]];
}

function advancedQuickSort(array, startIndex = 0, endIndex = array.length - 1) {
  if (startIndex >= endIndex) return array;

  let indexOfGreaterElements = startIndex;
  const pivot = array[endIndex];

  for(let i = startIndex; i <= endIndex; i++){
    if (array[i] <= pivot) {
      swap(array, i, indexOfGreaterElements);
      indexOfGreaterElements++;
    }
  }

  indexOfGreaterElements-=1

  console.log(array);

  advancedQuickSort(array, startIndex, indexOfGreaterElements - 1);
  advancedQuickSort(array, indexOfGreaterElements ,endIndex);
  return array;
}

const arr = [9, 8, 6, 7, 3, 5, 4, 1, 2];
advancedQuickSort(arr)
