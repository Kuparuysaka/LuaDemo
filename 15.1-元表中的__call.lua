--Ԫ����__call
--__call������table����һ��������ʹ��
local mt = {}
--__call�ĵ�һ�����Ǳ��Լ�
mt.__call = function(mytable,...)
    --������в���
    for _,v in ipairs{...} do
        print(v)
    end
end

t = {}
setmetatable(t,mt)
--��t����һ����������
t(1,2,3)