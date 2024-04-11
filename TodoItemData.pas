unit TodoItemData;

interface

type
  TTodoItemData = class
  private
    FHeader: string;
    FNotes: string;
    FCompleted: Boolean;

  public
    property Header: string read FHeader write FHeader;
    property Notes: string read FNotes write FNotes;
    property Completed: Boolean read FCompleted write FCompleted;
  end;

implementation

end.
