(module styles (render-styles)
  (import scss scheme)

  (define (render-styles)
    ; TODO
    ; * Circle b/t ul li (see https://stackoverflow.com/questions/23351472/show-pseudo-element-between-elements)
    (scss->css `(css (html (font "1em Courier"))
                     (li (list-style "none") (padding "3px 0px"))
                     ((// ul li) (display "inline"))
                     ((ol ul) (padding-left "20px"))
                     ((= class wrapper) (display "flex") (height "100%"))
                     ((= class sidebar) (width "20%"))
                     ((= class featured-content) (align-items "center")
                                                 (display "flex")
                                                 (justify-content "center")
                                                 (width "80%"))))))
