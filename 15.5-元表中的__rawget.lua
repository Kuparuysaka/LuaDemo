--rawget �� rawset
--��ʱ������ϣ��ֱ�ӸĶ����ȡ���е�ֵʱ������Ҫrawget��rawset�����ˡ�

--rawget��������ֱ�ӻ�ȡ������������ʵ��ֵ������ͨ��Ԫ���__indexԪ������
local mt = {}
mt.__index = {key = "it is key"}
t = {}
setmetatable(t,mt)
print(t.key)
--ͨ��rawgetֱ�ӻ�ȡt�е�key����������ȡ��t�����ֵ��������_index�������
--t���������û��key���ֵ�ģ����Ի�ȡ����ֵ����nil
print(rawget(t,"key"))
