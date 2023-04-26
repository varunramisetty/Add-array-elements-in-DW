//Add array elements in dataweave

%dw 2.0
output application/json
var v = [2,3,4]
//taking variable v as set of numbers in an array
---
// payload map {key : payload[0 to '$$'] reduce ($+$$)}.key

  v map(item,index) -> { R: v[0 to index] reduce (item + index)}.R
  //trying to add the array of elements with index