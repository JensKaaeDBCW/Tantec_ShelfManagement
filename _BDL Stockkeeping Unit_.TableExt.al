tableextension 50500 "BDL Stockkeeping Unit" extends "Stockkeeping Unit"
{
    fields
    {
        field(50500; "BDL Area"; code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Area';

            trigger OnValidate()
            begin
                if Rec."BDL Area" <> xRec."BDL Area" then BDLUpdateShelfNo();
            end;
        }
        field(50501; "BDL Section"; Code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Section';

            trigger OnValidate()
            begin
                if Rec."BDL Section" <> xRec."BDL Section" then BDLUpdateShelfNo();
            end;
        }
        field(50502; "BDL Shelf"; Code[3])
        {
            DataClassification = CustomerContent;
            Caption = 'Shelf';

            trigger OnValidate()
            begin
                if Rec."BDL Shelf" <> xRec."BDL Shelf" then BDLUpdateShelfNo();
            end;
        }
    }
    procedure BDLUpdateShelfNo()
    var
        NewShelfNo: Code[10];
    begin
        Evaluate(NewShelfNo, Rec."BDL Area" + Rec."BDL Section" + Rec."BDL Shelf");
        If NewShelfNo <> "Shelf No." then Validate("Shelf No.", NewShelfNo);
    end;
}
