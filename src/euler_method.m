%% euler_method - 欧拉法求解常微分方程
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% y(i+1) = y(i) + h * f(x(i), y(i))

function [x, y] = euler_method(f, x0, y0, h, n)
    % 欧拉法求解一阶常微分方程 y'' = f(x, y)
    %
    % 输入:
    %   f  - 函数句柄 @(x, y)
    %   x0 - 初始x值
    %   y0 - 初始y值 y(x0)
    %   h  - 步长
    %   n  - 迭代步数
    % 输出:
    %   x  - x值向量
    %   y  - y值向量
    
    x = zeros(1, n+1);
    y = zeros(1, n+1);
    x(1) = x0;
    y(1) = y0;
    
    for i = 1:n
        y(i+1) = y(i) + h * f(x(i), y(i));
        x(i+1) = x(i) + h;
    end
    
    % 绘图对比（如果已经安装了ode45）
    figure('Name', '欧拉法求解演示', 'NumberTitle', 'off');
    plot(x, y, 'b-o', 'LineWidth', 1.5, 'MarkerSize', 4);
    xlabel('x'); ylabel('y');
    title(sprintf('欧拉法  h=%.2f, n=%d', h, n));
    grid on;
    
    fprintf('欧拉法求解完成，步长 h=%.4f，共计 %d 步\n', h, n);
    fprintf('公式：y(i+1) = y(i) + h * f(x(i), y(i))\n');
end
