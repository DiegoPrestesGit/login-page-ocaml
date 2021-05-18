(lang dune 2.8)

(name execute)

(package
  (name execute)
  (depends
   (ocaml
   (>= "4.08.0"))
   opium
   ppx_deriving_yojson
   yojson))
