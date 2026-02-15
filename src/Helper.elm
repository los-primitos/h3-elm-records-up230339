module Helper exposing (..)

------------------ ADD2 -----------------------


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-------------------- ADD3 --------------------


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3



----------------------- CALC ------------------------


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



---------------------- RECORDS -----------------------------
----------------- 1 ---------------------------


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List ProgrammingLanguage
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List ProgrammingLanguage -> List String
languageNames langs =
    List.map .name langs



------------------- 2 -----------------------


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    , { name = "Ana", uType = "Student" }
    ]


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        userList



--------------------------- ALIASES -------------------


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = False
      , downloads = 7000000
      , genres = [ "Action", "Adventure" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games
