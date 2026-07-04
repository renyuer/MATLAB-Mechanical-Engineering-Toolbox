%% special_matrices - 特殊矩阵创建函数演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 演示 zeros, ones, eye, rand, randn, magic, linspace, logspace

function special_matrices()
    fprintf('====== 特殊矩阵创建函数演示 ======\n\n');
    
    fprintf('1) zeros(2,3) - 全零矩阵:\n');
    disp(zeros(2,3));
    
    fprintf('2) ones(2,3) - 全1矩阵:\n');
    disp(ones(2,3));
    
    fprintf('3) eye(3) - 3阶单位矩阵:\n');
    disp(eye(3));
    
    fprintf('4) rand(2,2) - [0,1]均匀分布随机矩阵:\n');
    disp(rand(2,2));
    
    fprintf('5) randn(2,2) - 正态分布随机矩阵:\n');
    disp(randn(2,2));
    
    fprintf('6) magic(3) - 3阶魔方矩阵:\n');
    disp(magic(3));
    
    fprintf('7) linspace(0,1,5) - 0到1线性分布5个元素:\n');
    disp(linspace(0,1,5));
    
    fprintf('8) logspace(0,2,5) - 10^0到10^2对数分布5个元素:\n');
    disp(logspace(0,2,5));
end
