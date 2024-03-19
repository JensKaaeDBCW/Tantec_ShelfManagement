codeunit 50500 "BDL Calculate Inv. Subscriber"
{
    [EventSubscriber(ObjectType::Report, Report::"Calculate Inventory", 'OnBeforeInsertItemJnlLine', '', true, true)]
    local procedure "Calculate Inventory_OnBeforeInsertItemJnlLine"(var ItemJournalLine: Record "Item Journal Line"; var InventoryBuffer: Record "Inventory Buffer")
    var
        StockKeepingUnit: Record "Stockkeeping Unit";
    begin
        If StockKeepingUnit.Get(ItemJournalLine."Location Code", ItemJournalLine."Item No.", ItemJournalLine."Variant Code")then begin
            ItemJournalLine.Validate("BDL Area", StockKeepingUnit."BDL Area");
            ItemJournalLine.Validate("BDL Section", StockKeepingUnit."BDL Section");
            ItemJournalLine.Validate("BDL Shelf", StockKeepingUnit."BDL Shelf");
        end;
    end;
}
