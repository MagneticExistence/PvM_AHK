#Include, dependencies\random.ahk
; Image Search

Item_Check(Item){
    Switch Item
    { 
      Case "offhand":
         path := "images\offhand_empty.png"
         X1 := 1733
         Y1 := 944
         X2 := 1748
         Y2 := 959
      Default:
         path := ""
    }
    CoordMode, Pixel, Screen
    ImageSearch, , , X1, Y1, X2, Y2, *40, *TransBlack %path%
    ; Logic is that the inventory is searched, if the item exists in invent, return 1, else return 0
    if (ErrorLevel = 0){
         OutputDebug, %A_Now%: "%Item%" is already equipped.
         return 0
        
    } else {
         OutputDebug, %A_Now%: "%Item%" is being equipped.
         return 1
    }
}
