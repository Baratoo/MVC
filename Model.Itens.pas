unit Model.Itens;

interface

uses
  Model.Interfaces;

type
  TModelItens = class(TInterfacedObject, IModelItens)
    private
      FParent : IModelVenda;
      FCodigo : Integer;
    public
      constructor Create(Parent : IModelVenda);
      destructor Destroy; override;
      class function New(Parent : IModelVenda) : IModelItens;
      function Codigo (Value : Integer) : IModelItens;
      function Vender : IModelItens;
      function &End : IModelVenda;
  end;

implementation

{ TModelItens }

function TModelItens.Codigo(Value: Integer): IModelItens;
begin
  Result := Self;
  FCodigo := Value;
end;

function TModelItens.&End: IModelVenda;
begin
  Result := FParent;
end;

constructor TModelItens.Create(Parent : IModelVenda);
begin
  FParent := Parent;
end;

destructor TModelItens.Destroy;
begin

  inherited;
end;

class function TModelItens.New(Parent : IModelVenda) : IModelItens;
begin
  Result := Self.Create(Parent);
end;

function TModelItens.Vender: IModelItens;
begin
  Result := Self;
end;

end.
