# Python 中的变量赋值不需要类型声明。
#
# 每个变量在内存中创建，都包括变量的标识，名称和数据这些信息。

counter = 100  # 赋值整型变量
miles = 1000.0  # 浮点型
name = "John"  # 字符串
a = b = c = 1


# Python有五个标准的数据类型：
#
# Numbers（数字）
# String（字符串）
# List（列表）
# Tuple（元组）
# Dictionary（字典）

# 数字类型
def learn_numbers():
    # Python支持四种不同的数字类型：
    #
    # int（有符号整型）
    # long（长整型[也可以代表八进制和十六进制]）
    # float（浮点型）
    # complex（复数）
    return


# 字符串
def learn_string():
    s = 'abcdef'
    print(s[2:] * 2)
    return


# 列表
def learn_list():
    l = [0, '1', 3.0]
    print(len(l))
    return


# 元组，不可变列表
def learn_tuple():
    t = (1, 2, 3)
    print(t)
    return


# 字典， map?
def learn_dic():
    return


if __name__ == '__main__':
    learn_numbers()
    learn_string()
    learn_list()
    learn_tuple()
