--lua��8�����ͷֱ�Ϊ��nil��boolean��number��string��userdata��function��thread �� table��
--����thread����ר�Ž��ܣ�thread����Эͬ����userdataΪ�û��Զ��塣
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
--����Ҫע��nil
--nil ���ͱ�ʾһ��û���κ���Чֵ����ֻ��һ��ֵ�������ӡһ��û�и�ֵ�ı�����������һ�� nil ֵ
--ͬʱ����ȫ�ֱ����� table��nil ����һ��"ɾ��"����
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

