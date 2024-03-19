tableextension 50501 "BDl Item Journal Line" extends "Item Journal Line"
{
    fields
    {
        field(50500; "BDL Area"; code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Area';
        }
        field(50501; "BDL Section"; Code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Section';
        }
        field(50502; "BDL Shelf"; Code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Shelf';
        }
    }
}
