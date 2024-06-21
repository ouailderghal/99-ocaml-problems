(* Find the last but one (last and penultimate) elements of a list. *)

let rec last_two = function
  | [] | [_] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest;;

(* TODO: write an equivalent function with typed parameters *)
(* TODO: write an equivalent function that operates only on a list of integres *)
