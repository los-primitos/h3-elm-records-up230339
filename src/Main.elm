module Main exposing (main, myLaptop)

import Html exposing (Html, div, h1, li, text, ul)

type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }

myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Air M2"
    , brand = "Apple"
    , screenSize = "13.6"
    }

main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
