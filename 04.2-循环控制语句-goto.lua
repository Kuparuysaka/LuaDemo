--Lua ������� break ��������ѭ�����У������˳���ǰѭ������䣬����ʼ�ű�ִ�н����ŵ���䡣
--�����ʹ��ѭ��Ƕ�ף�break��佫ֹͣ���ڲ�ѭ����ִ�У�����ʼִ�е�����ѭ����䡣
--[ ������� --]
a = 10

--[ while ѭ�� --]
while( a < 20 )
do
   print("a ��ֵΪ:", a)
   a=a+1
   if( a > 15)
   then
      --[ ʹ�� break �����ֹѭ�� --]
      break
   end
end

--Lua �����е� goto �����������������������ת������ǵ���䴦��

local a = 1
::Label::print("--- goto label ---")
if a < 3 then
    goto label   -- a С�� 3 ��ʱ����ת����ǩ label
end
