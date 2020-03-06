module Page.Top exposing (view)

import Html exposing (Html, a, div, footer, h1, header, img, main_, nav, p, section, span, text)
import Html.Attributes exposing (class, href, id, rel, src, target)



-- VIEW


view : List (Html msg)
view =
    [ siteHeader
    , main_ [ id "top" ]
        [ section [ class "section" ]
            [ div [ class "content" ]
                [ p [] [ text "Elm-jp は日本を活動拠点とする、動物を愛でるようなやさしい気持ちを大切にするElmユーザーの集まりです。" ]
                , p []
                    [ a [ class "button", target "_blank", rel "noopener", href "https://discordapp.com/invite/4j2MxCg" ]
                        [ text "Discord 招待リンク" ]
                    ]
                , p []
                    [ a
                        [ class "button", target "_blank", rel "noopener", href "https://scrapbox.io/elm-jp" ]
                        [ text "ScrapBox" ]
                    ]
                , p []
                    [ a [ class "button", target "_blank", rel "noopener", href "https://guide.elm-lang.jp" ]
                        [ text "公式ドキュメント翻訳プロジェクト" ]
                    ]
                ]
            ]
        ]
    , siteFooter
    ]


siteHeader : Html msg
siteHeader =
    header [ class "navbar is-spaced" ]
        [ div
            [ class "container" ]
            [ h1 [ class "navbar-brand" ]
                [ a [ class "navbar-item", href "/" ]
                    [ img [ src "img/logo.jpg" ] []
                    ]
                ]
            , nav [ class "navbar-menu navbar-end" ]
                [ a [ class "navbar-item color-blue", href "#sakura" ] [ text "ドキュメント" ]
                , a [ class "navbar-item color-green", href "#sakura" ] [ text "Elmの特徴" ]
                , a [ class "navbar-item color-yellow", href "#sakura" ] [ text "採用事例" ]
                , a [ class "navbar-item color-green", href "#sakura" ] [ text "参考資料" ]
                ]
            ]
        ]


siteFooter : Html msg
siteFooter =
    footer [ class "footer" ]
        [ div [ class "has-text-centered container" ]
            [ p [] [ text "© 2019 Elm-jp" ]
            ]
        ]
