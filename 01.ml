let rec last (xs: 'a list): 'a option = 
  match xs with
  | [] -> none
  | [x] -> some x
  | _ :: xs -> last(xs)
