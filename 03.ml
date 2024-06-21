(* Element at position 'k' in a list *)
let rec at k = function
  | [] -> None
  | head :: tail ->
    if k = 0 then Some head
    else at (k - 1) tail;;

(* Element at position 'k' in a list with typed arguments *)
let rec at_typed (k: int) (lst : 'a list) : 'a option =
  match lst with
  | [] -> None
  | head :: tail ->
    if k = 0 then Some head
    else at_typed (k - 1) tail;;

(* Element at position 'k' in a list of integers *)
exception EmptyList of string;;

let rec at_int (k: int) (lst: int list) : int =
  match lst with
    | [] -> raise (EmptyList "list is empty")
    | head :: tail ->
      if k = 0 then head
      else at_int (k - 1) tail;;
