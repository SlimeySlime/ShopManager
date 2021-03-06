unit Customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  Vcl.Menus;

type
  TCustomerForm = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CustomerAddButton: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1ct_count: TAutoIncField;
    ADOQuery1ct_name: TWideStringField;
    ADOQuery1ct_Id: TWideStringField;
    ADOQuery1ct_password: TWideStringField;
    ADOQuery1ct_phoneNumber: TWideStringField;
    ADOQuery1ct_homeNumber: TWideStringField;
    ADOQuery1ct_address1: TWideStringField;
    ADOQuery1ct_address2: TWideStringField;
    ADOQuery1ct_email: TWideStringField;
    ADOQuery1ct_gender: TBooleanField;
    DataSource1: TDataSource;
    Label2: TLabel;
    db_seek: TDBEdit;
    Button4: TButton;
    MainMenu1: TMainMenu;
    procedure CustomerAddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerForm: TCustomerForm;

implementation

{$R *.dfm}

uses CustomerAdd;

procedure TCustomerForm.CustomerAddButtonClick(Sender: TObject);
begin
        with TCustomerAddForm.Create(Self) Do
        begin
            showmodal ;
            Free ;
        end;
end;

end.
