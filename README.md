# Messing with OCaml

> Learning this beautiful functional language

- I'm learning from the book [OCaml from the very beginning](https://www.amazon.com.br/Ocaml-Very-Beginning-John-Whitington/dp/0957671105), it's the best source of knowledge for someone who doesn't know a single line of OCaml, and you can learn algorithm with it as well

## INSTALL BASICS

- we need some to use some tools such as:
  - [esy](https://esy.sh/docs/en/getting-started.html);
  - [opam](https://opam.ocaml.org/);
  - [dune](https://opam.ocaml.org/packages/dune/);
  - first of all you will need to run ``opam init``, after that u install your stuff;
  - you'll probably need libev as well, so, if you do, run these:
    ``sudo apt install libev-dev``
    ``opam install conf-libev``
    ``opam install lwt.4.3.0 --verbose`` and after that, you should see something like:
      ``libev ................................. available``
      then, you will be able to run ``esy``

## HELPFULL COMMANDS

- ``esy install`` to run the install dependencies
- ``esy dune build`` to build the project
- ``esy dune exec ./crud.exe`` to run the project
