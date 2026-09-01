---
title: "Solved Is Not Finished：为什么一个“已经解决”的问题，仍需要被反复解决？"
date: 2026-09-01T23:05:25+08:00
slug: "solved-is-not-finished"
author: "Qiaomai"
description: "从一段关于语音识别准确率的阅读记忆出发，经过 Sphinx、Benchmark、并行研究与 Transformer，讨论技术为何反复解决旧问题、通用解法如何重新定价人力资本，以及 AI 时代个人应当租用什么、理解什么、最终拥有什么。"
series: ["The Worker Investor"]
categories: ["Essay"]
tags: ["AI", "machine learning", "technology", "learning", "human capital", "ownership"]
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
disableHLJS: true
disableShare: false
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: false
ShowRssButtonInSectionTermList: true
UseHugoToc: true
---

*——从语音识别的准确率，到 Transformer 如何重新定价一整个研究共同体*

很多年前，我在李开复的《做最好的自己》里读到语音识别准确率的问题。

当时我并不觉得这有什么奇怪。技术还不成熟，研究者继续提高准确率，是一件再自然不过的事。可是多年以后，当语音识别已经进入手机、汽车、会议软件、字幕系统和 AI 产品，我再回头看那段历史，一个问题突然变得很难绕开：

> **为什么这个问题还没有结束？**

如果一项技术已经足够好，以至于绝大多数人只需要调用它，为什么全世界还要投入那么多研究组、资本、数据和计算资源？从 98% 提高到 99%，再从 99% 提高到 99.9%，难道不会很快进入边际收益递减？

问题还可以继续推进一步：如果别人已经把模型训练好了，后来的人为什么还要学习如何做语音识别？直接调用 API，不是更有效率吗？

这两个问题表面上在问机器学习，真正触及的却是更普遍的事情：什么叫“问题已经解决”？文明为什么允许那么多人同时寻找同一个答案？当一个答案真的出现，它会怎样改变研究者和劳动者原来赖以生存的稀缺性？而在答案越来越便宜的 AI 时代，一个人又应该把有限的学习时间投在哪里？

<!--more-->

## 一、先假设它真的被彻底解决了

不妨先做一个思想实验。

假设语音识别已经达到一种真正意义上的完成状态：所有语言、口音和年龄都能被 100% 识别；会议室、街道、汽车和工厂里的噪声不再造成影响；系统零延迟、零成本、零能耗；原始音频完全私密；新词、方言和专业术语不需要重新适配；它永远不会因为设备、网络或供应商变化而失效。

如果这样的系统已经存在，而且人人都可以稳定使用，那么至少就“把语音转成文字”这件事而言，继续投入大规模研究确实很难证明价值。这个领域的一部分应该关闭，人才和资源应该去寻找尚未解决的问题。

但这个极端假设也暴露了一个事实：日常语言里的“已经解决”，通常不是这种 solved。

它更常见的含义是：

> **在某一组条件下，这件事已经好到足够实用。**

因此：

> **Solved = Solved under assumptions**

而不是：

> **Solved ≠ Exhausted**

人类面对的现实问题，必须先被压缩成一个可研究、可测量、可比较的 formulation。比如“让机器听懂人说话”，会被转化为：给定一段声学信号，预测一串文字；再给定数据集、语言范围、错误指标、算力预算和测试条件。

这一步不是问题本身，而是对问题的一次切割。

> **Problem ≠ Formulation**

一个 formulation 被解决，证明的是：在这组边界内，人类已经找到了一条可行路径。它没有证明现实不会继续改变边界。

更完整的问题接近：

> **Problem = Task × Distribution × Constraint × Objective × Environment**

只要语言、用户、设备、成本、风险或目标发生变化，原来的答案就可能只完成了新问题的前半程。

## 二、语音识别没有沿着一条进度条走向 100%

为了理解这件事，我重新回到语音识别的具体历史。

李开复那项重要工作发生在 Carnegie Mellon University 攻读博士期间。他的博士论文研究大词汇量、非特定说话人、连续语音识别。根据他后来对这段经历的回顾，统计系统在 1986 年底约为 40% 的辨认率；扩大数据库并改进建模后，1987 年提高到 80%，后来达到 96%。[^1]

这里最值得注意的不是“几十年前已经有 96%”，而是那个数字依赖于特定语料、词汇、测量方法和实验边界。它证明统计学习路线取得了突破，却不等于现实世界里所有人的自然语言已经被识别。

语音识别此后也没有沿着一根固定的进度条，从 96% 缓慢爬到 100%。真正发生的是，它不断增加新的分母。

2022 年，OpenAI 发表 Whisper，使用 68 万小时多语言、多任务语音数据训练。它的重点并不是在单一数据集上取得最高分，而是提高模型在不同数据集、口音、背景噪声和专业语言中的 zero-shot robustness。[^2]

2023 年，Meta 的 Massively Multilingual Speech 把单个多语言自动语音识别模型扩展到 1,107 种语言；同一研究也指出，世界上仍有 7,000 多种语言，而当时的语音技术只覆盖其中一小部分。[^3]

当场景从安静录音转向真实会议，问题又会重新打开。Microsoft Research 在一项会议转写研究中，使用七路分散、异步的录音设备处理带说话人标注的会议。即使排除重叠语音，系统的 word error rate 仍为 22.3%；把说话人归属计入后，错误率为 26.7%。[^4]

这不是语音识别突然倒退，而是任务加入了新的条件：远场麦克风、不同步的设备、房间混响、多人打断，以及“这句话是谁说的”。

所以，所谓“语音识别达到 98%”，后面总有一串没有说出来的问题：在哪个 dataset？什么语言？什么口音？什么设备？多少延迟？多少能耗？在线还是离线？日常对话还是医学术语？错误的后果是什么？原始音频由谁保存？

技术价值很难被压缩成一个准确率。它更接近一张检查表：

> **技术价值 ≈ 性能 × 覆盖 × 稳定性 × 可获得性 × 可控制性 ÷ 总成本**

这不是可以直接计算的财务公式。它只是提醒我们，98% 到 99% 有时意味着同一口径下错误数量减少一半；有时却只是旧 Benchmark 上一次几乎没有现实意义的微调。小数点本身无法告诉我们是哪一种。

技术真正持续做的，并不只是解决问题。

> **Technology continuously reformulates the problem.**

## 三、Benchmark 是共同地图，但 Reality 会不断改题

机器学习离不开 Benchmark。没有共同训练集、测试集和指标，各个团队可以在不同难度的任务上宣布自己最好，结果无法比较，后来者也无法在前人的工作上继续前进。

但一张共同地图被使用得越久，研究共同体也越容易把“熟悉地图”误认为“理解疆域”。

ObjectNet 就是一个清楚的例子。研究者重新拍摄日常物体，有意改变背景、旋转角度和观察视点，减少常见视觉数据集里的背景与姿态偏差。2019 年论文报告，当时的物体识别系统从既有 Benchmark 转到 ObjectNet 后，性能下降 40—45 个百分点。[^5]

模型不是突然失去视觉能力。更可能的解释是，旧成绩同时包含了对物体结构的学习、对数据集统计规律的利用，以及多年围绕公开试卷形成的适应。

Google 等机构的研究者后来把一类相关问题概括为 *underspecification*：同一条机器学习 pipeline 可以产生多个在训练域和 held-out test 上表现相近的模型，可是这些模型进入真实部署环境后，行为可能很不一样。标准测试不足以唯一决定我们真正想要的系统。[^6]

这正好承接[上一篇文章](/posts/map-territory-ai-reality-injection/)的命题：

> **The map is not the territory.**

Benchmark 是必要的共同地图。它让竞争可以比较，让知识可以累积。但当地图开始失去信息量，最重要的动作不再是在同一条边界上描得更粗，而是重新进入 Territory：收集新的口音、设备、背景、失败案例和现实约束，再画一张更难的地图。

因此，科研不只是 Answer Production，也包括 Problem Reformulation。

真正的进步有时不是把旧试卷从 99.90 分做到 99.91 分，而是发现旧试卷已经问不出重要差异。

## 四、文明为什么让许多人同时寻找同一个答案

如果结果已经出现，再回头看平行研究，大量工作会显得重复。

Sphinx 的故事里，李开复和另一位学生尝试统计方法，其他三十多人继续研究专家系统。两组共享样本和测试标准，又在方法上竞争。后来统计路线胜出，我们很容易产生事后幻觉：所有资源一开始就应该集中到正确路线。

可是在答案出现以前，没有人拥有这个上帝视角。

面对真正未知的问题，文明很少像一台中央规划的 serial computer。它更像一台 distributed search machine：不同实验室、公司和国家从不同假设出发，承担彼此独立的失败风险，也防止整个领域过早锁定在一条看似合理却错误的路径上。

微积分的历史经常被用来说明这种 multiple discovery。Newton 在 1664—1666 年间、Leibniz 在 1675 年左右，各自形成了概念和风格不同的无穷小微积分。两人的工作不是同一年完成，也不应被简化为毫无历史联系的神话，但数学史研究仍然把它们视为两次独立创造；后来围绕优先权发生的长期争论，又说明 discovery 不只关乎公共知识，也关乎声誉、身份和个人命运。[^7]

这种并行机制之所以高效，不是因为每条路线都值得，而是因为事前无人知道哪条路线会成功。

> Parallel exploration 不是消灭浪费，而是用 redundancy 购买 discovery probability。

重复还承担另外两种功能。第一是独立验证：如果一个结果只能由原团队、原代码和原数据得到，它离可靠知识仍有距离。第二是扩散：论文可以公开，能力却不会随着论文自动进入每一家企业、每一种语言和每一个行业。工程实现、人才训练、产品接口、用户信任和责任制度，都需要在不同场景里重新建立。

但“并行搜索”不是所有重复研究的免罪金牌。2018 年推出的 GLUE 把九项自然语言理解任务组织成共同 Benchmark；预训练模型迅速提高成绩后，研究者认为原 Benchmark 的区分能力已经有限，于是推出更困难的 SuperGLUE。[^8]

一个成熟领域必须同时具备两种能力：允许多人探索未知，也能承认某张旧试卷已经没有足够信息量。

如果一项研究既没有带来新的现实覆盖，也没有降低成本、风险或能耗，不能提供独立证据，也不能迁移到别的问题，那么继续增加小数点，很可能只是在为旧的激励结构服务。

## 五、同一种进步，为什么从个体看会如此残酷

现在把观察尺度从文明拉回个人，事情会突然变得不一样。

假设一千个人每天都要完成某项重复任务。一个工程团队把它自动化以后，原来需要一千人投入的时间，也许只需要十个人维护系统。

从系统角度看，这是明确的 productivity improvement：大量人类时间从重复任务中释放出来。

从其中一个依赖这项任务获得工资的人来看，它却可能表现为：岗位被取消了。

这两种描述可以同时为真。

> **What is progress for the system may be disruption for the individual.**

经济学家 Daron Acemoglu 与 Pascual Restrepo 用 task framework 描述过这种张力：自动化让资本接管此前由劳动完成的任务，会产生 displacement effect；新的任务则可能让劳动重新获得比较优势，形成 reinstatement effect。生产率提高并不保证同一批劳动者、在同一时间、以同样收入进入那些新任务。[^9]

所以，“劳动被解放”是一句尺度不完整的话。

> **The solution liberates labor from the task, but it does not necessarily liberate the worker from the need to earn a living.**

技术完成的是第一件事：让某种工作不再需要被反复做。它不会自动完成第二件事：把节省下来的时间、收入、所有权、身份和新的 productive role 分配给原来的劳动者。

这也构成工程师的一种悖论。

一个工程师每天花两小时处理 Excel。更好的工程实践，是写一个脚本；再进一步，是做一套平台，让整个部门都不必再手动完成这件事。从工程角度看，他越优秀，越接近让旧任务不再需要自己。

如果他的价值只等于“熟练完成这项任务”，成功就会侵蚀自己的稀缺性。如果他拥有的是对问题的理解、自动化方法、跨场景迁移能力，以及系统形成后的部分 ownership，那么同一次成功也可能把他推向更高层级的工作。

被解决的不是“这个人”。被解决的是他原来依附的 task。真正危险的是，一个人把全部收入、身份和议价权都绑定在那个 task 上。

## 六、Transformer：当一个解法重新定价整个研究共同体

Transformer 对 NLP 研究共同体的影响，是这场张力最接近今天的案例。

在 2017 年之前，sequence modeling 的主流路线依赖 recurrent 或 convolutional neural networks。很多研究价值存在于 RNN、LSTM、GRU、sequence-to-sequence、parser、特征工程以及为具体任务设计的 architecture 里。

2017 年的 *Attention Is All You Need* 提出一种完全基于 attention 的架构，拿掉 recurrence 与 convolution。论文最初验证的是机器翻译，却同时表现出更好的训练并行性和更短的训练时间。[^10]

2018 年公开、2019 年收录于 NAACL 的 BERT 又把变化推进了一步：先在无标注文本上预训练通用的双向 Transformer representation，再用一个额外输出层针对不同任务 fine-tune，不需要为每项任务进行大量专用架构改造。论文在当时的 11 项 NLP 任务上取得新的 state of the art。[^11]

研究的基本生产方式开始发生变化：

> **Task → Design a Model → Train**

越来越多地转向：

> **Pretrain a General Model → Adapt to Many Tasks**

这并不意味着 Transformer 一出现，过去做 NLP 的研究者就“失业了”，也不意味着语言学、序列建模或旧方法从此错误。真正发生的是：一个新的 general method 开始重新给不同类型的知识标价。

一个研究者过去积累的 optimization、representation、linguistics、evaluation、data work 和 error analysis，仍然可以迁移到新范式中；如果他的比较优势极度狭窄，只是比别人更会设计某一种 LSTM variant，那么这部分 paradigm-specific knowledge 的稀缺性就可能迅速下降。

可以把它写成：

> **Human Capital = Transferable Knowledge + Paradigm-Specific Knowledge**

范式迁移并不会把前者归零，却可能突然压低后者的价格。

基础模型进一步放大了这种变化。Stanford 关于 foundation models 的报告把它概括为 *homogenization*：越来越多下游系统建立在少数可广泛适配的基础模型之上。这带来强大的 leverage，也让同一个基础模型的缺陷向大量下游系统传递，使能力、风险与研究基础设施更加集中。[^12]

原来，许多研究组分别为许多 downstream tasks 建造专用系统；后来，训练一个 general model 的成本可以被多个任务共同分摊，大量 task-specific intellectual labor 被压缩进一个可重复调用的模型。

> **Technology compresses repeated human effort into reusable capital.**

蒸汽机把一部分肌肉劳动压进 machine capital；软件把 procedural labor 压进 code；foundation model 开始把一部分语言与认知劳动压进 model weights。

一旦被压缩，它就可以被低成本反复调用。它创造巨大生产率，也同时压缩了某些研究者过去赖以形成稀缺性的工作。

2023 年一项基于 26 位 NLP 研究者深度访谈，并辅以 ACL Anthology 数据分析的研究，把当时描述为一个 disruptive change 时期：变化不仅发生在方法，还发生在资金、Benchmark 文化、软件基础设施与研究中心化程度上。[^13]

可是 Transformer 并没有消灭 NLP。那项研究同时记录了这个领域规模的显著扩张。旧任务被商品化以后，新的前沿又出现在模型能力、效率、解释、数据、评估、安全、多模态、工具使用和社会影响之中。

这给 *Solved Is Not Finished* 增加了另一层含义：

> **Task destruction ≠ Field destruction.**

一个旧问题被解决，不一定终结研究。它会改变 research frontier 的位置，也会迫使原来的研究者重新决定：守住旧路线，迁移可转移的知识，还是上移一个抽象层级，去寻找新方法仍然不能回答的问题。

对一个人的真正考验，不只是能否掌握当前最先进的方法。

而是当当前最先进的方法让自己的旧问题失去价值时，能否重新定位问题。

## 七、如果已有答案都不值得再学，教育会变成什么

现在回到第二个问题：既然已经有现成模型，为什么还要学习别人做过的事情？

同样可以先把这个判断推到极端。

如果所有已有答案都不值得再学，我们是不是也不再学习微积分，因为 Mathematica 会算？不再学习线性代数，因为 NumPy 会算？不再学习编译器，因为 GCC 已经存在？不再学习力学，因为有限元软件可以输出结果？

这样的教育会制造大量工具用户，却很难制造能够判断工具何时失效的人。

学习一个领域，从来不只是为了重新生产它已经存在的 output。

MIT 已经有 Linux 可以使用，却仍在 2006 年开发了简化的 Unix-like 教学操作系统 xv6，后来又把它迁移到 RISC-V。学生实现系统调用、页表、进程调度、锁和文件系统，不是为了用 xv6 在市场上击败 Linux，而是为了在头脑中建立一张可以运行的因果模型。[^14]

成品往往太复杂，也封装得太好。它让人迅速获得 output，却不一定让人看见内部变量怎样共同产生结果。教学中的重复建造，不是商业上的重复投资，而是一种认知实验。

学习一个小型语音识别系统也是如此。目的不必是重新发明 Whisper，而是理解训练数据如何改变模型，representation 如何影响可学习性，loss function 优化了什么，evaluation 漏掉了什么，distribution shift 为什么让系统失效。

管理学者 Wesley Cohen 与 Daniel Levinthal 把组织识别外部新知识的价值、吸收它并将其用于商业目的的能力称为 *absorptive capacity*；这种能力依赖此前积累的相关知识。[^15]

把这个概念延伸到个人，会得到一句重要的话：

> **别人已经拥有知识，不等于你已经拥有使用这项知识的能力。**

完全不了解语音识别的人也许会调用 API，却难以判断 98% 是在哪个测试集上得到的，为什么专业术语突然失效，怎样建立自己的评估集，什么时候应该更换供应商，错误究竟来自模型、输入设备，还是整个 workflow。

因此：

> **Use the solution ≠ Own the capability**

调用现成方案，获得的是 capability as a service；理解其中可迁移的机制，获得的则是重新定义、诊断、迁移和建造的能力。

AI 让 answer acquisition 的成本大幅下降，学习的投资回报函数也随之改变。过去的学习经常停在：

> Learn → Reproduce

现在更值得追求的路径是：

> **Use → Understand → Abstract → Transfer → Recombine → Build**

不必从零制造每一个轮子。但应该知道轮子为什么在这里有效，哪些力学原理可以迁移，以及路面改变时，现有轮子会在哪里停下。

## 八、租用共同底座，拥有稀缺互补资产

研究、学习与职业最终会在 ownership 这个问题上汇合。

国家和企业不会因为一项通用技术已经存在，就自动放弃所有控制权。GPS 已向全球提供定位服务，欧洲仍建设由文职机构控制的 Galileo，以获得独立保障；同时，Galileo 又强调与 GPS、GLONASS 的 interoperability。北斗的白皮书也同时强调自主运行与开放兼容。[^16]

这说明：

> **Independence ≠ Isolation**

主权不是把所有技术从头重造一遍，而是知道什么可以依赖，什么必须能替换，什么一旦失去就会连行动权也一起失去。

个人也面临同样的架构选择。

我现在会使用语音输入工具，把说出的想法转成文字，再进入文章和知识系统。我没有必要为了这件事从头训练一个基础语音模型。真正值得拥有的，是原始音频和转写文本的导出能力，是自己的词汇、纠错规则和评估案例，是从语音到文章、视频、代码或知识库的工作流，也是最终形成的作品、档案、distribution 与读者关系。

这可以压缩成一句：

> **Rent the common base; own the scarce complement.**

租用已经商品化、规模化的共同底座；拥有只有自己的现实经历、判断、语境和长期积累才能形成的互补资产。

这也是为什么本文仍然属于 The Worker Investor，而不只是一篇机器学习史。

一个 worker 最大的职业风险，并不只是某个工具取代了某项任务，而是自己的全部 human capital 都集中在那项正在被商品化的任务上。技术进步的重要目的之一，就是把原来昂贵的 task 变便宜。把职业护城河完全建立在“这项工作现在仍然昂贵”之上，本身就是一种集中风险。

[Human Capital ETF](/posts/2026-07-12-human-capital-etf-framework/) 因此不应该只是一张热门技能清单。更合理的组合至少包含四类东西：能够跨范式迁移的基础知识，帮助进入当前前沿的 Growth 工具，持续接触 Reality 的领域经验，以及把私人能力变成公开作品与长期 ownership 的 Distribution。

这四类资产的期限不同。当前工具可能折旧很快，数学、工程直觉、语言、判断和学习能力通常更耐久；现实经验提供模型之外的新信息；作品与系统则把一次劳动保存成可以继续工作的资本。

> **不要只学习一个技术产品。学习产生它、检验它、迁移它和超越它的 primitives。**

一个人不需要拥有整个技术栈，但需要知道自己依赖哪一层，积累在哪一层，外部工具消失以后还有什么留在自己手里。

## 结语：一个答案出现以后，谁被释放，谁被重新定价

最初的问题现在可以获得一个更完整的回答。

为什么一个已经研究几十年的技术，还需要被许多人反复解决？

因为技术解决的通常是某组 assumptions 下的 formulation，而 Reality 会继续改变语言、设备、成本、风险和目标；因为未知问题需要 parallel search，可靠知识需要独立验证，公共能力需要在不同组织与场景中扩散；也因为一个通用解法出现以后，它不会让问题世界停止，只会把前沿推到新的位置。

为什么别人已经做出了 98%、99% 的模型，我还要学习？

因为调用答案与拥有能力不是一回事。学习的目的不必是商业上重造同一个成品，而是建立吸收、判断、诊断、迁移与重新定义问题的能力。

但这篇文章最后抵达的，已经不只是“为什么继续研究”。

它还留下一个更难的问题：当一个 solution 把重复劳动压缩成可复用资本，谁拥有那份资本？谁获得被释放的时间？谁失去原来的稀缺性？谁又有能力迁移到新的 frontier？

从文明尺度看，并行研究与技术竞争是一套高效的搜索和压缩机制。它把昂贵答案变成公共起点，把重复劳动变成可复用能力。

从个人尺度看，同一个过程却可能非常残酷。一个被解决的 task，可以释放整个人类系统，也可以动摇那个依靠它生活的人。

因此，*Solved Is Not Finished* 有两层含义。

第一层是关于问题：只要 Territory 仍在变化，一个旧答案就不会穷尽 Reality。

第二层是关于人：当技术让旧任务结束，个人仍然要重新配置自己的能力、收入、身份与 ownership。

前人的答案不是让后来者停止学习的终点。

它是后来者不必从零出发，却必须重新决定自己站在哪里的起点。

## 参考资料

[^1]: Carnegie Mellon University Computer Science Department，[《Kai-fu Lee: Large-vocabulary Speaker-independent Continuous Speech Recognition》](https://csd.cs.cmu.edu/academics/doctoral/degrees-conferred/kaifu-lee)，记录论文题目、导师 Raj Reddy 与 1988 年毕业时间；李开复，[《从 1983 到 2017，我的幸运与遗憾》](https://www.chuangxin.com/blog/1983-2017)，2017。40%、80% 与 96% 来自李开复对博士阶段研究的个人回顾，本文不把这些数字解释为跨数据集、跨年代可直接比较的通用准确率。
[^2]: Alec Radford、Jong Wook Kim、Tao Xu、Greg Brockman、Christine McLeavey、Ilya Sutskever，[《Robust Speech Recognition via Large-Scale Weak Supervision》](https://cdn.openai.com/papers/whisper.pdf)，OpenAI，2022；OpenAI，[《Introducing Whisper》](https://openai.com/index/whisper/)，2022。
[^3]: Vineel Pratap、Andros Tjandra、Bowen Shi、Paden Tomasello、Arun Babu 等，[《Scaling Speech Technology to 1,000+ Languages》](https://ai.meta.com/research/publications/scaling-speech-technology-to-1000-languages/)，Meta AI / NeurIPS，2023。
[^4]: Takuya Yoshioka、Zhuo Chen、Dimitrios Dimitriadis、William Hinthorn、Xuedong Huang、Andreas Stolcke、Michael Zeng，[《Meeting Transcription Using Virtual Microphone Arrays》](https://www.microsoft.com/en-us/research/publication/meeting-transcriptions-using-virtual-microphone-arrays/)，Microsoft Research Technical Report MSR-TR-2019-11，2019。22.3% WER 对应七路输入、非重叠语音片段；包含说话人归属的 SAWER 为 26.7%，不能与其他数据集上的识别率直接比较。
[^5]: Andrei Barbu、David Mayo、Julian Alverio、William Luo、Christopher Wang、Dan Gutfreund、Josh Tenenbaum、Boris Katz，[《ObjectNet: A Large-scale Bias-controlled Dataset for Pushing the Limits of Object Recognition Models》](https://papers.neurips.cc/paper_files/paper/2019/hash/97af07a14cacba681feacf3012730892-Abstract.html)，*NeurIPS 2019*。论文报告的是相对既有 Benchmark 下降 40—45 个百分点的历史结果，不代表今天所有视觉模型在 ObjectNet 上的表现。
[^6]: Alexander D’Amour、Katherine Heller、Dan Moldovan、Ben Adlam、Babak Alipanahi、Alex Beutel 等，[《Underspecification Presents Challenges for Credibility in Modern Machine Learning》](https://www.jmlr.org/papers/v23/20-1335.html)，*Journal of Machine Learning Research*，Vol. 23，2022，pp. 1–61。
[^7]: H. J. M. Bos，[《Newton, Leibniz and the Leibnizian Tradition》](https://www.jstor.org/stable/j.ctv15r5dhc.6)，收录于 *From the Calculus to Set Theory 1630–1910: An Introductory History*，1980。Bos 将 Newton 在 1664—1666 年、Leibniz 在 1675 年形成的工作视为概念与风格不同、但都足以称为“发明微积分”的独立创造。
[^8]: Alex Wang、Yada Pruksachatkun、Nikita Nangia、Amanpreet Singh、Julian Michael、Felix Hill、Omer Levy、Samuel R. Bowman，[《SuperGLUE: A Stickier Benchmark for General-Purpose Language Understanding Systems》](https://proceedings.neurips.cc/paper/2019/hash/4496bf24afe7fab6f046bf4923da8de6-Abstract.html)，*NeurIPS 2019*。论文所称的“超过人类”对应其非专家人类基线与聚合分数，不应外推为通用语言理解已经超过人类。
[^9]: Daron Acemoglu、Pascual Restrepo，[《Automation and New Tasks: How Technology Displaces and Reinstates Labor》](https://www.aeaweb.org/articles?id=10.1257/jep.33.2.3)，*Journal of Economic Perspectives*，Vol. 33, No. 2，2019，pp. 3–30。本文借用的是其 task framework 与 displacement / reinstatement distinction，不把宏观模型直接当成任何个体职业结果的预测。
[^10]: Ashish Vaswani、Noam Shazeer、Niki Parmar、Jakob Uszkoreit、Llion Jones、Aidan N. Gomez、Łukasz Kaiser、Illia Polosukhin，[《Attention Is All You Need》](https://proceedings.neurips.cc/paper_files/paper/2017/hash/3f5ee243547dee91fbd053c1c4a845aa-Abstract.html)，*NeurIPS 2017*。
[^11]: Jacob Devlin、Ming-Wei Chang、Kenton Lee、Kristina Toutanova，[《BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding》](https://aclanthology.org/N19-1423/)，*NAACL-HLT 2019*，pp. 4171–4186。论文写作与预印本形成于 2018 年，正式会议论文发表于 2019 年。
[^12]: Rishi Bommasani、Drew A. Hudson、Ehsan Adeli、Russ Altman、Simran Arora 等，[《On the Opportunities and Risks of Foundation Models》](https://crfm.stanford.edu/report.html)，Stanford Center for Research on Foundation Models，2021。报告用 *homogenization* 描述大量下游系统建立于通用基础模型之上的趋势，并同时讨论其 leverage 与集中风险。
[^13]: Sireesh Gururaja、Amanda Bertsch、Clara Na、David Gray Widder、Emma Strubell，[《To Build Our Future, We Must Know Our Past: Contextualizing Paradigm Shifts in Natural Language Processing》](https://aclanthology.org/2023.emnlp-main.822/)，*EMNLP 2023*，pp. 13310–13325。研究基于 26 位 NLP 研究者访谈，并结合 ACL Anthology 的引文、作者与语言使用数据；本文关于“人力资本重新定价”的表达是基于这些范式变化所作的进一步推论。
[^14]: MIT PDOS，[《xv6: A Simple, Unix-like Teaching Operating System》](https://pdos.csail.mit.edu/6.828/2021/xv6.html)，记录 xv6 于 2006 年作为教学操作系统开发，并为后续本科课程迁移到 RISC-V。
[^15]: Wesley M. Cohen、Daniel A. Levinthal，[《Absorptive Capacity: A New Perspective on Learning and Innovation》](https://doi.org/10.2307/2393553)，*Administrative Science Quarterly*，Vol. 35, No. 1，1990，pp. 128–152。原论文讨论组织创新能力；本文将它延伸到个人学习，属于类比与推论。
[^16]: European Space Agency，[《Why Europe Needs Galileo》](https://www.esa.int/Applications/Satellite_navigation/Galileo/First_Galileo_Launch/Why_Europe_needs_Galileo)与[《What Is Galileo?》](https://www.esa.int/Applications/Satellite_navigation/Galileo/What_is_Galileo)；国务院新闻办公室，[《新时代的中国北斗》](https://www.beidou.gov.cn/yw/xwzx/202211/t20221104_24827.html)，2022 年 11 月。
