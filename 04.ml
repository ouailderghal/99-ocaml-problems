(* Length of a list *)
let length lst =
  let rec aux n = function
    | [] -> n
    | _ :: tail -> aux (n + 1) tail
  in
    aux 0 lst;;


(* Length of a list with typed arguments *)
let length_typed (lst: 'a list) : int =
  let rec aux (n: int) (lst: 'a list) : int =
    match lst with
    | [] -> n
    | _ :: tail -> aux (n + 1) tail
  in
    aux 0 lst;;


(* Length of a list of integers *)
let length_int (lst: int list) : int =
  let rec aux (n: int) (lst: int list) : int =
    match lst with
    | [] ->  n
    | _ :: tail -> aux (n + 1) tail
  in
    aux 0 lst;;

(* Length of a list with a simpler solution *)
let rec length_simple (lst: 'a list) : int =
  match lst with
  | [] -> 0
  | _ :: tail -> 1 + length_simple tail;;

