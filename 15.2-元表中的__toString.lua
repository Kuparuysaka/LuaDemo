--Ԫ����__tostring
--__tostring�����޸�tableת��Ϊ�ַ�������Ϊ
local mt = {}
--�����Ǳ��Լ�
mt.__tostring = function(t)
    local s = "{"
    for i,v in ipairs(t) do
        if i > 1 then  --������i=0ʱ���ֵ����
            s = s..", "
        end
        s = s..v
    end
    s = s .."}"
    return s
end

t = {1,2,3}
--ֱ�����t�����Ϊt���table�ĵ�ַ
print(t)
--��t��Ԫ����Ϊmt�����Ϊ{1,2,3}
setmetatable(t,mt)
--���t
print(t)