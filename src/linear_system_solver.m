%% linear_system_solver - 线性方程组求解工具
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 判断并求解线性方程组 Ax = b

function [x, status] = linear_system_solver(A, b)
    % 判断方程组解的情况
    % rank(A) = rank(C) = n  -> 唯一解
    % rank(A) = rank(C) < n  -> 无穷多解
    % rank(A) ~= rank(C)      -> 无解
    
    [m, n] = size(A);
    C = [A, b];  % 增广矩阵
    
    rank_A = rank(A);
    rank_C = rank(C);
    
    fprintf('系数矩阵A的秩 = %d\n', rank_A);
    fprintf('增广矩阵C的秩 = %d\n', rank_C);
    fprintf('未知数个数 n = %d\n\n', n);
    
    if rank_A == rank_C && rank_A == n
        % 唯一解：满秩方阵，使用左除法
        status = '唯一解';
        x = A \ b;
        fprintf('结果：%s\n', status);
        fprintf('x = A\\b =\n');
        disp(x);
        
    elseif rank_A == rank_C && rank_A < n
        % 无穷多解
        status = '无穷多解';
        x = pinv(A) * b;  % 特解
        x_null = null(A); % 基础解系
        fprintf('结果：%s\n', status);
        fprintf('特解 x = pinv(A)*b =\n'); disp(x);
        disp('基础解系 null(A) ='); disp(x_null);
        
    else
        % 无解（矛盾方程）
        status = '无解（矛盾方程）';
        x = pinv(A) * b;  % 最小二乘解
        fprintf('结果：%s\n', status);
        fprintf('使用最小二乘解 x = pinv(A)*b =\n'); disp(x);
    end
end
