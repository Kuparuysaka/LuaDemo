array = {"Google", "Runoob"}

function elementIterator (collection)
   local index = 0
   local count = #collection
   -- �հ�����
   return function ()
      index = index + 1
      if index <= count
      then
         --  ���ص������ĵ�ǰԪ��
         return collection[index]
      end
   end
end

for element in elementIterator(array)
do
   print(element)
end

--[=[
������������У����Կ���elementIterator������һ��������
��ʹ�þֲ��ⲿ����index��count��ͨ��ÿ�ε��ú���ʱ�������������ؼ����е�ÿ��Ԫ�ء�
��ʹ�ñհ�����������������������ʾ��������Ϊ�����������ϵ�ÿ��ʱ�䷵�ض��Ԫ�ء�
]=]