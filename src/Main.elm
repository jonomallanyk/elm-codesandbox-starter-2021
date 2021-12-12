module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Changed the title" ]
        , div 
        [] 
        [ text "This is a template to allow the use of Elm in repl.it" ]
        , div 
            [] [ text "If people like this template I might do an elm tutorial in the future" ]
        , div [] [ text "Elm is a functional language that compiles to JavaScript. It helps you make websites and web apps. It has a strong emphasis on simplicity and quality tooling." ]
        , div [] [ text "below is a simple button to demostrate how state works in elm." ]
        , button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , viewSection "This is a section"
        , viewSection "This also a section"
        ]


viewSection : String -> Html Msg
viewSection str =
    div
        []
        [ text str ]
