(* Last 2 elements in a list *)
let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: tail -> last_two tail;;

(* Last 2 elements in a list with typed arguments *)
let rec last_two_typed (lst: 'a list) : ('a * 'a) option =
  match lst with
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: tail -> last_two_typed tail;;


(* Last 2 elements in a list of integers *)
exception EmptyList of string;;

let rec last_two_int (lst: int list) : (int * int) =
  match lst with
  | [] | [_] -> raise (EmptyList "list is empty")
  | [x; y] -> (x, y)
  | _ :: tail -> last_two_int tail;;

