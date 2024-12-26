program MVC;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form2},
  Controller.Interfaces in 'Controller.Interfaces.pas',
  Controller.Vendas in 'Controller.Vendas.pas',
  Controller.Itens in 'Controller.Itens.pas',
  Model.Venda in 'Model.Venda.pas',
  Model.Itens in 'Model.Itens.pas',
  Model.Interfaces in 'Model.Interfaces.pas',
  Controller.Observer.Interfaces in 'Controller.Observer.Interfaces.pas',
  Controller.Observer.Itens in 'Controller.Observer.Itens.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
