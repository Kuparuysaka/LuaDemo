--��ȫģʽ
-- ��ֻ����ʽ���ļ�
file = io.open("testio.lua", "r")

-- ����ļ���һ��
print(file:read())

-- �رմ򿪵��ļ�
file:close()

-- �Ը��ӵķ�ʽ��ֻд�ļ�
file = io.open("testio.lua", "a")

-- ���ļ����һ����� Lua ע��
file:write("--test")

-- �رմ򿪵��ļ�
file:close()

--[=[
��������:
file:seek(optional whence, optional offset): ���úͻ�ȡ��ǰ�ļ�λ��,�ɹ��򷵻����յ��ļ�λ��(���ֽ�),ʧ���򷵻�nil�Ӵ�����Ϣ������ whence ֵ������:

"set": ���ļ�ͷ��ʼ
"cur": �ӵ�ǰλ�ÿ�ʼ[Ĭ��]
"end": ���ļ�β��ʼ
offset:Ĭ��Ϊ0
��������file:seek()�򷵻ص�ǰλ��,file:seek("set")��λ���ļ�ͷ,file:seek("end")��λ���ļ�β�������ļ���С
file:flush(): ���ļ�д�뻺���е���������

io.lines(optional file name): ��ָ�����ļ�filenameΪ��ģʽ������һ����������,ÿ�ε��ý�����ļ��е�һ������,�����ļ�βʱ��������nil,���Զ��ر��ļ���
����������ʱio.lines() <=> io.input():lines(); ��ȡĬ�������豸�����ݣ�������ʱ���ر��ļ�,�磺
]=]

--eg
-- ��ֻ����ʽ���ļ�
--����ʵ��ʹ���� seek ��������λ���ļ������� 25 ��λ�ò�ʹ�� read ������ *a ������
--���ӵ���λ��(������ 25 ��λ��)��ȡ�����ļ���
file = io.open("testio.lua", "r")

file:seek("end",-25)
print(file:read("*a"))

-- �رմ򿪵��ļ�
file:close()
