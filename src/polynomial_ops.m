%% polynomial_ops - 多项式运算演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料

function polynomial_ops()
    fprintf('====== 多项式运算演示 ======\n\n');
    
    % 多项式用降幂系数向量表示
    % p(x) = 2x^2 + 3x + 1
    p = [2, 3, 1];
    
    fprintf('多项式 p(x) = 2x^2 + 3x + 1\n');
    fprintf('系数向量表示: [2, 3, 1]\n\n');
    
    % roots: 求根
    r = roots(p);
    fprintf('1) roots(p) = ');
    fprintf('%.4f  ', r);
    fprintf('\n\n');
    
    % polyval: 求值
    x_val = 2;
    y_val = polyval(p, x_val);
    fprintf('2) polyval(p, %d) = %.0f\n\n', x_val, y_val);
    
    % 矩阵特征多项式
    A = [1, 2; 3, 4];
    char_poly = poly(A);
    fprintf('3) 矩阵 A = [1,2; 3,4]\n');
    fprintf('   特征多项式系数: ');
    fprintf('%.0f  ', char_poly);
    fprintf('\n\n');
    
    % 多项式乘法（卷积）
    p1 = [1, 2];  % x + 2
    p2 = [1, 3];  % x + 3
    p_prod = conv(p1, p2);
    fprintf('4) (x+2) * (x+3) = ');
    fprintf('%.0f  ', p_prod);
    fprintf('\n   即 x^2 + 5x + 6\n\n');
    
    fprintf('常用函数总结:\n');
    fprintf('  roots(p)      - 求多项式的根\n');
    fprintf('  polyval(p, x) - 计算多项式在x处的值\n');
    fprintf('  poly(A)       - 求矩阵A的特征多项式\n');
    fprintf('  conv(a, b)    - 多项式乘法（卷积）\n');
end
