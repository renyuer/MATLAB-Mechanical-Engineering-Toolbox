%% plotting_demo - MATLAB绘图演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 展示plot、hold on、subplot、grid等核心绘图函数

function plotting_demo()
    fprintf('====== MATLAB绘图演示 ======\n');
    fprintf('基于《机械工程设计分析与MATLAB应用》复习资料\n\n');
    
    % 创建新图形窗口
    figure('Name', 'MATLAB绘图演示', 'NumberTitle', 'off');
    
    % 使用subplot将窗口分成2x2
    subplot(2, 2, 1);
    x = 0:0.1:2*pi;
    y1 = sin(x);
    plot(x, y1, 'r-', 'LineWidth', 2);
    xlabel('x'); ylabel('y');
    title('y = sin(x)');
    grid on;
    axis([0, 2*pi, -1.5, 1.5]);
    
    subplot(2, 2, 2);
    y2 = cos(x);
    plot(x, y2, 'b--', 'LineWidth', 2);
    xlabel('x'); ylabel('y');
    title('y = cos(x)');
    grid on;
    
    % hold on示例：在同一张图上画多条曲线
    subplot(2, 2, 3);
    plot(x, sin(x), 'r-', 'LineWidth', 1.5);
    hold on;
    plot(x, cos(x), 'b--', 'LineWidth', 1.5);
    plot(x, sin(x).^2 + cos(x).^2, 'g:', 'LineWidth', 2);
    hold off;
    xlabel('x'); ylabel('y');
    title('hold on 多线叠加');
    legend('sin(x)', 'cos(x)', 'sin^2+cos^2');
    grid on;
    
    subplot(2, 2, 4);
    x2 = -3:0.1:3;
    y3 = x2.^2;
    y4 = x2.^3;
    plot(x2, y3, 'm-', x2, y4, 'c-', 'LineWidth', 1.5);
    xlabel('x'); ylabel('y');
    title('y = x^2 与 y = x^3');
    legend('x^2', 'x^3');
    grid on;
    
    fprintf('已绘制4个子图，请查看弹出的图形窗口。\n');
    fprintf('核心函数使用:\n');
    fprintf('  plot(x, y, ''样式'')\n');
    fprintf('  hold on/off - 保持/关闭当前图形\n');
    fprintf('  subplot(m,n,p) - 分割窗口\n');
    fprintf('  grid on/off - 网格\n');
    fprintf('  xlabel/ylabel/title - 标签与标题\n');
    fprintf('  legend - 图例\n');
    fprintf('  axis([xmin xmax ymin ymax]) - 坐标范围\n');
end
