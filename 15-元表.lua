--Ԫ���еĶ���
--mytable = {}                          -- ��ͨ��
--mymetatable = {}                      -- Ԫ��
--setmetatable(mytable,mymetatable)     -- �� mymetatable ��Ϊ mytable ��Ԫ��
--�������д������д��һ��
--mytable = setmetatable({},{})

--ʵ��
local mt = {}
--����mt.__addԪ��������ʵ����Ԫ����һ�����������ֵ��Ϊ���������Ԫ�غϲ��󷵻�һ���±�
mt.__add = function(t1,t2)
    local temp = {}
    for _,v in pairs(t1) do
        table.insert(temp,v)
    end
    for _,v in pairs(t2) do
        table.insert(temp,v)
    end
    return temp
end
local t1 = {1,2,3}
local t2 = {2}
--����t1��Ԫ��Ϊmt
setmetatable(t1,mt)

local t3 = t1 + t2 --������ִ��t1+t2��ʱ�򣬻�ȥ����t1��Ԫ��mt��__addԪ�������м��㡣
                   --���������Ϊ + ���򷽷��д�������������t1��t2��
		   --����� + ��Ԫ���� add���Ԫ���ԭ����������
--���t3
local st = "{"
for _,v in pairs(t3) do
    st = st..v..", "
end
st = st.."}"
print(st)
--[=[
����Ĺ����ǣ
1.�鿴t1�Ƿ���Ԫ�����У���鿴t1��Ԫ���Ƿ���__addԪ��������������á�
2.�鿴t2�Ƿ���Ԫ�����У���鿴t2��Ԫ���Ƿ���__addԪ��������������á�
3.����û����ᱨ��
����˵������ͨ��������t1Ԫ���__addԪ�������ﵽ����������ͨ��+������ӵ�Ч��]=]
