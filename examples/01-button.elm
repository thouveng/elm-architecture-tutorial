import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model
init =
  0


-- UPDATE

type Msg = Reset | Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Reset ->
      0
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , button [ onClick Increment ] [ text "+" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Reset ] [ text "Reset" ]
    ]
