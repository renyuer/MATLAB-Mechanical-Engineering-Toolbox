%% exam_matrix_operations.m - 矩阵运算考试例题
% 基于复习资料：点运算与矩阵运算的选择题/计算题

clear; clc;
fprintf('========================================\n');
fprintf('  考试例题：矩阵运算综合\n');
fprintf('========================================\n\n');

fprintf('例题1：给定 A = [1,2;3,4], B = [5,6;7,8]\n');
fprintf('计算 A.*B 和 A*B 并比较\n\n');

A = [1, 2; 3, 4];
B = [5, 6; 7, 8];

C_dot = A .* B;
C_mat = A * B;

fprintf('A.*B (点乘，对应元素相乘):\n'); disp(C_dot);
fprintf('A*B (矩阵乘法，线性代数):\n'); disp(C_mat);
fprintf('区别：点乘要求维度相同，是逐元素运算；\n');
fprintf('      矩阵乘法要求前者的列数=后者的行数，是行列内积求和。\n\n');

fprintf('例题2：矩阵寻址练习\n');
fprintf('A(1,:) = [%d, %d]\n', A(1,1), A(1,2));
fprintf('A(:,2) = [%d; %d]\n', A(1,2), A(2,2));
fprintf('A(1:2,1) = [%d; %d]\n', A(1,1), A(2,1));
fprintf('A(end,:) = [%d, %d]\n', A(2,1), A(2,2));
fprintf('A(:) 按列堆叠：'); fprintf('%d ', A(:)); fprintf('\n\n');

fprintf('例题3：逻辑运算\n');
C_log = A > 2;
fprintf('A > 2 的逻辑矩阵:\n'); disp(C_log);
fprintf('find(A > 2): '); fprintf('%d ', find(A > 2)); fprintf('\n');
fprintf('========================================\n');
