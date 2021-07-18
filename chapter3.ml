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

let resVowel = isvowelMatching 'b';;
print_bool resVowel;;
printf "\n";;