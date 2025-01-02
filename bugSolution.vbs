Function MyFunction(param1, param2)
  On Error Resume Next 'Enable error handling
  If IsEmpty(param1) Or IsEmpty(param2) Then
    Err.Raise 13, , "Parameters cannot be empty"
  End If
  On Error GoTo 0 'Disable error handling
  If Err.Number <> 0 Then
    ' Handle the error gracefully
    MsgBox "Error: " & Err.Description, vbCritical
    MyFunction = Null 'Return null to indicate failure 
    Exit Function
  End If
  ' ... rest of the function ...
End Function