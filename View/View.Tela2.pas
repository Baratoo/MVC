unit View.Tela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Controller.Observer.Interfaces, Controller.Interfaces;

type
  TForm1 = class(TForm, IObserverItem)
    ListBox1: TListBox;
  private
    { Private declarations }
    FVenda : IControllerVendas;
    function UpdateItem(Value : TRecordItem) : IObserverItem;
  public
    { Public declarations }
    procedure ExibirForm(Parent : IControllerVendas);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.ExibirForm(Parent: IControllerVendas);
begin
  FVenda := Parent;
  FVenda.ObserverItem.Add(Self);
  Self.Show;
end;

function TForm1.UpdateItem(Value: TRecordItem): IObserverItem;
begin
  ListBox1.Items.Add(Value.Descricao);
end;

end.
