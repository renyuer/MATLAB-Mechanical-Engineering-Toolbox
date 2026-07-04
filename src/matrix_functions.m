%% matrix_functions - 矩阵函数演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 演示 det, inv, pinv, rank, trace, eig, norm, cond

function matrix_functions()
    fprintf('====== 矩阵函数演示 ======\n\n');
    
    A = [1, 2; 3, 4];
    fprintf('矩阵 A =\n'); disp(A);
    
    fprintf('1) det(A) = %.0f (行列式)\n\n', det(A));
    fprintf('2) inv(A) 矩阵的逆:\n'); disp(inv(A));
    fprintf('3) rank(A) = %d (秩)\n\n', rank(A));
    fprintf('4) trace(A) = %.0f (迹，主对角线和)\n\n', trace(A));
    
    % 特征值和特征向量
    [V, D] = eig(A);
    fprintf('5) eig(A) 特征值:\n'); disp(diag(D)');
    fprintf('   特征向量矩阵 V:\n'); disp(V);
    
    fprintf('6) norm(A) = %.4f (范数)\n\n', norm(A));
    fprintf('7) cond(A) = %.4f (条件数)\n\n', cond(A));
    
    % 伪逆
    B = [1, 2, 3; 4, 5, 6];
    fprintf('8) pinv(B) 非方阵的伪逆:\n'); disp(pinv(B));
    
    fprintf('函数总结:\n');
    fprintf('  det(A)   - 行列式\n');
    fprintf('  inv(A)   - 逆矩阵（方阵满秩）\n');
    fprintf('  pinv(A)  - 伪逆（非方阵或奇异矩阵）\n');
    fprintf('  rank(A)  - 矩阵的秩\n');
    fprintf('  trace(A) - 矩阵的迹\n');
    fprintf('  eig(A)   - 特征值和特征向量\n');
    fprintf('  norm(A)  - 范数\n');
    fprintf('  cond(A)  - 条件数\n');
end
