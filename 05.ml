let rev list =
  let rec aux acc = function
    | [] -> acc
    | head :: tail -> aux (head :: acc) tail
  in
    aux [] list;;

let rev_typed (lst: 'a list) : 'a list =
  let rec aux (acc: 'a list) (lst: 'a list) : 'a list =
    match lst with
    | [] -> acc
    | head :: tail -> aux (head :: acc) tail
  in
    aux [] lst;;

let rev_int (lst: int list) : int list =
  let rec aux (acc: int list) (lst: int list) : int list =
    match lst with
    | [] -> acc
    | head :: tail -> aux (head :: acc) tail
    in
      aux [] lst;;
