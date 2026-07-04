%% matrix_ops_demo - 矩阵运算演示
% 展示点运算与矩阵运算的核心区别
% 基于《机械工程设计分析与MATLAB应用》期末复习资料

function matrix_ops_demo()
    fprintf('====== 矩阵运算演示 ======\n');
    fprintf('基于《机械工程设计分析与MATLAB应用》复习资料\n\n');
    
    % 示例矩阵
    A = [1, 2; 3, 4];
    B = [5, 6; 7, 8];
    
    fprintf('矩阵 A =\n'); disp(A);
    fprintf('矩阵 B =\n'); disp(B);
    
    % 1. 点乘 vs 矩阵乘
    fprintf('--- 1. 点乘 (.*) vs 矩阵乘 (*) ---\n');
    C_dot = A .* B;  % 对应元素相乘
    C_mat = A * B;   % 线性代数矩阵乘法
    fprintf('A .* B (对应元素相乘):\n'); disp(C_dot);
    fprintf('A * B (矩阵乘法):\n'); disp(C_mat);
    
    % 2. 点乘方 vs 矩阵乘方
    fprintf('--- 2. 点乘方 (.^) vs 矩阵乘方 (^) ---\n');
    D_dot = A .^ 2;  % 每个元素平方
    D_mat = A ^ 2;   % A*A
    fprintf('A .^ 2 (每个元素平方):\n'); disp(D_dot);
    fprintf('A ^ 2 (A*A):\n'); disp(D_mat);
    
    % 3. 转置
    fprintf('--- 3. 非共轭转置 (.'') vs 共轭转置 ('') ---\n');
    fprintf('A.'' (非共轭转置):\n'); disp(A.');
    fprintf('A'' (共轭转置，实矩阵时相同):\n'); disp(A');
    
    % 4. 矩阵寻址
    fprintf('--- 4. 矩阵寻址示例 ---\n');
    fprintf('A(1,2) = %d (第1行第2列)\n', A(1,2));
    fprintf('A(2,:) = [%d, %d] (第2行所有列)\n', A(2,1), A(2,2));
    fprintf('A(:,1) = [%d; %d] (第1列所有行)\n', A(1,1), A(2,1));
    fprintf('A(end,:) = [%d, %d] (最后一行)\n', A(2,1), A(2,2));
    fprintf('A(:) = [%d; %d; %d; %d] (按列堆叠)\n', A(:));
end
