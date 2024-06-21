(* Last element of a list *)
let rec last (lst : 'a list) : 'a option =
  match lst with
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

(* Last element in a list of integers *)
exception EmptyList of string;;

let rec last_int (lst : int list) : int =
  match lst with
  | [] -> raise (EmptyList "list is empty")
  | [x] -> x
  | _ :: rest -> last_int rest;;
