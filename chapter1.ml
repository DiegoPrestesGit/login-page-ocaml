open Format

(* basic function *)
let lessHundred x = x < 100;;
let x = lessHundred 99;;
let xesqu = if x then "fuck it \n" else "u know what, thats ok \n";;
let bla = Format.print_string xesqu;;
