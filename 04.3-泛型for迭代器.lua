array = {"Google", "Runoob"}

for key,value in ipairs(array)
do
   print(key, value)
end

--[=[
����ʵ��������ʹ���� Lua Ĭ���ṩ�ĵ������� ipairs��

�������ǿ������� for ��ִ�й��̣�

���ȣ���ʼ�������� in ������ʽ��ֵ�����ʽӦ�÷��ط��� for ��Ҫ������ֵ������������״̬���������Ʊ�����
    ���ֵ��ֵһ����������ʽ���صĽ�����������������Զ��� nil ���㣬������ֻᱻ���ԡ�
�ڶ�����״̬�����Ϳ��Ʊ�����Ϊ�������õ���������ע�⣺���� for �ṹ��˵��״̬����û���ô��������ڳ�ʼ��ʱ��ȡ����ֵ�����ݸ�������������
�������������������ص�ֵ���������б�
���ģ�������صĵ�һ��ֵΪnilѭ������������ִ��ѭ���塣
���壬�ص��ڶ����ٴε��õ�������
]=]

--[=[
����˵
for var_1, ..., var_n in explist do block end 

�ȼ���
do 
 local _f, _s, _var = explist 
 while true do 
  local var_1, ... , var_n = _f(_s, _var) 
  _var = var_1 
  if _var == nil then break end 
  block 
 end 
end 

���� for ���Լ��ڲ���������ֵ����������(_f)��״̬����(_s)�����Ʊ���(_var)
������ֵҪ�������⣬���Ӳ�����������׶�Ӧ�����ɶ����Ҳ��ⲻ��
]=]

--[=[
pairs: ���� table�����Ա����������е� key ���Է��� nil

ipairs: �������飬���ܷ��� nil,������� nil ���˳�

�������ipairs��ʾ��
local function iter(s, i)
 i = i + 1
 local v = s[i]
 if v then return i, v end
end
function ipairs(s)
 return iter, s, 0
end
]=]