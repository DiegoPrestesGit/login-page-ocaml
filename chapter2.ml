open Format

let isvowel c =
  c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u';;


let res = isvowel 'b';;

let x = if res then "thats a vogal" else "thats a consonant";;
Format.print_string x;;
Format.printf "\n";;

let addtoten a b =
  a + b = 10;;

let tenResult = addtoten 6 4;;
Format.print_bool tenResult;;
Format.printf "\n";;

let rec factorial a =
  if a = 1 then 1 else a * factorial (a - 1);;
  let resu = factorial 4;;
  Format.print_int resu;;
  Format.printf "\n";;

let rec gcd a b =
  Format.print_int a;
  Format.printf "\n";
  Format.print_int b;
  Format.printf "\n";
  if b = 0 then a else gcd b (a mod b);;

let gcdRes = gcd 64000 3546;;
Format.print_int gcdRes;;
Format.printf "\n";;
