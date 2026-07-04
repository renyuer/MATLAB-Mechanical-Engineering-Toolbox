%% ode_solver_demo - 常微分方程求解演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 使用ode45求解二阶微分方程并绘图

function ode_solver_demo()
    fprintf('====== 常微分方程求解演示 ======\n');
    fprintf('使用 ode45 求解二阶微分方程\n\n');
    
    % 求解：y'' + 0.5*y' + 2*y = 0
    % 初始条件：y(0) = 1, y'(0) = 0
    % 降阶：令 x1 = y, x2 = y'
    %       x1' = x2
    %       x2' = -0.5*x2 - 2*x1
    
    tspan = [0, 20];
    x0 = [1; 0];
    
    [t, x] = ode45(@my_odefun, tspan, x0);
    
    figure('Name', 'ODE求解演示', 'NumberTitle', 'off');
    plot(t, x(:,1), 'b-', 'LineWidth', 2);
    hold on;
    plot(t, x(:,2), 'r--', 'LineWidth', 1.5);
    hold off;
    xlabel('时间 t');
    ylabel('y');
    title('二阶微分方程 y\" + 0.5y'' + 2y = 0');
    legend('y (位移)', 'y'' (速度)');
    grid on;
    
    fprintf('求解完成！\n');
    fprintf('方程：y\" + 0.5*y'' + 2*y = 0\n');
    fprintf('初始条件：y(0) = 1, y''(0) = 0\n');
    fprintf('时间范围：[0, 20]\n');
    fprintf('请查看弹出的图形窗口。\n');
end

%% 微分方程函数（内部函数）
function dx = my_odefun(t, x)
    dx = zeros(2, 1);
    dx(1) = x(2);          % x1' = x2
    dx(2) = -2*x(1) - 0.5*x(2);  % x2' = -2*x1 - 0.5*x2
end
