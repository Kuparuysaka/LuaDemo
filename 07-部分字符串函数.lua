print(string.upper("hello"))--ת��Ϊ��д
print(string.lower("Hello"))--ת��ΪСд
print(string.gsub("weiyinfui", 'i', '$', 2)) --�ַ����滻
print(string.find("Hello Lua user", "Lua", 1)) --�ַ�������,����������Ϊ������ʼλ��
print(string.reverse("hello"))--�ߵ�˳��
print(string.format("%d+%d=%d", 3, 4, 3 + 4))--��ʽ��
print(string.char(97, 98, 99, 100))--�ٷ�����Ϊchar ����������ת���ַ������ӣ��������ΪASC���Ӧ
s = "huoziwei"
print(#s, string.len(s)) --��ʾռ�õ��ֽ���
print(string.rep(s, 3)) --�����ַ���string��n������

--�ַ�����ʽ��
string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- �����ַ�����ʽ��
print(string.format("������ʽ�� %s %s",string1,string2))
-- ���ڸ�ʽ��
date = 2; month = 1; year = 2014
print(string.format("���ڸ�ʽ�� %02d/%02d/%03d", date, month, year)) --%02d��ʾ����������ټ�λ
print(string.format("���ڸ�ʽ�� %02d/%02d/%06d", date, month, year)) --�����02/01/002014                                                          
-- ʮ���Ƹ�ʽ��
print(string.format("%.4f",1/3))


string.format("%c", 83)                 -- ���S
string.format("%+d", 17.0)              -- ���+17
string.format("%05d", 17)               -- ���00017
string.format("%o", 17)                 -- ���21
string.format("%u", 3.14)               -- ���3
string.format("%x", 13)                 -- ���d
string.format("%X", 13)                 -- ���D
string.format("%e", 1000)               -- ���1.000000e+03
string.format("%E", 1000)               -- ���1.000000E+03
string.format("%6.3f", 13)              -- ���13.000
string.format("%q", "One\nTwo")         -- ���"One\
                                        -- ����Two"
string.format("%s", "monkey")           -- ���monkey
string.format("%10s", "monkey")         -- ���    monkey
string.format("%5.3s", "monkey")        -- ���  mon


--�ַ��������໥ת��
-- �ַ�ת��
-- ת����һ���ַ�
print(string.byte("Lua"))
-- ת���������ַ�
print(string.byte("Lua",3))
-- ת��ĩβ��һ���ַ�
print(string.byte("Lua",-1))
-- �ڶ����ַ�
print(string.byte("Lua",2))
-- ת��ĩβ�ڶ����ַ�
print(string.byte("Lua",-2))
-- ���� ASCII ��ת��Ϊ�ַ�
print(string.char(97))

--[[
lua��������ʽ�ȽϹ���

.(��): ���κ��ַ����
%a: ���κ���ĸ���
%c: ���κο��Ʒ����(����\n)
%d: ���κ��������
%l: ���κ�Сд��ĸ���
%p: ���κα��(punctuation)���
%s: ��հ��ַ����
%u: ���κδ�д��ĸ���
%w: ���κ���ĸ/�������
%x: ���κ�ʮ�����������
%z: ���κδ���0���ַ����
%x(�˴�x�Ƿ���ĸ�������ַ�): ���ַ�x���. ��Ҫ����������ʽ���й��ܵ��ַ�(^$()%.[]*+-?)���������, ����%%��%���
[�����ַ���]: ���κ�[]�а������ַ������. ����[%w_]���κ���ĸ/����, ���»��߷���(_)���
[^�����ַ���]: ���κβ�������[]�е��ַ������. ����[^%s]���κηǿհ��ַ����
-- --]]
