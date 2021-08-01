open Format;;

let functions_list =  [53; 9; 2; 6; 19; 3];;
let another_list = [2; 300; 57; 5; 754; 45; 7; 5; 9; 10; 11];;
let char_list = ['a'; 'u'; 't'; 'b'; 'p'; 'x'; 'm']

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

let rec length l =
  match l with
  [] -> 0
  | h::t -> 1 + length t;;

let rec print_list list =
  match list with
    [] -> printf "\n"; []
  | h::t -> print_int h; printf " "; print_list t;;

let rec print_char_list list =
  match list with
    [] -> printf "\n"; []
  | h::t -> print_char h; printf " "; print_char_list t;;
  

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
let sorted = sort functions_list;;
print_list (sorted);;

let rec merge list_a list_b =
  match list_a, list_b with
    [], l -> l
  | l, [] -> l
  | hlist_a::tlist_a, hlist_b::tlist_b ->
      if hlist_a < hlist_b
        then hlist_a :: merge tlist_a (hlist_b :: tlist_b)
        else hlist_b :: merge (hlist_a :: tlist_a) tlist_b;;

let rec merge_sort list = 
  match list with 
    [] -> []
  | [x] -> [x]
  | _ ->
    let left = take (length list/2) list in
      let right = drop (length list/2) list in
        merge (merge_sort left) (merge_sort right)

let merged_sorted = merge_sort functions_list;;
print_list merged_sorted;;

print_char_list (sort char_list);;
