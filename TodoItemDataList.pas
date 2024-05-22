unit TodoItemDataList;

interface

uses
  System.Generics.Collections, TodoItemData, System.JSON.Serializers,
  System.Classes, System.JSON, System.SysUtils, System.JSON.Types;

type
  TTodoItemsWrapper = class
  public
    TotalItemCount: Integer;
    TodoItems: TObjectList<TTodoItemData>;
    constructor Create;
    destructor Destroy; override;
  end;

  TTodoItemDataList = class
  private

  public
    FTotalItemCount: Integer;
    FTodoItems: TObjectList<TTodoItemData>;

    constructor Create;
    destructor Destroy; override;
    function NumCompletedItems(): Integer;
    function AddTodoItem(Header, Notes: string): TTodoItemData; overload;
    function RemoveTodoItem(ItemID: Integer): Boolean;
    function UpdateTodoItem(ItemID: Integer; Completed: Boolean; Notes: string): Boolean;
    function Serialize: string;
    procedure Deserialize(const AJsonStr: string);

    procedure SaveToFile(const FileName: string);
    procedure LoadFromFile(const FileName: string);
  end;

implementation

constructor TTodoItemsWrapper.Create;
begin
  inherited Create;
  TotalItemCount := 0;
  TodoItems := TObjectList<TTodoItemData>.Create(False);
end;

destructor TTodoItemsWrapper.Destroy;
begin
  TodoItems.Free;
  inherited;
end;

constructor TTodoItemDataList.Create;
begin
  inherited Create;
  FTotalItemCount := 0;
  FTodoItems := TObjectList<TTodoItemData>.Create(False);
end;

destructor TTodoItemDataList.Destroy;
begin
  FTodoItems.Free;
  inherited;
end;

function TTodoItemDataList.AddTodoItem(Header, Notes: string): TTodoItemData;
begin
  FTotalItemCount := FTotalItemCount + 1;
  Result := TTodoItemData.Create;
  Result.ID := FTotalItemCount;
  Result.Header := Header;
  Result.Notes := Notes;
  Result.Completed := False;
  FTodoItems.Add(Result);
end;

function TTodoItemDataList.RemoveTodoItem(ItemID: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to FTodoItems.Count - 1 do
  begin
    if FTodoItems.Items[i].ID = ItemID then
    begin
      FTodoItems.Delete(i);
      Result := True;
      Break;
    end;
  end;
end;

function TTodoItemDataList.UpdateTodoItem(ItemID: Integer; Completed: Boolean; Notes: string): Boolean;
var
  i: Integer;
  Item: TTodoItemData;
begin
  Result := False;
  for i := 0 to FTodoItems.Count - 1 do
  begin
    if FTodoItems.Items[i].ID = ItemID then
    begin
      FTodoItems[i].Notes := Notes;
      FTodoItems[i].Completed := Completed;

      Result := True;
      Break;
    end;
  end;
end;

function TTodoItemDataList.NumCompletedItems(): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to FTodoItems.Count - 1 do
  begin
    if FTodoItems.Items[i].Completed = true then
    begin
      Result := Result + 1;
    end;
  end;
end;

function TTodoItemDataList.Serialize(): string;
var
  Serializer: TJsonSerializer;
  Wrapper: TTodoItemsWrapper;
begin
  Wrapper := TTodoItemsWrapper.Create;
  try
    Wrapper.TotalItemCount := FTotalItemCount;
    Wrapper.TodoItems.AddRange(FTodoItems);

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
      FTotalItemCount := Wrapper.TotalItemCount;

      FTodoItems.Clear();
      FTodoItems.AddRange(Wrapper.TodoItems);
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
