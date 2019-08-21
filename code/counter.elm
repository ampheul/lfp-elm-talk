import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model


-- VIEW

view : Model -> Html Msg