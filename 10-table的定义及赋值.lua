-- �򵥵� table
mytable = {}
print("mytable �������� ",type(mytable))

--table������������þ��ǵ����ֵ����ã��������������κ���ֵ
t={}
t[{}] = "table"                 -- key �����Ǳ�
t[1] = "int"                    -- key ����������
t[1.1] = "double"               -- key ������С��
t[function () end] = "function" -- key �����Ǻ���
t[true] = "Boolean"             -- key �����ǲ���ֵ
t["abc"] = "String"             -- key �������ַ���
t[io.stdout] = "userdata"       -- key ������userdata
t[coroutine.create(function () end)] = "Thread" -- key������thread

--table��Ϊ����
--�� key Ϊ����ʱ��table �Ϳ��Ե����������á�
--�������������һ�� ������1��ʼ ��û�й̶����ȣ����Ը�����Ҫ�Զ����������顣
a = {}
for i=0,5 do  -- ע�⣬�������д����i��0��ʼ
 a[i] = 0
end
--���� table ������������ʱ��
--����ͨ�� ���Ȳ����� # ����ȡ����ĳ���
--����Ľ����5
print(#a)


--��table���и�ֵ
--[=[����ʾ��˵����������Ϊ table a ������Ԫ�أ�Ȼ�� a ��ֵ�� b��
�� a �� b ��ָ��ͬһ���ڴ档��b��ֵ�ı�ʱ����a��ֵ����Ӱ���
����� b����Ϊ nil �� aͬ���ܷ��� table ��Ԫ�ء�]=]
mytable[1]= "Lua"
mytable["wow"] = "�޸�ǰ"
print("mytable ����Ϊ 1 ��Ԫ���� ", mytable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- alternatetable��mytable����ָͬһ�� table
alternatetable = mytable

print("alternatetable ����Ϊ 1 ��Ԫ���� ", alternatetable[1])
print("mytable ����Ϊ wow ��Ԫ���� ", alternatetable["wow"])

alternatetable["wow"] = "�޸ĺ�"

print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

-- �ͷű���
alternatetable = nil
print("alternatetable �� ", alternatetable)

-- mytable ��Ȼ���Է���
print("mytable ����Ϊ wow ��Ԫ���� ", mytable["wow"])

mytable = nil
print("mytable �� ", mytable)