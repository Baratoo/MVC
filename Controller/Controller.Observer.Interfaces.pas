unit Controller.Observer.Interfaces;

interface

type

  TRecordItem = record
    Descricao : string;
    Quantidade : Currency;
    Valor : Currency;
  end;

  IObserverItem = interface
    ['{BA099C58-D096-451A-80C2-0B198F870376}']
    function UpdateItem(Value : TRecordItem) : IObserverItem;
  end;

  ISubjectItem = interface
    ['{1BE93ED9-2BDB-4378-B685-D9A295FBDBDE}']
    function Add(Value : IObserverItem) : ISubjectItem;
    function Notify(Value : TRecordItem) : ISubjectItem;
  end;

implementation

end.
