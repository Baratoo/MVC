program MVC;

uses
  Vcl.Forms,
  View.Principal in 'View\View.Principal.pas' {Form2},
  Controller.Interfaces in 'Controller\Controller.Interfaces.pas',
  Controller.Vendas in 'Controller\Controller.Vendas.pas',
  Controller.Itens in 'Controller\Controller.Itens.pas',
  Model.Venda in 'Model\Model.Venda.pas',
  Model.Itens in 'Model\Model.Itens.pas',
  Model.Interfaces in 'Model\Model.Interfaces.pas',
  Controller.Observer.Interfaces in 'Controller\Controller.Observer.Interfaces.pas',
  Controller.Observer.Itens in 'Controller\Controller.Observer.Itens.pas',
  View.Tela2 in 'View\View.Tela2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
