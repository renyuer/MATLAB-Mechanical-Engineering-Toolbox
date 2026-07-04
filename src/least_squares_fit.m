%% least_squares_fit - 最小二乘法线性拟合工具
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 实现最小二乘法线性拟合：y = a0 + a1*x
%
% 输入:
%   x, y - 实验数据点向量
% 输出:
%   a0, a1 - 拟合直线 y = a0 + a1*x 的系数
%   RMS    - 均方根误差
%
% 使用方法:
%   [a0, a1, RMS] = least_squares_fit(x, y)

function [a0, a1, RMS] = least_squares_fit(x, y)
    % 数据点个数
    M = length(x);
    
    % 计算各项求和（正规方程组系数）
    sx = sum(x);
    sy = sum(y);
    sxx = sum(x.^2);
    sxy = sum(x .* y);
    
    % 克莱姆法则求解正规方程组
    delta = M * sxx - sx^2;
    a0 = (sy * sxx - sx * sxy) / delta;
    a1 = (M * sxy - sx * sy) / delta;
    
    % 计算RMS误差（均方根误差）
    y_fit = a0 + a1 * x;
    RMS = sqrt(1/M * sum((y - y_fit).^2));
end
