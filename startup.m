%% startup - 项目启动脚本
% 添加所有目录到MATLAB搜索路径
% 运行此脚本后即可直接调用所有工具函数和例题

fprintf('========================================\n');
fprintf(' MATLAB机械工程设计分析工具箱\n');
fprintf(' 完整版 - 覆盖全部期末复习考点\n');
fprintf('========================================\n\n');

% 获取当前脚本所在目录
project_root = fileparts(mfilename('fullpath'));

% 添加所有目录到路径
addpath(fullfile(project_root, 'src'));
addpath(fullfile(project_root, 'examples'));
addpath(fullfile(project_root, 'review'));

fprintf('已添加以下目录到搜索路径：\n');
fprintf('  %s\\src\n', project_root);
fprintf('  %s\\examples\n', project_root);
fprintf('  %s\\review\n\n', project_root);

fprintf('═══════════════════════════════════════════\n');
fprintf('  一、核心工具函数（src/）\n');
fprintf('═══════════════════════════════════════════\n');
fprintf('  least_squares_fit(x, y)    >> 最小二乘法线性拟合\n');
fprintf('  section_inertia(sections)  >> 截面惯性矩计算\n');
fprintf('  linear_system_solver(A, b) >> 线性方程组求解\n');
fprintf('  euler_method(f, x0, y0, h, n) >> 欧拉法\n\n');

fprintf('  concepts_review()          >> 高频概念速览(选择/填空)\n');
fprintf('  short_answer_review()      >> 简答题分点答案\n');
fprintf('  exam_simulation()          >> 考试自测模拟(随机抽题)\n\n');

fprintf('  matrix_ops_demo()          >> 矩阵运算演示\n');
fprintf('  matrix_functions()         >> 矩阵函数演示\n');
fprintf('  special_matrices()         >> 特殊矩阵创建函数\n');
fprintf('  flow_control_demo()        >> 流程控制语句\n');
fprintf('  plotting_demo()            >> 绘图演示\n');
fprintf('  ode_solver_demo()          >> ode45求解微分方程\n');
fprintf('  polynomial_ops()           >> 多项式运算\n');
fprintf('  symbolic_vs_numeric()      >> 符号/数值计算对比\n\n');

fprintf('═══════════════════════════════════════════\n');
fprintf('  二、考试例题脚本（examples/）\n');
fprintf('═══════════════════════════════════════════\n');
fprintf('  exam_least_squares         >> 最小二乘法拟合例题\n');
fprintf('  exam_i_beam_inertia        >> 工字钢惯性矩例题\n');
fprintf('  exam_matrix_operations     >> 矩阵运算综合例题\n');
fprintf('  exam_plotting              >> 绘图(三角函数)例题\n');
fprintf('  exam_flow_control          >> 流程控制编程例题\n\n');

fprintf('═══════════════════════════════════════════\n');
fprintf('  三、复习资料（review/）\n');
fprintf('═══════════════════════════════════════════\n');
fprintf('  机械工程设计分析与MATLAB应用_期末复习资料.md\n\n');

fprintf('═══════════════════════════════════════════\n');
fprintf('  推荐复习顺序：\n');
fprintf('  1. concepts_review       - 扫一遍高频概念\n');
fprintf('  2. short_answer_review   - 背简答题答案\n');
fprintf('  3. 逐个运行例题脚本     - 练计算题\n');
fprintf('  4. exam_simulation       - 自测模拟\n');
fprintf('═══════════════════════════════════════════\n');
fprintf('  设置完成！祝考试顺利！🎯\n');
fprintf('========================================\n');
