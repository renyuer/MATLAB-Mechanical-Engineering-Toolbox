%% startup - 项目启动脚本
% 添加src目录到MATLAB搜索路径
% 运行此脚本后即可直接调用各个工具函数

fprintf('========================================\n');
fprintf(' MATLAB机械工程设计分析工具箱\n');
fprintf('========================================\n\n');

% 获取当前脚本所在目录
project_root = fileparts(mfilename('fullpath'));

% 添加src目录到路径
addpath(fullfile(project_root, 'src'));
addpath(fullfile(project_root, 'examples'));

fprintf('已添加以下目录到搜索路径：\n');
fprintf('  %s\\src\n', project_root);
fprintf('  %s\\examples\n\n', project_root);

fprintf('可用工具函数：\n');
fprintf('  least_squares_fit(x, y)    - 最小二乘法线性拟合\n');
fprintf('  section_inertia(sections)  - 截面惯性矩计算\n');
fprintf('  matrix_ops_demo()          - 矩阵运算演示\n');
fprintf('  plotting_demo()            - 绘图演示\n');
fprintf('  linear_system_solver(A, b) - 线性方程组求解\n');
fprintf('  ode_solver_demo()          - 微分方程求解\n\n');

fprintf('可用例题脚本：\n');
fprintf('  exam_least_squares         - 最小二乘法拟合例题\n');
fprintf('  exam_i_beam_inertia        - 工字钢惯性矩例题\n');
fprintf('  exam_matrix_operations     - 矩阵运算例题\n\n');

fprintf('========================================\n');
fprintf(' 设置完成！祝考试顺利！\n');
fprintf('========================================\n');
