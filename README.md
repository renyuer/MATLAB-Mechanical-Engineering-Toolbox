# MATLAB 机械工程设计分析工具箱

> **期末复习利器** | 基于《机械工程设计分析与MATLAB应用》期末复习资料完整整理

## 项目结构

```
mech-eng-matlab/
├── README.md                              # 项目说明
├── startup.m                              # 一键启动脚本
├── review/                                # 原始复习资料
│   └── 机械工程设计分析与MATLAB应用_期末复习资料.md
├── src/                                   # 核心工具函数
│   ├── least_squares_fit.m                # ★ 最小二乘法线性拟合
│   ├── section_inertia.m                  # ★ 截面惯性矩计算
│   ├── matrix_ops_demo.m                  # ★ 点运算vs矩阵运算
│   ├── plotting_demo.m                    # ★ MATLAB绘图演示
│   ├── flow_control_demo.m                # ★ 流程控制全演示
│   ├── matrix_functions.m                 # ★ 矩阵函数(det/inv/eig等)
│   ├── concepts_review.m                  # ★ 高频概念速览
│   ├── short_answer_review.m              # ★ 简答题答案
│   ├── exam_simulation.m                  # ★ 自测模拟抽题
│   ├── special_matrices.m                 #   特殊矩阵创建
│   ├── polynomial_ops.m                   #   多项式运算
│   ├── linear_system_solver.m             #   线性方程组求解
│   ├── symbolic_vs_numeric.m              #   符号vs数值计算
│   ├── ode_solver_demo.m                  #   ode45微分方程
│   └── euler_method.m                     #   欧拉法
├── examples/                              # 考试例题脚本
│   ├── exam_least_squares.m               # ★ 最小二乘法例题
│   ├── exam_i_beam_inertia.m              # ★ 工字钢惯性矩例题
│   ├── exam_matrix_operations.m           # ★ 矩阵运算例题
│   ├── exam_plotting.m                    # ★ 三角函数绘图例题
│   └── exam_flow_control.m                # ★ 流程控制编程例题
```

> ★ = 必考/高频考点

## 覆盖全部考试内容

### 分值优先级

| 等级 | 内容 | 对应文件 |
|------|------|----------|
| **★★★ 必考** | MATLAB编程（for+if） | `exam_flow_control.m` |
| **★★★ 必考** | 最小二乘法线性拟合 | `least_squares_fit.m` + `exam_least_squares.m` |
| **★★★ 必考** | 截面惯性矩+平行移轴定理 | `section_inertia.m` + `exam_i_beam_inertia.m` |
| **★★★ 必考** | 矩阵运算（点乘vs矩阵乘） | `matrix_ops_demo.m` + `exam_matrix_operations.m` |
| **★★★ 必考** | M脚本 vs M函数 | `concepts_review.m` |
| **★★★ 必考** | MATLAB绘图 | `plotting_demo.m` + `exam_plotting.m` |
| **★★ 次重点** | 变量命名/关键字 | `concepts_review.m` |
| **★★ 次重点** | 流程控制语句 | `flow_control_demo.m` |
| **★★ 次重点** | 线性方程组求解 | `linear_system_solver.m` |
| **★★ 次重点** | 符号vs数值计算 | `symbolic_vs_numeric.m` |
| **★★ 次重点** | 微分方程（ode45） | `ode_solver_demo.m` |
| **★ 了解** | Simulink/3D绘图/插值等 | 复习资料原文 |

### 五大题型全覆盖

**选择题/填空题** → 运行 `concepts_review` 扫一遍高频概念

**简答题** → 运行 `short_answer_review` 背分点答案（6道必考）

**计算题（4大题型）**：
1. 最小二乘法线性拟合（7步法）
2. 截面惯性矩 + 平行移轴定理（工字钢/矩形钢）
3. MATLAB编程（for循环 + if分支）
4. 矩阵运算（点乘 vs 矩阵乘）

**自测模拟** → 运行 `exam_simulation` 随机抽题自测

## 使用方法

```matlab
% 1. 打开 MATLAB，cd 到项目根目录
% 2. 运行启动脚本
startup

% 3. 按推荐顺序复习
concepts_review          % 扫概念
short_answer_review      % 背简答
exam_least_squares       % 练拟合
exam_i_beam_inertia      % 练惯性矩
exam_matrix_operations   % 练矩阵
exam_plotting            % 练绘图
exam_flow_control        % 练编程
exam_simulation          % 自测
```

## 高频考点 TOP 10

1. 点乘(.*)与矩阵乘(*)的区别 — **选择/填空/简答/计算**
2. M脚本文件 vs M函数文件 — **简答**
3. 最小二乘法线性拟合 — **计算题（分高）**
4. 截面惯性矩 + 平行移轴定理 — **计算题**
5. MATLAB编程（for+if） — **编程题**
6. 矩阵寻址 A(i,j), A(:,end) — **选择**
7. 变量命名规则 + 关键字 — **选择/填空**
8. 绘图函数（plot, hold on, subplot） — **选择/编程**
9. for循环 vs while循环 — **简答**
10. 线性方程组解的情况 — **选择/简答**

## 作者

renyuer
