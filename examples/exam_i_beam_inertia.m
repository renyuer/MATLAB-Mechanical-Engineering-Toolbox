%% exam_i_beam_inertia.m - 工字钢截面惯性矩计算例题
% 基于复习资料：工字钢 vs 矩形钢组合截面计算

clear; clc;
fprintf('========================================\n');
fprintf('  考试例题：工字钢截面惯性矩计算\n');
fprintf('========================================\n\n');

% 工字钢截面参数（尺寸单位：mm）
% 上翼缘：宽120mm，高10mm，形心在y=115mm处
% 腹板：  宽10mm， 高100mm，形心在y=60mm处
% 下翼缘：宽120mm，高10mm，形心在y=5mm处

sections(1).b = 120;  % 上翼缘宽度
sections(1).h = 10;   % 上翼缘高度
sections(1).y_c = 115; % 上翼缘形心y坐标

sections(2).b = 10;   % 腹板宽度
sections(2).h = 100;  % 腹板高度
sections(2).y_c = 60;  % 腹板形心y坐标

sections(3).b = 120;  % 下翼缘宽度
sections(3).h = 10;   % 下翼缘高度
sections(3).y_c = 5;   % 下翼缘形心y坐标

fprintf('工字钢截面参数：\n');
fprintf('  上翼缘：b=120mm, h=10mm, y_c=115mm\n');
fprintf('  腹板：  b=10mm,  h=100mm, y_c=60mm\n');
fprintf('  下翼缘：b=120mm, h=10mm, y_c=5mm\n\n');

% 计算工字钢
[I_beam, y_global] = section_inertia(sections);

% 计算同等面积的矩形钢
% 矩形钢面积 = 工字钢总面积
A_total = sections(1).b * sections(1).h + ...
          sections(2).b * sections(2).h + ...
          sections(3).b * sections(3).h;
rect_h = A_total / 10;  % 假设宽10mm，需要的高度
rect_b = 10;
I_rect = rect_b * rect_h^3 / 12;

fprintf('计算结果：\n');
fprintf('  工字钢整体形心 y_c = %.2f mm\n', y_global);
fprintf('  工字钢惯性矩 I = %.2f mm^4\n', I_beam);
fprintf('  等效矩形钢惯性矩 I = %.2f mm^4\n', I_rect);
fprintf('  惯性矩比值：I_工字钢 / I_矩形 = %.2f\n\n', I_beam / I_rect);

fprintf('结论：同等面积下，工字钢惯性矩远大于矩形钢，\n');
fprintf('      说明工字钢结构抗弯刚度更大，材料分布更合理。\n');
fprintf('========================================\n');
