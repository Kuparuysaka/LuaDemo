--ʵ������ n ��ƽ��
function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end

for i,n in square,3,0 --square��һ�����Բ������еĺ�����3��0Ϊ����
do
   print(i,n)
end


--��������������޸ģ�������⣬�޸�Ϊ����ipairs
function square(iteratorMaxCount,currentNumber)
   if currentNumber<iteratorMaxCount
   then
      currentNumber = currentNumber+1
   return currentNumber, currentNumber*currentNumber
   end
end
function squares(iteratorMaxCount)
   return square,iteratorMaxCount,0
end 

for i,n in squares(3)
do
 print(i,n)
end