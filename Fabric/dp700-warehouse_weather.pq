let
    Source = Fabric.Warehouse(null),
    #"92334643-61d6-4208-91b1-1a983bc10acc" = Source{[workspaceId = "92334643-61d6-4208-91b1-1a983bc10acc"]}[Data],
    #"f0a07fd2-c487-453a-abb2-33fad782cfbf" = #"92334643-61d6-4208-91b1-1a983bc10acc"{
        [warehouseId = "f0a07fd2-c487-453a-abb2-33fad782cfbf"]
    }[Data],
    dbo_Weather = #"f0a07fd2-c487-453a-abb2-33fad782cfbf"{[Schema = "dbo", Item = "Weather"]}[Data]
in
    dbo_Weather
