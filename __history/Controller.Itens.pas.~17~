unit Controller.Itens;

interface

uses
  Controller.Interfaces;

type
  TControllerItens = class(TInterfacedObject, IControllerItens)
    private
      [weak] //Evitar vazamento de memória
      FParent : IControllerVendas;
      FCodigo : Integer;
    public
      constructor Create(Parent : IControllerVendas);
      destructor Destroy; override;
      class function New(Parent : IControllerVendas) : IControllerItens;//Injeção de Dependencia
      function Codigo (Value : Integer) : IControllerItens;
      function Vender : IControllerItens;
      function &End : IControllerVendas;
  end;

implementation

uses
  System.SysUtils;

{ TControllerItens }

function TControllerItens.Codigo(Value: Integer): IControllerItens;
begin
  Result := Self;
  FCodigo := Value;
end;

function TControllerItens.&End: IControllerVendas;
begin
  Result := FParent;
end;

constructor TControllerItens.Create(Parent : IControllerVendas);
begin
  FParent := Parent;
end;

destructor TControllerItens.Destroy;
begin
  inherited;
end;

class function TControllerItens.New(Parent : IControllerVendas) : IControllerItens;
begin
  Result := Self.Create(Parent);
end;

function TControllerItens.Vender: IControllerItens;
begin
  Result := Self;
  FParent.Model.Item.Codigo(FCodigo).Vender; //memoria
end;

end.
