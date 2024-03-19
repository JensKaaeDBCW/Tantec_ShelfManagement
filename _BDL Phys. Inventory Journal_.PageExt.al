pageextension 50501 "BDL Phys. Inventory Journal" extends "Phys. Inventory Journal"
{
    layout
    {
        addlast(Control1)
        {
            field("BDL Area"; Rec."BDL Area")
            {
                ApplicationArea = All;
                ToolTip = 'The General Area of the Item';
            }
            field("BDL Section"; Rec."BDL Section")
            {
                ApplicationArea = All;
                ToolTip = 'The Section in the Area where the Item is placed';
            }
            field("BDL Shelf"; Rec."BDL Shelf")
            {
                ApplicationArea = All;
                ToolTip = 'The Specific shelf where the item is placed';
            }
        }
    }
}
