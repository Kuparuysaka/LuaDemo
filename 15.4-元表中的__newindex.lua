--__newindex
--[=[
__newindex Ԫ���������Ա���£�__index�������Ա���� ��
��Ϊtable��һ�������ڵ�������ֵʱ����ȥ����Ԫ���е�__newindexԪ����
��������������������������и�ֵ����
]=]
--��Ϊ����
--__newindex��һ������ʱ�Ὣ��ֵ����еı�����������ֵ��������ȥ���á����Ա���иı�
local mt = {}
--��һ������ʱ���Լ����ڶ��������������������������Ǹ���ֵ
mt.__newindex = function(t,index,value)
    print("index is "..index)
    print("value is "..value)
end

t = {key = "it is key"}
setmetatable(t,mt)
--���������������key��ֵ
print(t.key)
--Ϊ���в����ڵ�newKey������ֵ��������Ԫ���__newIndexԪ����������˲�����Ϣ
t.newKey = 10
--���е�newKey����ֵ���ǿգ����濴����һ����ֵ��������ʵֻ�ǵ�����__newIndexԪ������
--��û�ж�t�е�Ԫ�ؽ��иĶ�
print(t.newKey)


--��Ϊtable
--__newindex��һ��tableʱ
--Ϊt�в����ڵ�������ֵ�Ὣ��������ֵ����__newindex��ָ��ı���
--����ԭ���ı���иı�
local mt = {}
--��__newindexԪ��������Ϊһ���ձ�newTable
local newTable = {}
mt.__newindex = newTable
t = {}
setmetatable(t,mt)
print(t.newKey,newTable.newKey)
--��t�в����ڵ��������и�ֵʱ������t��Ԫ���е�__newindexԪ����ָ����һ�������Բ�û�ж�t�е��������и�ֵ�����������ǽ�__newindex��ָ���newTable��newKey������ֵΪ��"it is newKey"
t.newKey = "it is newKey"
print(t.newKey,newTable.newKey)
