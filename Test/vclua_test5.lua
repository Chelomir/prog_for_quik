local vcl=require "qvcl"
local OnFormClose = function() message("BYE 2",1) mainForm:Release() vcl=nil end
local text = ''
local OnComboBoxChange = function()
							message(ComboBox.Text) 
							text = ComboBox.Text
						end

mainForm = vcl.Form{Caption="StakanMax", OnClose=OnFormClose }
ComboBox = vcl.ComboBox(mainForm, {Name = "ComboBoxx", top=10, left=10, Width=100, Text="�������...", 
  OnChange= OnComboBoxChange, ShowHint=true, Hint="������� ���..."})
for _,i in ipairs({"����� 1","����� 2","����� 3"}) do    ComboBox.Items:Add(i) end

mainForm:Show()

