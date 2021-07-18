open Format

(* more basic function stuff *)
let isvowel c =
  c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u';;


let res = isvowel 'b';;

let x = if res then "thats a vogal" else "thats a consonant";;
Format.print_string x;;
Format.printf "\n";;

let addtoten a b = a + b = 10;;

let tenResult = addtoten 6 4;;
Format.print_bool tenResult;;
Format.printf "\n";;

(* nested function with recursion *)
let rec factorial a =
  if a = 1 then 1 else a * factorial (a - 1);;
  let resu = factorial 4;;
  Format.print_int resu;;
  Format.printf "\n";;

let rec gcd a b =
  if b = 0 then a else gcd b (a mod b);;

let gcdRes = gcd 64000 3456;;
Format.print_int gcdRes;;
Format.printf "\n";;

(* basic function again ;) *)
let isX x =
  if x then "is xesque" else "is not xesque";;

let isIt = isX false;;
print_string isIt;;
Format.printf "\n";;
