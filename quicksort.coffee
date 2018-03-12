quicksort = (array) ->
  if array.length <= 1
    return array
  pivot = array[0]
  l = []
  r = []
  i = 1
  while i < array.length
    if array[i] < pivot then l.push(array[i]) else r.push(array[i])
    i++
  quicksort(l).concat pivot, quicksort(r)

list = [
  5
  4
  2
  3
  6
  7
  8
  1
]
sorted = quicksort(list)
console.log 'Answer', sorted
