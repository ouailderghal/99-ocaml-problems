(* Last element of a list *)
let rec last (lst: 'a list) : 'a option =
  match lst with
  | [] -> None
  | [x] -> Some x
  | _ :: tail -> last tail;;

(* Last element in a list of integers *)
exception EmptyList of string;;

let rec last_int (lst: int list) : int =
  match lst with
  | [] -> raise (EmptyList "list is empty")
  | [x] -> x
  | _ :: tail -> last_int tail;;
