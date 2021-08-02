open Format;;

let list_one = [1; 3; 50; 2; 5; 6; 8; 10; 16; 34; 35]

let rec print_list_int list =
  match list with
    [] -> printf "\n"; []
  | h::t -> print_int h; printf " "; print_list_int t;;

let rec double list =
  match list with
    [] -> []
  | h::t -> (h * 2) :: double t;;

let rec even list =
  match list with
    [] -> []
  | h::t ->
    if h mod 2 == 0 then h :: even t
    else even t;;

print_list_int (even list_one);;
