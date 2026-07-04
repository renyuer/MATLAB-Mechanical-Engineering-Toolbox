%% flow_control_demo - 流程控制语句完整演示
% 基于《机械工程设计分析与MATLAB应用》期末复习资料
% 演示 for, while, if-else, switch-case, break, continue, try-catch

function flow_control_demo()
    fprintf('====== 流程控制语句演示 ======\n\n');
    
    % ---- 1. for循环 ----
    fprintf('--- 1. for循环（已循环次数） ---\n');
    s = 0;
    for i = 1:5
        s = s + i;
    end
    fprintf('  for i = 1:5, sum = %d\n\n', s);
    
    % ---- 2. while循环 ----
    fprintf('--- 2. while循环（条件驱动） ---\n');
    s = 0; k = 1;
    while s <= 10
        s = s + k;
        k = k + 1;
    end
    fprintf('  加到s=%.0f时超出10，共加了%d次\n\n', s, k-1);
    
    % ---- 3. if-else分支 ----
    fprintf('--- 3. if-else分支 ---\n');
    x = 0;
    if x > 0
        fprintf('  x > 0\n');
    elseif x == 0
        fprintf('  x == 0\n');
    else
        fprintf('  x < 0\n');
    end
    fprintf('  (使用if-elseif-else结构)\n\n');
    
    % ---- 4. switch-case ----
    fprintf('--- 4. switch-case多分支 ---\n');
    grade = 'B';
    switch grade
        case 'A'
            fprintf('  优秀\n');
        case 'B'
            fprintf('  良好\n');
        case 'C'
            fprintf('  及格\n');
        otherwise
            fprintf('  不及格\n');
    end
    fprintf('\n');
    
    % ---- 5. break示例 ----
    fprintf('--- 5. break（提前退出循环） ---\n');
    for i = 1:10
        if i > 5
            break;
        end
    end
    fprintf('  break在i=%d时退出循环\n\n', i);
    
    % ---- 6. continue示例 ----
    fprintf('--- 6. continue（跳过本次循环） ---\n');
    fprintf('  1到5中跳过3: ');
    for i = 1:5
        if i == 3
            continue;
        end
        fprintf('%d ', i);
    end
    fprintf('\n\n');
    
    % ---- 7. try-catch ----
    fprintf('--- 7. try-catch异常处理 ---\n');
    try
        A = [1,2; 3,4];
        B = A * ones(1,3);  % 维度不匹配
    catch ME
        fprintf('  捕获异常: %s\n\n', ME.message);
    end
    
    fprintf('易错提醒：\n');
    fprintf('  - for循环以end结束，不是花括号\n');
    fprintf('  - if-elseif-else每个if对应一个end\n');
    fprintf('  - 索引从1开始，不是0\n');
    fprintf('  - for i = 1:n 不需要括号\n');
end
