--�������table�ĺ�����������ʾ��
fruits = { "banana", "orange", "apple" }
-- ���� table ���Ӻ���ַ���
print("���Ӻ���ַ��� ", table.concat(fruits))

-- ָ�������ַ�
print("���Ӻ���ַ��� ", table.concat(fruits, ", "))

-- ָ������������ table
print("���Ӻ���ַ��� ", table.concat(fruits, ", ", 2, 3))

--Table�Ĳ�����Ƴ�
fruits = { "banana", "orange", "apple" }

-- ��ĩβ����
table.insert(fruits, "mango")
print("����Ϊ 4 ��Ԫ��Ϊ ", fruits[4])

-- ������Ϊ 2 �ļ�������
table.insert(fruits, 2, "grapes")
print("����Ϊ 2 ��Ԫ��Ϊ ", fruits[2])

print("���һ��Ԫ��Ϊ ", fruits[5])
table.remove(fruits)
print("�Ƴ������һ��Ԫ��Ϊ ", fruits[5])

--table������
fruits = { "banana", "orange", "apple", "grapes" }
print("����ǰ")
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("�����")
for k, v in ipairs(fruits) do
    print(k, v)
end