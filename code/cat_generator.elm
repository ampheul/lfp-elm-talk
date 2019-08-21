import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode exposing (Decoder, field, string)
{-
    you must install Json and Http with 
    `elm install elm/json` and `elm install elm/http`
-}




-- MAIN


main =
  Browser.element
    { init = init
    , update = update
    , subscriptions = subscriptions
    , view = view
    }



-- MODEL


type Model
  = Failure
  | Loading
  | Success String


init : () -> (Model, Cmd Msg)




-- UPDATE


type Msg
  = MorePlease
  | GotGif (Result Http.Error String)


update : Msg -> Model -> (Model, Cmd Msg)



-- SUBSCRIPTIONS

subscriptions : Model -> Sub Msg

-- VIEW


view : Model -> Html Msg

viewGif : Model -> Html Msg


-- HTTP

getRandomCatGif : Cmd Msg

gifDecoder : Decoder String