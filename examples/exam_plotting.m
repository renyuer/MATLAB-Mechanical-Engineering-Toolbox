%% exam_plotting.m - 绘图考试例题
% 基于复习资料：三角函数曲线绘制

clear; clc;
fprintf('========================================\n');
fprintf('  考试例题：MATLAB绘图（三角函数曲线）\n');
fprintf('========================================\n\n');

% 步骤1：定义x范围
x = 0:0.01:2*pi;

% 步骤2：计算y值
y1 = sin(x);
y2 = cos(x);
y3 = sin(x + pi/4);

% 步骤3：绘图
figure('Name', '三角函数曲线', 'NumberTitle', 'off');

% 使用subplot分成两个子图
subplot(2, 1, 1);
plot(x, y1, 'r-', 'LineWidth', 2);
hold on;
plot(x, y2, 'b--', 'LineWidth', 2);
plot(x, y3, 'g:', 'LineWidth', 2);
hold off;
xlabel('x (rad)'); ylabel('y');
title('三角函数曲线');
legend('sin(x)', 'cos(x)', 'sin(x+π/4)');
grid on;
axis([0, 2*pi, -1.5, 1.5]);

subplot(2, 1, 2);
y4 = sin(x).*cos(x);
plot(x, y4, 'm-', 'LineWidth', 2);
xlabel('x (rad)'); ylabel('y');
title('y = sin(x)cos(x)');
grid on;

fprintf('绘图完成！\n');
fprintf('核心函数使用：\n');
fprintf('  plot(x, y, ''样式'')\n');
fprintf('  hold on / hold off\n');
fprintf('  subplot(m, n, p)\n');
fprintf('  grid on / grid off\n');
fprintf('  xlabel / ylabel / title / legend\n');
fprintf('  axis([xmin xmax ymin ymax])\n');
fprintf('========================================\n');
