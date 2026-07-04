%% concepts_review - 选择题/填空题高频概念速览
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 输出所有高频考点概念

function concepts_review()
    fprintf('========================================================\n');
    fprintf('  MATLAB 核心概念速览（选择题/填空题高频考点）\n');
    fprintf('========================================================\n\n');
    
    % ---- 1. MATLAB名称来源 ----
    fprintf('【1】MATLAB名称来源\n');
    fprintf('  MATLAB = Matrix + Laboratory（矩阵实验室）\n');
    fprintf('  最初由 Cleve Moler 开发，主要用于数值计算\n\n');
    
    % ---- 2. 变量命名规则 ----
    fprintf('【2】变量命名规则（★★★★★）\n');
    fprintf('  (1) 必须由字母开头引导\n');
    fprintf('  (2) 后面可以跟字母、数字、下划线\n');
    fprintf('  (3) 区分大小写：Abc ~= ABc\n');
    fprintf('  (4) 有效长度：63个字符\n');
    fprintf('  (5) 关键字不能用作变量名\n\n');
    
    % ---- 3. 关键字列表 ----
    fprintf('【3】MATLAB关键字（不能用作变量名）\n');
    fprintf('  for, end, if, while, function, else, elseif\n');
    fprintf('  break, continue, return, switch, case, otherwise\n');
    fprintf('  try, catch, global, persistent\n\n');
    
    % ---- 4. 特殊矩阵创建函数 ----
    fprintf('【4】特殊矩阵创建函数（选择题高频）\n');
    fprintf('  zeros(m,n)    - 创建 m×n 全零矩阵\n');
    fprintf('  ones(m,n)     - 创建 m×n 全1矩阵\n');
    fprintf('  eye(n)        - 创建 n阶单位矩阵\n');
    fprintf('  rand(m,n)     - [0,1]均匀分布随机矩阵\n');
    fprintf('  randn(m,n)    - 正态分布随机矩阵\n');
    fprintf('  magic(n)      - 创建 n阶魔方矩阵\n');
    fprintf('  linspace(a,b,n) - 产生线性分布的n个元素向量\n');
    fprintf('  logspace(a,b,n) - 产生对数分布的n个元素向量\n\n');
    
    % ---- 5. 特殊变量/保留常量 ----
    fprintf('【5】MATLAB保留常量\n');
    fprintf('  pi    - 圆周率\n');
    fprintf('  i, j  - 虚数单位 (i = sqrt(-1))\n');
    fprintf('  eps   - 浮点数相对精度\n');
    fprintf('  Inf   - 无穷大\n');
    fprintf('  NaN   - 非数值 (Not a Number)\n');
    fprintf('  realmin / realmax - 最小/最大正浮点数\n\n');
    
    % ---- 6. 逻辑运算符 ----
    fprintf('【6】逻辑运算符\n');
    fprintf('  &   - 逻辑与 (and)\n');
    fprintf('  |   - 逻辑或 (or)\n');
    fprintf('  ~   - 逻辑非 (not)\n');
    fprintf('  xor - 逻辑异或\n');
    fprintf('  &&  - 先决与（短路）\n');
    fprintf('  ||  - 先决或（短路）\n\n');
    
    % ---- 7. 字符串 ----
    fprintf('【7】字符串\n');
    fprintf('  单引号创建字符数组：''text''\n');
    fprintf('  双引号创建字符串数组："text"\n');
    fprintf('  每个字符占一个元素位，按ASCII码存储\n');
    fprintf('  连接：[str1, str2]\n');
    fprintf('  数字转字符串：num2str()\n\n');
    
    % ---- 8. M脚本 vs M函数 ----
    fprintf('【8】M脚本文件 vs M函数文件\n');
    fprintf('  ┌──────┬──────────┬──────────┐\n');
    fprintf('  │ 项目 │ M脚本    │ M函数    │\n');
    fprintf('  ├──────┼──────────┼──────────┤\n');
    fprintf('  │输入出│ 无参数   │ 有输入出 │\n');
    fprintf('  │变量  │ 全局     │ 局部     │\n');
    fprintf('  │首行  │ 无要求   │ function │\n');
    fprintf('  └──────┴──────────┴──────────┘\n\n');
    
    % ---- 9. 其他常用函数 ----
    fprintf('【9】其他常用函数\n');
    fprintf('  clc     - 清除命令窗口内容\n');
    fprintf('  clear   - 清除工作区所有变量\n');
    fprintf('  who     - 查看工作区变量名\n');
    fprintf('  whos    - 查看工作区变量详细信息\n');
    fprintf('  global  - 声明全局变量\n');
    fprintf('  nargin/nargout - 输入/输出参数个数\n');
    fprintf('  varargin/varargout - 可变输入/输出参数\n\n');
    
    fprintf('========================================================\n');
    fprintf('  提示：运行 matrix_ops_demo 查看矩阵运算详细对比\n');
    fprintf('       运行 plotting_demo 查看绘图函数使用\n');
    fprintf('========================================================\n');
end
