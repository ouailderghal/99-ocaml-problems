(* Find the last but one (last and penultimate) elements of a list. *)

let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest;;
