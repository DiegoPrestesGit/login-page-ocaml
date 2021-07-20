(* LISTS *)
open Format
(* TODO *)
let isnil list =
  match list with
    [] -> true
  | _ -> false;;

let isIt = isnil [];;
print_bool isIt;;
printf "\n";;

let rec length list =
  match list with
    [] -> 0
  | h::t -> 1 + length t;;

print_int (length [1;2;3;4;5]);;
printf "\n";;

let rec sum list =
  match list with
    [] -> 0
  | h::t -> h + sum t;;

print_int (sum [5;5;5;5]);;
printf "\n";;
