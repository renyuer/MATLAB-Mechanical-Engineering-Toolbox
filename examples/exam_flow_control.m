%% exam_flow_control.m - 流程控制考试例题
% 基于复习资料：for循环 + if分支结构编程

clear; clc;
fprintf('========================================\n');
fprintf('  考试例题：MATLAB编程（for+if）\n');
fprintf('========================================\n\n');

% ---- 例题1：1到n的累加 ----
fprintf('--- 例题1：求1到n的累加和 ---\n');
n = 100;
s = 0;
for i = 1:n
    s = s + i;
end
fprintf('  1 + 2 + ... + %d = %d\n\n', n, s);

% ---- 例题2：统计大于某值的元素个数 ----
fprintf('--- 例题2：统计矩阵中大于阈值t的元素个数 ---\n');
A = [1, 5, 3; 7, 2, 9; 4, 8, 6];
threshold = 5;
count = 0;
[m, n] = size(A);
for i = 1:m
    for j = 1:n
        if A(i, j) > threshold
            count = count + 1;
        end
    end
end
fprintf('  矩阵 A =\n'); disp(A);
fprintf('  大于 %d 的元素个数 = %d\n\n', threshold, count);

% ---- 例题3：求满足条件的最小m（while循环） ----
fprintf('--- 例题3：求1+2+...+m > 100的最小m ---\n');
threshold = 100;
s = 0; m = 0;
while s <= threshold
    m = m + 1;
    s = s + m;
end
fprintf('  1+2+...+%d = %d > %d\n', m, s, threshold);
fprintf('  最小 m = %d\n\n', m);

% ---- 例题4：判断奇偶（if分支） ----
fprintf('--- 例题4：判断1到10的奇偶性 ---\n');
for i = 1:10
    if mod(i, 2) == 0
        fprintf('  %d 是偶数\n', i);
    else
        fprintf('  %d 是奇数\n', i);
    end
end
fprintf('\n');

fprintf('编程题易错提醒：\n');
fprintf('  ✓ for循环以end结束\n');
fprintf('  ✓ if-elseif-else每个if对应一个end\n');
fprintf('  ✓ 函数文件第一行必须是function开头\n');
fprintf('  ✓ 索引从1开始，不是0\n');
fprintf('  ✓ 该加点的运算要用.* ./ .^\n');
fprintf('========================================\n');
