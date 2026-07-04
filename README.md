# MATLAB 机械工程设计分析工具箱

基于《机械工程设计分析与MATLAB应用》期末复习资料，整理的一套完整 MATLAB 工具函数与考试例题。

## 项目结构

```
mech-eng-matlab/
├── README.md                    # 项目说明
├── startup.m                    # 一键启动脚本
├── src/                         # 核心工具函数
│   ├── least_squares_fit.m      # 最小二乘法线性拟合
│   ├── section_inertia.m        # 截面惯性矩计算（平行移轴定理）
│   ├── matrix_ops_demo.m        # 矩阵运算演示
│   ├── plotting_demo.m          # MATLAB绘图演示
│   ├── linear_system_solver.m   # 线性方程组求解
│   └── ode_solver_demo.m        # 常微分方程求解（ode45）
├── examples/                    # 考试例题脚本
│   ├── exam_least_squares.m     # 最小二乘法拟合例题
│   ├── exam_i_beam_inertia.m    # 工字钢截面惯性矩例题
│   └── exam_matrix_operations.m # 矩阵运算综合例题
```

## 核心内容

### 最小二乘法线性拟合（必考）
实现完整的7步法流程：误差平方和 → 偏导为0 → 正规方程组 → 克莱姆法则求解 → 拟合方程 → RMS误差 → 绘图

### 截面惯性矩计算（必考）
- 矩形对底边：I = bh³/3
- 矩形对形心轴：I = bh³/12
- 平行移轴定理：I = I₀ + d²·A
- 工字钢/矩形钢组合截面计算

### MATLAB编程（必考）
- 点运算(.*, ./, .^) 与矩阵运算(*, /, ^) 的区别
- for循环 + if分支结构
- M脚本文件 vs M函数文件
- 矩阵寻址与切片
- plot / hold on / subplot 绘图

## 使用方法

1. 打开 MATLAB，将当前目录切换到本项目根目录
2. 运行 `startup` 添加路径
3. 运行任意脚本，例如：
   ```matlab
   exam_least_squares      % 最小二乘法拟合例题
   exam_i_beam_inertia     % 工字钢惯性矩例题
   matrix_ops_demo         % 矩阵运算演示
   plotting_demo           % 绘图演示
   ode_solver_demo         % 微分方程求解演示
   ```

## 学习建议

参考复习资料的三大高频考点：
1. **计算题**：最小二乘法拟合 + 截面惯性矩计算
2. **简答题**：点运算vs矩阵运算、M脚本vs函数文件、for vs while
3. **选择题**：变量命名规则、关键字、特殊矩阵函数、矩阵寻址

## 作者

renyuer
