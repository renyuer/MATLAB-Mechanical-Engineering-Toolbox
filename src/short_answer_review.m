%% short_answer_review - 简答题复习
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 输出所有简答题的标准答案模板

function short_answer_review()
    clc;
    fprintf('========================================================\n');
    fprintf('  简答题分点答案（必考）\n');
    fprintf('========================================================\n\n');
    
    q1();
    q2();
    q3();
    q4();
    q5();
    q6();
    
    fprintf('========================================================\n');
    fprintf('  提示：每题都要分点作答！\n');
    fprintf('========================================================\n');
end

function q1()
    fprintf('【Q1】MATLAB的主要功能有哪些？\n');
    fprintf('答：①数值分析与计算——矩阵运算、线性代数、数值积分等\n');
    fprintf('    ②数据分析和可视化——数据处理、统计分析、二维三维绘图\n');
    fprintf('    ③编程和算法开发——M文件编程、流程控制、函数开发\n');
    fprintf('    ④应用程序开发和部暑——GUI设计、独立应用程序生成\n\n');
end

function q2()
    fprintf('【Q2】数组运算（点运算）和矩阵运算的异同点？\n');
    fprintf('答：\n');
    fprintf('  相同点：矩阵是特殊的二维数组，存储形式相同；加减运算规则相同\n');
    fprintf('  不同点：①运算规则不同（自定义 vs 线性代数）\n');
    fprintf('          ②乘法不同（.*对应元素  vs  *行列内积求和）\n');
    fprintf('          ③除法不同（./对应元素  vs  /矩阵除法）\n');
    fprintf('          ④乘方不同（.^每个元素  vs  ^矩阵乘方）\n');
    fprintf('          ⑤转置不同（.''非共轭   vs  ''共轭转置）\n\n');
end

function q3()
    fprintf('【Q3】M脚本文件与M函数文件的区别？\n');
    fprintf('答：①输入输出参数——脚本不接收不返回；函数接收输入可返回输出\n');
    fprintf('    ②变量作用域——脚本变量全局保存在工作空间；函数变量默认为局部\n');
    fprintf('    ③第一行格式——脚本无要求；函数必须function开头\n');
    fprintf('    ④适用情况——脚本用于多次执行命令；函数需输入输出参数\n\n');
end

function q4()
    fprintf('【Q4】截面惯性矩的定义、作用和物理意义？\n');
    fprintf('答：定义——I_xx = ∫ y² dA，对某轴距离平方乘以微元面积在整个截面上的积分\n');
    fprintf('    作用/物理意义：\n');
    fprintf('    ①表征截面抵抗弯曲变形的能力\n');
    fprintf('    ②惯性矩越大，截面抗弯刚度越大，变形越小\n');
    fprintf('    ③与截面形状尺寸有关，与材料质量无关\n');
    fprintf('    ④是计算弯曲应力和挠度的重要参数\n\n');
end

function q5()
    fprintf('【Q5】平行移轴定理的内容及应用条件？\n');
    fprintf('答：内容——截面对任意轴的惯性矩，等于对与其平行的形心轴的惯性矩\n');
    fprintf('        加上截面面积与两轴间距离平方的乘积\n');
    fprintf('    公式：I_xx = I_bar_xx + d² · A\n');
    fprintf('    应用条件：\n');
    fprintf('    ①两个轴必须互相平行\n');
    fprintf('    ②其中一个轴必须是形心轴（过截面形心）\n');
    fprintf('    ③d是两轴之间的垂直距离\n\n');
end

function q6()
    fprintf('【Q6】for循环和while循环的区别及适用场景？\n');
    fprintf('答：\n');
    fprintf('  for循环——已知或确定循环次数时使用\n');
    printf('          语法：for i = 向量，循环体，end\n');
    fprintf('          适用：遍历数组、固定次数迭代\n');
    fprintf('  while循环——由条件决定何时结束\n');
    fprintf('          语法：while 条件，循环体，end\n');
    fprintf('          适用：满足条件就循环，需手动更新循环变量\n\n');
end
