co = coroutine.create(   --���� coroutine������ coroutine�� ������һ��������
                         --���� resume ���ʹ�õ�ʱ��ͻ��Ѻ�������
    function(i)
        print(i);
    end
)
 
coroutine.resume(co, 1)   -- 1   --���� coroutine���� create ���ʹ��
print(coroutine.status(co))  -- dead
 
print("----------")
 
co = coroutine.wrap(   --���� coroutine������һ��������
                       --һ�����������������ͽ��� coroutine���� create �����ظ�
		       --��create������������Ϊ���÷�ʽ��һ��
    function(i)
        print(i);
    end
)
 
co(1)
 
print("----------")
 
co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield()
        end
    end
)
 
coroutine.resume(co2) --1
coroutine.resume(co2) --2
coroutine.resume(co2) --3
 
print(coroutine.status(co2))   -- suspended
print(coroutine.running())  --���������ܵ� coroutine��������һ��״̬Ϊrunning���߳�
                            --һ�� coroutine ����һ���̣߳�
                            --��ʹ��running��ʱ�򣬾��Ƿ���һ�� corouting ���̺߳�
 
print("----------")
--[=[
coroutine.running�Ϳ��Կ�����,coroutine�ڵײ�ʵ�־���һ���̡߳�
��createһ��coroutine��ʱ����������߳���ע����һ���¼���
��ʹ��resume�����¼���ʱ��create��coroutine�����ͱ�ִ���ˣ�
������yield��ʱ��ʹ������ǰ�̣߳��Ⱥ��ٴ�resume�����¼���
]=]


--eg2
function foo (a)
    print("foo �������", a)
    return coroutine.yield(2 * a) -- ����  2*a ��ֵ
end
 
co = coroutine.create(function (a , b)
    print("��һ��Эͬ����ִ�����", a, b) -- co-body 1 10
    local r = foo(a + 1)
     
    print("�ڶ���Эͬ����ִ�����", r)     --ע����������Ľ��Ϊ "r"���ֵ��ԭ���ǵڶ���resume������"r"���������
                                           --������Ϊ��һ��yield�ķ���ֵ��������һ�ε�local r = "r"
					   --������yield��ʱ��ͬ��
					   --������ʵ���˽��ⲿ��ֵ���뵽�ڲ���
    local r, s = coroutine.yield(a + b, a - b)  -- a��b��ֵΪ��һ�ε���Эͬ����ʱ����
     
    print("������Эͬ����ִ�����", r, s)
    return b, "����Эͬ����"                   -- b��ֵΪ�ڶ��ε���Эͬ����ʱ����
end)
       
print("main", coroutine.resume(co, 1, 10)) -- true, 4
print("--�ָ���----")
print("main", coroutine.resume(co, "r")) -- true 11 -9 
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- true 10 end
print("---�ָ���---")
print("main", coroutine.resume(co, "x", "y")) -- cannot resume dead coroutine
print("---�ָ���---")
--[=[
����resume����Эͬ������,resume�����ɹ�����true�����򷵻�false��
Эͬ�������У�
���е�yield��䣻
yield����Эͬ���򣬵�һ��resume���أ���ע�⣺�˴�yield���أ�������resume�Ĳ�����
�ڶ���resume���ٴλ���Эͬ���򣻣�ע�⣺�˴�resume�Ĳ����У����˵�һ��������ʣ�µĲ�������Ϊyield�Ĳ�����
yield���أ�
Эͬ����������У�
���ʹ�õ�Эͬ�������������ɺ�������� resume�����������cannot resume dead coroutine
resume��yield�����ǿ��֮�����ڣ�resume���������У������ⲿ״̬�����ݣ����뵽Эͬ�����ڲ�����yield���ڲ���״̬�����ݣ����ص������С�
]=]