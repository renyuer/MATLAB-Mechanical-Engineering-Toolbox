%% section_inertia - 截面惯性矩计算工具
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 计算组合截面（如工字钢、矩形钢）对形心轴的惯性矩
%
% 输入:
%   sections - 结构体数组，每个元素包含:
%     .b    - 矩形宽度（平行于x轴方向）
%     .h    - 矩形高度（垂直于x轴方向）
%     .y_c  - 该矩形形心在整体坐标系中的y坐标
% 输出:
%   I_total  - 组合截面对整体形心轴的惯性矩
%   y_global - 整体形心y坐标
%
% 使用方法:
%   [I_total, y_global] = section_inertia(sections)

function [I_total, y_global] = section_inertia(sections)
    n = length(sections);
    A_total = 0;    % 总面积
    Ay_sum = 0;     % 面积矩求和
    
    % 第一步：计算整体形心位置
    for i = 1:n
        A_i = sections(i).b * sections(i).h;
        A_total = A_total + A_i;
        Ay_sum = Ay_sum + A_i * sections(i).y_c;
    end
    y_global = Ay_sum / A_total;
    
    I_total = 0;
    
    % 第二步：用平行移轴定理计算各部分对整体形心轴的惯性矩
    for i = 1:n
        b_i = sections(i).b;
        h_i = sections(i).h;
        A_i = b_i * h_i;
        y_c_i = sections(i).y_c;
        
        % 矩形对自身形心轴的惯性矩：I_0 = b*h^3/12
        I_0 = b_i * h_i^3 / 12;
        
        % 平行移轴定理：I = I_0 + d^2 * A
        d = y_c_i - y_global;
        I_i = I_0 + d^2 * A_i;
        
        I_total = I_total + I_i;
    end
end
