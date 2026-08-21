let
    Quelle = #date(2020,1,1),
    ListDates = List.Dates(Quelle, Number.From(DateTime.LocalNow())-Number.From(Quelle),#duration(1,0,0,0)),
    Convert2Table = Table.FromList(ListDates, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    rn2Date = Table.RenameColumns(Convert2Table,{{"Column1", "Date"}}),
    ch2DateTyp = Table.TransformColumnTypes(rn2Date,{{"Date", type date}}),
    #"in Day Name" = Table.AddColumn(ch2DateTyp, "Day Name", each Date.DayOfWeekName([Date], "en-US"), type text),
    #"in Year" = Table.AddColumn(#"in Day Name", "Year", each Date.Year([Date]), Int64.Type),
    #"in Quarter" = Table.AddColumn(#"in Year", "Quarter", each Date.QuarterOfYear([Date]), Int64.Type),
    #"in Month" = Table.AddColumn(#"in Quarter", "Month", each Date.Month([Date]), Int64.Type),
    #"in Day" = Table.AddColumn(#"in Month", "Day", each Date.Day([Date]), Int64.Type),
    #"in Month Name" = Table.AddColumn(#"in Day", "Month Name", each Date.MonthName([Date], "en-US"), type text),
    #"in Week of Year" = Table.AddColumn(#"in Month Name", "Week of Year", each Date.WeekOfYear([Date]), Int64.Type),
    #"in Week of Month" = Table.AddColumn(#"in Week of Year", "Week of Month", each Date.WeekOfMonth([Date]), Int64.Type),
    #"in Start of Year" = Table.AddColumn(#"in Week of Month", "Start of Year", each Date.StartOfYear([Date]), type date),
    #"in Start of Quarter" = Table.AddColumn(#"in Start of Year", "Start of Quarter", each Date.StartOfQuarter([Date]), type date),
    #"in Start of Month" = Table.AddColumn(#"in Start of Quarter", "Start of Month", each Date.StartOfMonth([Date]), type date),
    #"in Start of Week" = Table.AddColumn(#"in Start of Month", "Start of Week", each Date.StartOfWeek([Date]), type date),
    #"in Day Name (DE)" = Table.AddColumn(#"in Start of Week", "Day Name.1", each Date.DayOfWeekName([Date], "de-DE"), type text),
    #"rn Day Name (DE)" = Table.RenameColumns(#"in Day Name (DE)",{{"Day Name.1", "Day Name (DE)"}}),
    #"in Month Name (DE)" = Table.AddColumn(#"rn Day Name (DE)", "Month Name.1", each Date.MonthName([Date], "de-DE"), type text),
    #"rn Month Name (DE)" = Table.RenameColumns(#"in Month Name (DE)",{{"Month Name.1", "Month Name (DE)"}})
in
    #"rn Month Name (DE)"