%% exam_simulation - 考试自测模拟
% 基于考试的高频考点TOP 10，生成随机自测题

function exam_simulation()
    clc;
    rng('shuffle');
    
    fprintf('========================================\n');
    fprintf('  期末考试自测模拟\n');
    fprintf('  随机抽取高频考点\n');
    fprintf('========================================\n\n');
    
    % 高频考点TOP 10（复习资料第五章）
    topics = {
        '点乘(.*)与矩阵乘(*)的区别';
        'M脚本文件 vs M函数文件';
        '最小二乘法线性拟合';
        '截面惯性矩 + 平行移轴定理';
        'MATLAB编程（for循环 + if分支）';
        '矩阵寻址 A(i,j)';
        '变量命名规则 + 关键字';
        '绘图函数（plot, hold on, subplot）';
        'for循环 vs while循环';
        '线性方程组解的情况判定'
    };
    
    % 随机选3题
    indices = randperm(10, 3);
    
    for q = 1:3
        fprintf('----------------------------------------\n');
        fprintf('  第%d题（TOP %d）\n', q, indices(q));
        fprintf('----------------------------------------\n');
        gen_question(indices(q));
        fprintf('\n');
    end
    
    fprintf('========================================\n');
    fprintf('  参考答案请运行对应函数：\n');
    fprintf('    concepts_review       - 选择题/填空题概念\n');
    fprintf('    short_answer_review     - 简答题答案\n');
    fprintf('    exam_least_squares      - 最小二乘法例题\n');
    fprintf('    exam_i_beam_inertia     - 截面惯性矩例题\n');
    fprintf('    exam_matrix_operations  - 矩阵运算例题\n');
    fprintf('    exam_plotting           - 绘图例题\n');
    fprintf('    exam_flow_control       - 流程控制例题\n');
    fprintf('========================================\n');
end

function gen_question(id)
    switch id
        case 1
            fprintf('题目：请说明 A.*B 和 A*B 有什么区别？\n');
            fprintf('      给定 A=[1,2;3,4], B=[5,6;7,8]\n');
            fprintf('      分别计算 A.*B 和 A*B\n');
            
        case 2
            fprintf('题目：M脚本文件和M函数文件的主要区别是什么？\n');
            fprintf('      从输入输出参数、变量作用域、第一行格式三方面回答\n');
            
        case 3
            fprintf('题目：简述最小二乘法线性拟合的7步法流程\n');
            fprintf('      写出正规方程组、克莱姆法则求解公式\n');
            
        case 4
            fprintf('题目：什么是平行移轴定理？写出公式并说明应用条件\n');
            fprintf('      工字钢为什么比同面积矩形钢的惯性矩更大？\n');
            
        case 5
            fprintf('题目：编写一个MATLAB函数，输入一个矩阵A和一个值v\n');
            fprintf('      统计并返回A中大于v的元素个数（提示：for+if）\n');
            
        case 6
            fprintf('题目：已知 A=[1,2,3;4,5,6;7,8,9]\n');
            fprintf('      写出获取第2行、第3列、第1到2行所有列、最后一行的表达式\n');
            
        case 7
            fprintf('题目：MATLAB变量命名规则有哪些？\n');
            fprintf('      以下哪些是有效变量名？\n');
            fprintf('      (A) 1abc  (B) my_var  (C) for  (D) Abc  (E) x_123\n');
            
        case 8
            fprintf('题目：编写MATLAB代码，在0到2π范围内绘制sin(x)和cos(x)曲线\n');
            fprintf('      要求：同一张图、不同颜色和线型、添加图例、网格和标签\n');
            
        case 9
            fprintf('题目：for循环和while循环有什么区别？各适用什么场景？\n');
            
        case 10
            fprintf('题目：线性方程组 Ax=b 的解有哪几种情况？如何判定？\n');
            fprintf('      什么条件下可以用左除法 x=A\\b 求解？\n');
    end
end
