pageextension 50500 "BDL StockKeeping Unit Card" extends "Stockkeeping Unit Card"
{
    layout
    {
        addlast(General)
        {
            field("BDL Area"; Rec."BDL Area")
            {
                ApplicationArea = All;
                ToolTip = 'The general area for this item on this location';
            }
            field("BDL Section"; Rec."BDL Section")
            {
                ApplicationArea = All;
                ToolTip = 'The area section where the item is found';
            }
            field("BDL Shelf"; Rec."BDL Shelf")
            {
                ApplicationArea = All;
                ToolTip = 'The specific Shelf of the section where the item is placed';
            }
        }
        modify("Shelf No.")
        {
            Editable = false;
        }
    }
}
