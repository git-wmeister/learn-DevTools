let
    Source = Fabric.Warehouse(null),
    #"92334643-61d6-4208-91b1-1a983bc10acc" = Source{[workspaceId = "92334643-61d6-4208-91b1-1a983bc10acc"]}[Data],
    #"f0a07fd2-c487-453a-abb2-33fad782cfbf" = #"92334643-61d6-4208-91b1-1a983bc10acc"{
        [warehouseId = "f0a07fd2-c487-453a-abb2-33fad782cfbf"]
    }[Data],
    #"Filtered Rows" = Table.SelectRows(#"f0a07fd2-c487-453a-abb2-33fad782cfbf", each ([Name] = "Geography")),
    #"Expanded Data" = Table.ExpandTableColumn(
        #"Filtered Rows",
        "Data",
        {"GeographyID", "ZipCodeBKey", "County", "City", "State", "Country", "ZipCode"},
        {
            "Data.GeographyID",
            "Data.ZipCodeBKey",
            "Data.County",
            "Data.City",
            "Data.State",
            "Data.Country",
            "Data.ZipCode"
        }
    )
in
    #"Expanded Data"
