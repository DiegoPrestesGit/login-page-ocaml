open Format;;

let functions_list = [1; 10; 24; 11; 2; 63; 5; 34; 6; 10];;

let rec print_list list =
  match list with
    [] -> printf "\n"; []
  | h::t -> print_int h; print_list t;;

let rec insert x l =
  match l with
    [] -> [x]
  | h::t ->
      if x <= h
        then x :: h :: t
      else h :: insert x t;;

let rec sort list =
  match list with
    [] -> []
  | h::t -> insert h (sort t);;

print_list (sort functions_list);;
