--rawset��������ֱ��Ϊ���������ĸ�ֵ������ͨ��Ԫ���__newindexԪ������
local mt = {}
local newTable = {}
mt.__newindex = newTable
t = {}
setmetatable(t,mt)
print(t.newKey,newTable.newKey)
--ͨ��rawsetֱ����t��newKey������ֵ
rawset(t,"newKey","it is newKey")
print(t.newKey,newTable.newKey)