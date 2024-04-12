unit TodoItemDataList;

interface

uses
  System.Generics.Collections, TodoItemData, System.JSON.Serializers,
  System.Classes, System.JSON, System.SysUtils, System.JSON.Types;

type
  TTodoItemsWrapper = class
  public
    TodoItems: TObjectList<TTodoItemData>;
    CompletedItems: TObjectList<TTodoItemData>;
    constructor Create;
    destructor Destroy; override;
  end;

  TTodoItemDataList = class
  private

  public
    FTodoItems: TObjectList<TTodoItemData>;
    FCompletedItems: TObjectList<TTodoItemData>;

    constructor Create;
    destructor Destroy; override;
    function AddTodoItem(Header, Notes: string): TTodoItemData; overload;
    procedure AddTodoItem(Item: TTodoItemData); overload;
    procedure AddCompletedItem(Item: TTodoItemData);
    function RemoveTodoItem(Item: TTodoItemData): Boolean;
    function RemoveCompletedItem(Item: TTodoItemData): Boolean;
    function Serialize: string;
    procedure Deserialize(const AJsonStr: string);

    procedure SaveToFile(const FileName: string);
    procedure LoadFromFile(const FileName: string);
  end;

implementation

constructor TTodoItemsWrapper.Create;
begin
  inherited Create;
  TodoItems := TObjectList<TTodoItemData>.Create(False);
  CompletedItems := TObjectList<TTodoItemData>.Create(False);
end;

destructor TTodoItemsWrapper.Destroy;
begin
  TodoItems.Free;
  CompletedItems.Free;
  inherited;
end;

constructor TTodoItemDataList.Create;
begin
  inherited Create;
  FTodoItems := TObjectList<TTodoItemData>.Create(True);
  FCompletedItems := TObjectList<TTodoItemData>.Create(True);
end;

destructor TTodoItemDataList.Destroy;
begin
  FTodoItems.Free;
  FCompletedItems.Free;
  inherited;
end;

function TTodoItemDataList.AddTodoItem(Header, Notes: string): TTodoItemData;
begin
  Result := TTodoItemData.Create;
  Result.Header := Header;
  Result.Notes := Notes;
  Result.Completed := False;
  FTodoItems.Add(Result);
end;

procedure TTodoItemDataList.AddTodoItem(Item: TTodoItemData);
begin
  FTodoItems.Add(Item);
end;

procedure TTodoItemDataList.AddCompletedItem(Item: TTodoItemData);
begin
  FCompletedItems.Add(Item);
end;

function TTodoItemDataList.RemoveTodoItem(Item: TTodoItemData): Boolean;
begin
  Result := FTodoItems.Remove(Item) >= 0;
end;

function TTodoItemDataList.RemoveCompletedItem(Item: TTodoItemData): Boolean;
begin
  Result := FCompletedItems.Remove(Item) >= 0;
end;

function TTodoItemDataList.Serialize: string;
var
  Serializer: TJsonSerializer;
  Wrapper: TTodoItemsWrapper;
begin
  Wrapper := TTodoItemsWrapper.Create;
  try
    Wrapper.TodoItems.AddRange(FTodoItems);
    Wrapper.CompletedItems.AddRange(FCompletedItems);

    Serializer := TJsonSerializer.Create;
    try
      Result := Serializer.Serialize(Wrapper);
    finally
      Serializer.Free;
    end;
  finally
    Wrapper.Free;
  end;
end;

procedure TTodoItemDataList.Deserialize(const AJsonStr: string);
var
  Serializer: TJsonSerializer;
  Wrapper: TTodoItemsWrapper;
begin
  Serializer := TJsonSerializer.Create;
  try
    Wrapper := Serializer.Deserialize<TTodoItemsWrapper>(AJsonStr);
    try
      FTodoItems.Clear();
      FTodoItems.AddRange(Wrapper.TodoItems);

      FCompletedItems.Clear();
      FCompletedItems.AddRange(Wrapper.CompletedItems);
    finally
      Wrapper.Free();
    end;
  finally
    Serializer.Free();
  end;
end;

procedure TTodoItemDataList.SaveToFile(const FileName: string);
var
  JSONString: string;
  StringList: TStringList;
begin
  JSONString := Serialize();
  StringList := TStringList.Create;
  try
    StringList.Text := JSONString;
    StringList.SaveToFile(FileName);
  finally
    StringList.Free();
  end;
end;

procedure TTodoItemDataList.LoadFromFile(const FileName: string);
var
  JSONString: string;
  FileStream: TFileStream;
  StringList: TStringList;
begin
  if FileExists(FileName) then
  begin
    StringList := TStringList.Create;
    try
      StringList.LoadFromFile(FileName);
      JSONString := StringList.Text;
      Deserialize(JSONString);
    finally
      StringList.Free();
    end;
  end;
end;

end.
