unit Model.Venda;

interface

uses
  Model.Interfaces, Model.Itens, Controller.Observer.Interfaces;

type
  TModelVenda = class(TInterfacedObject, IModelVenda)
    private
      FItem : TModelItens;
      FObserverItem : ISubjectItem;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : IModelVenda;
      function Item : IModelItens;
      function ObserverItem(Value : ISubjectItem) : IModelVenda; overload;
      function ObserverItem : ISubjectItem; overload;
  end;

implementation

{ TModelVenda }

constructor TModelVenda.Create;
begin
  FItem := TModelItens.Create(Self);
end;

destructor TModelVenda.Destroy;
begin

  inherited;
end;

function TModelVenda.Item: IModelItens;
begin
  Result := FItem;
end;

class function TModelVenda.New: IModelVenda;
begin
  Result := Self.Create;
end;


function TModelVenda.ObserverItem: ISubjectItem;//GET
begin
  Result := FObserverItem;
end;

function TModelVenda.ObserverItem(Value: ISubjectItem): IModelVenda;
begin
  Result := Self;
  FObserverItem := Value;
end;

end.
