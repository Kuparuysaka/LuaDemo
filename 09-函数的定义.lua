--���������ʵ��
--[[ ������������ֵ�����ֵ --]]
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result;
end
-- ���ú���
print("��ֵ�Ƚ����ֵΪ ",max(10,4))
print("��ֵ�Ƚ����ֵΪ ",max(5,6))

--��������Ϊ�������ݸ�����
myprint = function(param)
   print("���Ǵ�ӡ���� -   ##",param,"##")
end

function add(num1,num2,functionPrint)
   result = num1 + num2
   -- ���ô��ݵĺ�������
   functionPrint(result)
end
myprint(10)
-- myprint ������Ϊ��������
add(2,5,myprint)

--�෵��ֵ�ĺ���
function maximum (a)
    local mi = 1             -- ���ֵ����
    local m = a[mi]          -- ���ֵ
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end

print(maximum({8,10,23,12,5}))

--�ɱ�κ���
function average(...)
   result = 0
   local arg={...}    --> arg Ϊһ�����ֲ�����
   for i,v in ipairs(arg) do
      result = result + v
   end
   print("�ܹ����� " .. #arg .. " ����")
   return result/#arg --#�����ȣ������ʾ��ʱ�����ĸ���
end

print("ƽ��ֵΪ",average(10,5,3,4,5,6))

--�̶������ӿɱ����
--[=[ͨ���ڱ����䳤������ʱ��ֻ��Ҫʹ�� {��}��Ȼ���䳤�������ܻ����һЩ nil��
��ô�Ϳ����� select ���������ʱ䳤�����ˣ�select('#', ��) ���� select(n, ��)
select('#', ��) ���ؿɱ�����ĳ���
select(n, ��) ���ڷ��� n �� select('#',��) �Ĳ���
����selectʱ�����봫��һ���̶�ʵ��selector(ѡ�񿪹�)��һϵ�б䳤������
���selectorΪ����n,��ôselect�������ĵ�n���ɱ�ʵ�Σ�
����ֻ��Ϊ�ַ���"#",����select�᷵�ر䳤������������]=]
    function foo(...)  
        for i = 1, select('#', ...) do  -->��ȡ��������
            local arg = select(i, ...); -->��ȡ����
            print("arg", arg);  
        end  
    end  
 
    foo(1, 2, 3, 4);  
 
