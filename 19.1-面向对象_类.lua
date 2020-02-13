--eg1
--[[
table�в����ֶ�name�Ĺ��̣�
1.table�Ƿ����ֶ�name���ǣ��򷵻�name�����������һ��
2.table�Ƿ�������metatable���ǣ�����һ�������򷵻�nil
3.table��metatable�Ƿ���__index�ֶΣ��ǣ�����һ�������򷵻�nil
4.table��metatable�е�__index�Ƿ���name�ֶΣ����򷵻�__index.name�����򷵻�nil
]]

--[[
1.ʹ��metatableʵ����
ԭ��
    ʹ��metatable�е�__index�ֶΣ�ָ��һ��table��ΪA��A�а�����һЩ���Ժͷ�����
    �½�һ�����󣬼�������һ���µ�table��ΪB������B��metatable����ΪA������B�Ϳ��Է���A�е����Ժͷ���
]]

-- Person��
Person = {}
Person.__index = Person --Ԫ���__index�ֶκ���Ҫ

Person.name = ""
Person.age = 0

function Person:new()
    local obj = {}
    setmetatable(obj, Person)
    return obj
end

function Person:say(words)
    print(words or "Hello")
end


-- ʵ��һ��Person��Ķ���
local me = Person.new()
print(me.name)  -- ������ַ���
print(me.age)   -- ���0
me:say()        -- ���Hello

me.name = nil
print(me.name)  -- me���table�����û��name�ֶΣ����������name��Ϊnil��������ʵ�����Ȼ��metatable�е�name

me.name = "xiaoming"
print(me.name)  -- ������ʵ�����me���table�Լ���name�ֶ�
print(me:say("I am xiaoming.")) -- ���õĻ���metatable��say����

--[[
�ܽ᣺
    ��ν���࣬ʵ����ͨ��metatable��һ��table�ṩ���涨����һЩĬ�ϵ����Ժͷ�����
    �����table�Լ���ĳ���ֶ�ʱ�����ʵ��ľ������table�Լ����ֶκͷ�����
    ���򣬷��ʵ���metatable�ṩ��Ĭ���ֶΡ�
]]



--eg2��
classA = {
 a=0,b=0
}

classA.__index = classA

function classA:new (a,b)
    local o = {}
    setmetatable(o,classA)
    o.a=a
    o.b=b
    return o  -- new������󷵻ص����´�����o,
              --����test_a, test_b���շ��ʵĲŲ���ͬһ��getA getB
	      --o��classA����Ϊ��Ԫ��
end


--[=[
getA�������selfָ���ǵ������Ķ���,������classA���������
(��ȻclassAҲ������Ϊ�������Ķ���,����  "classA:new(1,2)"  �ﴫ���self����classA����)
classA:getA��д��ֻ��˵��getA����classA���涨��Ķ���
]=]

function classA:getA()
    return self.a
end

function classA:getB()
    return self.b
end

local test_a = classA:new(1,2)
local test_b = classA:new(2,3)
print(test_a:getA().."  "..test_a:getB())
print(test_b:getA().."  "..test_b:getB())

--[=[
test_a:getA()�ĵ���˳��:
1.�鿴test_a����û��getA���� ?����test_a������ĳ�ԱΪ: a,b,Ԫ�� classA?
2.����û��getA����,����ȷ��getA��û��Ԫ��, ������Ԫ�� classA
3.�鿴 Ԫ��classA��û�� __indexԪ����,���ִ���
4.��������classA����û��getA()����
5.���ִ���getA()����,�͵�����?"classA:getA()"? ע�����ﴫ���self ��test_a���� (�ؼ�3)
6.�鿴 test_a����û�� ��Աa , ����test_a������ĳ�ԱΪ: a,b,Ԫ�� classA?
7.���ִ���a,���Է���a

����: ������ʵtest_a test_b���ʵĶ����Լ������a��b,������classA��� a��b. ?(����:��classA��Ĵ������ ?����:��Ȼ������ȷִ��)

]=]



--eg3
--���յ�ʹ����ķ���
-- Ԫ��
Shape = {area = 0}

-- �����෽�� new
function Shape:new (o,side)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0
  self.area = side*side;
  return o
end

-- �����෽�� printArea
function Shape:printArea ()
  print("���Ϊ ",self.area)
end

-- ��������
myshape = Shape:new(nil,10)

myshape:printArea()