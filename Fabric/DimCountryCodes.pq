let
    Quelle = Web.Page(Web.Contents("https://www.iban.com/country-codes")),
    Data0 = Quelle{0}[Data],
    #"Geänderter Typ" = Table.TransformColumnTypes(Data0,{{"Country", type text}, {"Alpha-2 code", type text}, {"Alpha-3 code", type text}, {"Numeric", Int64.Type}})
in
    #"Geänderter Typ"