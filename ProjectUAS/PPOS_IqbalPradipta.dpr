program PPOS_IqbalPradipta;

uses
  Vcl.Forms,
  UPOS_IqbalPradipta in 'UPOS_IqbalPradipta.pas' {frmMain},
  UPOS_MasterData in 'UPOS_MasterData.pas' {frmMasterData},
  UPOS_DM in 'UPOS_DM.pas' {DM: TDataModule},
  UPOS_Barang in 'UPOS_Barang.pas' {frmBarang},
  UPOS_Supplier in 'UPOS_Supplier.pas' {frmSupplier},
  UPOS_CUSTOMER in 'UPOS_CUSTOMER.pas' {frmCustomer},
  UPOS_Unit in 'UPOS_Unit.pas' {frmUnit},
  UPOS_TransaksiData in 'UPOS_TransaksiData.pas' {frmTransaksiData},
  UPOS_Pembelian in 'UPOS_Pembelian.pas' {frmPembelian},
  UPOS_CreatePO in 'UPOS_CreatePO.pas' {frmCreatePurchaseOrder},
  UPOS_AddItem in 'UPOS_AddItem.pas' {frmAddItem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
