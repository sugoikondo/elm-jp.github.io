module Page.Top exposing (view)

import Color exposing (Color)
import Html exposing (Html, a, button, div, footer, h1, h2, header, img, main_, nav, p, section, span, text)
import Html.Attributes exposing (class, href, id, rel, src, target)
import Material.Icons.Action exposing (open_in_new)



-- VIEW


view : List (Html msg)
view =
    [ siteHeader
    , main_ [ id "top" ]
        [ section [ class "section" ]
            [ div [ class "container fv" ]
                [ div [ class "fv__left" ]
                    [ div [ class "" ]
                        [ h1 [ class "fv__h1" ] [ text "Elm-jp Group" ]
                        , h2 [ class "fv__h2" ] [ text "日本のElmユーザーグループ" ]
                        , div [ class "fv__links" ]
                            [ button [ class "links__button" ]
                                [ a [ target "_blank", rel "noopener", href "https://discordapp.com/invite/4j2MxCg" ]
                                    [ img [ src "img/icon-discord.svg" ] [], text "Discord" ]
                                ]
                            , button [ class "links__button bordered" ]
                                [ a
                                    [ target "_blank", rel "noopener", href "https://guide.elm-lang.jp/" ]
                                    [ text "ドキュメント", open_in_new colorMain 18 ]
                                ]
                            ]
                        ]
                    ]
                , div
                    [ class "fv__right" ]
                    [ img [ src "img/elm-jp.svg" ] []
                    ]
                ]
            ]
        ]
    , siteFooter
    ]


colorText : Color
colorText =
    Color.rgb255 88 86 86


colorMain : Color
colorMain =
    Color.rgb255 72 199 116


colorIconDefault : Color
colorIconDefault =
    Color.rgb255 163 163 163


siteHeader : Html msg
siteHeader =
    header [ class "navbar" ]
        [ div
            [ class "container" ]
            [ h1 [ class "navbar__logo" ]
                [ a [ href "/" ]
                    [ img [ src "img/logo.jpg" ] []
                    ]
                ]
            , nav [ class "navbar__menu" ]
                [ a [ class "menu__link color-blue", href "#sakura" ]
                    [ text "ドキュメント"
                    , open_in_new colorIconDefault 16
                    ]
                , a [ class "menu__link color-green", href "#sakura" ] [ text "Elmの特徴" ]
                , a [ class "menu__link color-yellow", href "#sakura" ] [ text "採用事例" ]
                , a [ class "menu__link color-green", href "#sakura" ] [ text "参考資料" ]
                ]
            ]
        ]


siteFooter : Html msg
siteFooter =
    footer [ class "footer" ]
        [ div [ class "container" ]
            [ text "© 2019 Elm-jp"
            ]
        ]
