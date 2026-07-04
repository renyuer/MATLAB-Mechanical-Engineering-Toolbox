%% symbolic_vs_numeric - 符号计算 vs 数值计算对比演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料

function symbolic_vs_numeric()
    fprintf('====== 符号计算 vs 数值计算 ======\n\n');
    
    fprintf('对比维度:\n');
    fprintf('┌──────────┬───────────┬───────────┐\n');
    fprintf('│ 对比项   │ 符号计算  │ 数值计算  │\n');
    fprintf('├──────────┼───────────┼───────────┤\n');
    fprintf('│ 运算对象 │ 符号变量  │ 具体数值  │\n');
    fprintf('│ 计算规则 │ 数学推导  │ 数值运算  │\n');
    fprintf('│ 结果形式 │ 表达式    │ 具体数值  │\n');
    fprintf('│ 精度     │ 精确解析解│ 近似数值解│\n');
    fprintf('└──────────┴───────────┴───────────┘\n\n');
    
    fprintf('--- 数值计算示例 ---\n');
    x_num = 2;
    y_num = sqrt(x_num) + sin(x_num);
    fprintf('  x = %.0f, y = sqrt(x) + sin(x) = %.6f\n\n', x_num, y_num);
    
    fprintf('--- 符号计算示例（需要Symbolic Math Toolbox）---\n');
    try
        syms x
        y_sym = sqrt(x) + sin(x);
        fprintf('  定义符号表达式: y = sqrt(x) + sin(x)\n');
        dy = diff(y_sym, x);
        fprintf('  求导: dy/dx =\n');
        pretty(dy);
        fprintf('\n');
        jy = int(y_sym, x);
        fprintf('  积分: ∫y dx =\n');
        pretty(jy);
        fprintf('\n');
    catch
        fprintf('  (需要Symbolic Math Toolbox支持)\n');
        fprintf('  符号计算可以精确求导、积分、解方程\n\n');
    end
    
    fprintf('相同点：都遵循基本数学运算规则\n');
    fprintf('不同点：符号计算给出解析解（精确），数值计算给出近似数值\n');
end
