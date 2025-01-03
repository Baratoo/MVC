unit Model.Interfaces;

interface

uses
  Controller.Observer.Interfaces;

type
  IModelItens = interface;

  IModelVenda = interface
    ['{B6051259-3917-4F3B-AB67-930B24931863}']
    function Item : IModelItens;
    function ObserverItem(Value : ISubjectItem) : IModelVenda; overload; //SET
    function ObserverItem : ISubjectItem; overload;                      //GET
  end;

  IModelItens = interface
    ['{15A014E4-DCF9-45A9-B3D1-DC6DFC927D77}']
    function Codigo (Value : Integer) : IModelItens;
    function Vender : IModelItens;
    function &End : IModelVenda;
  end;

implementation

end.
