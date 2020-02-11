--Ԫ����__index
--[=[
����table��һ�������ڵ�����ʱ����ʹ�õ�Ԫ���__indexԪ������
����ͨ���������� table ��ʱ����������û��ֵ��
��ôLua�ͻ�Ѱ�Ҹ�table��metatable���ٶ���metatable���е�__index ����
���__index����һ�����Lua���ڱ���в�����Ӧ�ļ���
����˵��������a���а�������һ��b��ʹ��__index��Ϳ���ͨ��a�����b���еĶ���
]=]

--__index��Ϊ����

--eg1:
local mt = {}
--��һ�������Ǳ��Լ����ڶ��������ǵ��õ�����
mt.__index = function(t,key)
    return "it is "..key
end

t = {1,2,3}
--���δ�����key���������Ϊnil
print(t.key)
setmetatable(t,mt)
--����Ԫ������δ�����key����������Ԫ���__index����������"it is key"���
print(t.key)

--eg2:
mytable = setmetatable({key1 = "value1"}, {  
  __index = function(mytable, key)    --���ֱ�ʾ�����������Ϊ��eg1��mt�еķ����ŵ�����������
    if key == "key2" then
      return "metatablevalue"
    else
      return nil
    end
  end
})

print(mytable.key1,mytable.key2) --������Ϊvalue1    metatablevalue
--[=[
��������
mytable ��ֵΪ {key1 = "value1"}��
mytable ������Ԫ��Ԫ����Ϊ __index��
��mytable���в��� key1������ҵ������ظ�Ԫ�أ��Ҳ����������
��mytable���в��� key2������ҵ������� metatablevalue���Ҳ����������
�ж�Ԫ����û��__index���������__index������һ������������øú�����
Ԫ�����в鿴�Ƿ��� "key2" ���Ĳ�����mytable.key2�����ã���������� "key2" �������� "metatablevalue"�����򷵻� mytable ��Ӧ�ļ�ֵ��
]=]

--���Խ�eg2��Ϊeg3:
mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)

--__index��Ϊtable
--����__indexԪ���������и��������򷵻ظ�������Ӧ��ֵ�����򷵻�nil
local mt = {}
mt.__index = {key = "it is key"}

t = {1,2,3}
--���δ�����key���������Ϊnil
print(t.key)
setmetatable(t,mt)
--�������δ���壬��Ԫ���__index�ж����key����ʱ�����__index�е�key����ֵ"it is key"
print(t.key)
--�������δ���壬��Ԫ���__index��Ҳδ�����ֵʱ�����Ϊnil
print(t.key2)
