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

  let rec length_inner list n =
    match list with
      [] -> n
    | h::t -> length_inner t (n + 1);;

  let length l = length_inner l 0;;
  let length_res = length [1;2;3;4;5;6;7;8;9;10];;
  print_int length_res;;
  printf "\n";;

  let rec odd_numbers list = 
    match list with
      [] -> []
    | [a] -> [a]
    | a::_::t -> a :: odd_numbers t;;

  let rec even_numbers list =
    match list with
      [] -> []
    | [a] -> [a]
    | _::a::t -> a :: even_numbers t;;

  let rec print_list list =
    match list with
      [] -> printf "\n"; 0
    | h::t -> print_int h; printf " "; print_list t;;

  print_list [5; 1; 3; 10];;

  let odd_list = odd_numbers [5; 10; 5; 6; 5; 100];;
  print_list odd_list;;

  let even_list = even_numbers [1; 2; 1; 3; 1; 4; 1; 5];;
  print_list even_list;;

  let rec append list_a list_b = 
    match list_a with
      [] -> list_b
    | h::t -> h :: append t list_b;;

  let append_list = append [1; 2; 3; 10] [2;3;5];;
  print_list append_list;;

  let rec reverse list =
    match list with
      [] -> []
    | h::t -> print_int h; printf " "; reverse t @ [h];;


  let reversed_list = reverse append_list;;
  printf "\n";;
  print_list reversed_list;;

  let rec take n l =
    if n = 0 then [] else
    match l with
      [] -> []
    | h::t -> h :: take (n - 1) l

  let rec drop n l =
    if n = 0 then l else
      match l with
        [] -> []
      | h::t -> drop (n - 1) t;;

  let taked_list = take 2 append_list;;
  print_list taked_list;;
  printf "\n";;
  let droped_list = drop 2 append_list;;
  print_list droped_list;;
  printf "\n";;
