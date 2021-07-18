open Format
(* recursive function without pattern matching *)
let rec factorial a = 
  if a = 1 then a else a * factorial (a - 1);;

(* recursive function with pattern matching *)
let rec factorialMatching a =
  match a with
    1 -> 1
  | _ -> a * factorial (a - 1);;

let matchFactorial = factorialMatching 4;;
Format.print_int matchFactorial;;
Format.printf "\n";;

(* recursive function without pattern matching *)
let isvowel c =
  c = 'a' || c = 'e' ||  c = 'i' ||  c = 'o' ||  c = 'u';;

(* recursive function with pattern matching *)
let rec isvowelMatching c =
  match c with
    'a' -> true
  | 'e' -> true
  | 'i' -> true
  | 'o' -> true
  | 'u' -> true
  | _ -> false;;

let rec betterVowelMatching c =
  match c with 
    'a' | 'e' | 'i' | 'o' | 'u' -> true
  | _ -> false;;

let resVowel = isvowelMatching 'b';;
print_bool resVowel;;
printf "\n";;

let rec euclid a b =
  match b with
    0 -> a
  | _ -> euclid b (a mod b);;

let resEuclid = euclid 64000 3456;;
print_int resEuclid;;
printf "\n";;

let not x =
  match x with
    false -> true
  | true -> false;;

let isIt = not true;;
print_bool isIt;;
printf "\n";;
