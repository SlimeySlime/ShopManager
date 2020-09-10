program ShopPrj;

uses
  Forms,
  Customer in 'Customer.pas' {CustomerForm},
  CustomerAdd in 'CustomerAdd.pas' {CustomerAddForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCustomerForm, CustomerForm);
  Application.Run;
end.
