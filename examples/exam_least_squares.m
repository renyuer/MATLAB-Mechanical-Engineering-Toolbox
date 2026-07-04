%% exam_least_squares.m - 最小二乘法拟合考试例题
% 基于复习资料：给定实验数据，用最小二乘法线性拟合

clear; clc;
fprintf('========================================\n');
fprintf('  考试例题：最小二乘法线性拟合\n');
fprintf('========================================\n\n');

% 示例数据
x = [1, 2, 3, 4, 5, 6, 7];
y = [2.1, 3.8, 5.9, 8.1, 10.2, 11.8, 14.1];

fprintf('实验数据点：\n');
fprintf('  x: ');
fprintf('%5.1f', x); fprintf('\n');
fprintf('  y: ');
fprintf('%5.1f', y); fprintf('\n\n');

% 调用拟合函数
[a0, a1, RMS] = least_squares_fit(x, y);

fprintf('拟合结果：\n');
fprintf('  截距 a0 = %.4f\n', a0);
fprintf('  斜率 a1 = %.4f\n', a1);
fprintf('  拟合直线：y = %.4f + %.4f*x\n', a0, a1);
fprintf('  RMS误差 = %.4f\n\n', RMS);

% 绘图
figure('Name', '最小二乘法线性拟合', 'NumberTitle', 'off');
plot(x, y, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
hold on;
x_fit = linspace(min(x), max(x), 100);
y_fit = a0 + a1 * x_fit;
plot(x_fit, y_fit, 'r-', 'LineWidth', 2);
hold off;
xlabel('x'); ylabel('y');
title(sprintf('最小二乘法线性拟合  y = %.4f + %.4fx', a0, a1));
legend('原始数据', '拟合直线', 'Location', 'best');
grid on;

fprintf('拟合图像已显示，请查看图形窗口。\n');
fprintf('========================================\n');
