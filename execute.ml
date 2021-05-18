open Opium

(* GET /test *)
let test _request = Lwt.return (Response.of_plain_text "test")

let () = App.empty |> App.get "/test" test |> App.run_command
