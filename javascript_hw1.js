

function isSubstring(searchstring, substring) {
  return searchstring.includes(substring);
}

function fizzbuzz(array) {
  var new_array = []

  for each (el in array) {
    if (el % 3 === 0 || el % 5 === 0) {
      new_array.push(el)
    }
  }
  return new_array
}
