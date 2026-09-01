---
title: "Solved Is Not Finished：为什么一个“已经解决”的问题，仍需要被反复解决？"
date: 2026-09-01T23:05:25+08:00
slug: "solved-is-not-finished"
author: "Qiaomai"
description: "从李开复博士阶段的 Sphinx 语音识别研究出发，经过 Whisper、ObjectNet、Galileo、TPU 与 xv6，讨论为什么技术被发明以后仍会被反复研究，以及 AI 时代个人应当租用什么、理解什么、最终拥有什么。"
series: ["The Worker Investor"]
categories: ["Essay"]
tags: ["AI", "machine learning", "technology", "learning", "sovereignty", "ownership"]
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

*——从 Sphinx 的 96%，到技术主权、吸收能力与 AI 时代的个人所有权*

大约十年前，我读李开复的《做最好的自己》，注意到他谈起自己早年的语音识别研究。

在我的记忆里，那项工作发生得很早；而我读到它时，语音识别已经走过许多年。再往后，语音转写进入手机、汽车、会议软件和 AI 产品，越来越像一种随时可以调用的基础能力。

一个困惑也因此留了下来：如果机器学习的目标无非是语音识别、图像识别等有限几类任务，为什么全世界还需要那么多研究组、资本和计算资源反复投入？一旦准确率已经达到 98%、99%，继续提高那一点点，难道不会迅速进入边际收益递减吗？

第二个问题更接近个人：如果别人已经把模型训练好了，我为什么还要学习如何做语音识别？直接使用现成的 API，不是更有效率吗？

后来我逐渐意识到，技术从可用到普及之间还有成本、认知、信任和使用摩擦；企业与国家也不会因为一项通用技术已经存在，就自动放弃控制权。但这些解释仍然没有抵达最底层。

真正需要修正的，也许是“问题已经解决”这句话本身。

<!--more-->

## 一、一个被解决的问题，通常只是一个被解决的 formulation

先校正我的一处记忆。

李开复并不是在高中阶段完成那项语音识别突破，而是在 Carnegie Mellon University 攻读博士期间。CMU 的学位记录显示，他于 1988 年毕业，博士论文题为 *Large-vocabulary Speaker-independent Continuous Speech Recognition*。在他 2017 年发表的个人回顾中，1986 年底的统计系统约为 40% 的辨认率；扩大数据库并改进建模方法以后，1987 年提高到 80%，后来达到 96%。[^1]

这里最容易犯的错误，是把“96%”从原来的实验条件里取出来，放到一条跨越四十年的统一进度条上，然后认为：

> 1987 年已经完成 96%，后面的人只是在向 100% 擦掉几个小数点。

但准确率不是一种脱离测试集、词汇范围、说话人、语言和声学条件而独立存在的物理常数。李开复本人回顾那段研究时，强调的正是公共训练数据、统一测试标准和可比较结果的重要性。那个 96% 说明特定 formulation 下的统计路线取得了突破，不等于现实世界里所有人的自然语言都已经被识别。

表面上，`Speech Recognition` 像一个问题。真正展开以后，它更接近：

> Speech Recognition × Language × Accent × Noise × Device × Distance × Latency × Cost × Power × Privacy × Domain × User × Context

“语音识别达到 98%”之后，仍然要问：在哪个 dataset？什么语言？什么口音？安静房间还是多人会议？近距离麦克风还是远场设备？日常对话还是医学术语？在线还是离线？需要多少算力、能源和等待时间？原始音频由谁保存？错误的后果由谁承担？

因此，一个问题更接近由多组变量共同定义：

> **Problem = Task × Distribution × Constraint × Objective × Environment**

只要其中一个变量发生变化，研究者面对的就不再完全是同一个问题。

这也是为什么 1987 年的 96%，不是今天的 96%。有限的是任务名称，无限的是任务发生的现实条件。

> **A solved problem is usually only a solved formulation of the problem.**

所谓 solved，通常只是证明：在一组明确假设与边界内，这件事可以做到。它不等于 finished。

## 二、技术的成功不会关闭问题，反而会扩大分母

Sphinx 之后，语音识别没有沿着一条固定曲线从 96% 缓慢爬向 100%。真正发生的是，任务的分母不断扩大。

2022 年，OpenAI 发表 Whisper。它使用 68 万小时多语言、多任务语音数据进行训练，其中 11.7 万小时覆盖英语之外的 96 种语言，研究重点不是针对某一个数据集微调出最高分，而是提高模型跨数据集、跨口音、跨噪声和专业语言的 zero-shot robustness。[^2]

2023 年，Meta 的 Massively Multilingual Speech 又把单个多语言自动语音识别模型扩展到 1,107 种语言；同一研究也明确指出，世界上仍有 7,000 多种语言，而当时主流语音技术只覆盖其中很小一部分。[^3]

这不是大家对同一份标准英语听写答案反复润色。一个团队解决开放词汇，另一个团队进入低资源语言；一个团队处理安静录音，另一个团队处理远场会议；一个团队提高平均准确率，另一个团队降低延迟、能耗与部署成本。

场景一变，旧成绩甚至会显得像来自另一个问题。2019 年，Microsoft Research 在 NIST RT-07 会议测试集上，用七路分散、异步的录音设备完成带说话人标注的会议转写。即使排除重叠说话片段，系统的 word error rate 仍为 22.3%；把说话人归属也计入后，错误率为 26.7%。[^4]

这不是语音识别从高准确率“倒退”了，而是现实重新打开了更多维度：麦克风不再贴近说话人，多台设备的时钟并不同步，房间有混响，参会者会打断彼此，系统还要回答“谁说了这句话”。

因此，技术价值很难被压缩成一个准确率：

> **技术价值 ≠ 单一 Benchmark 分数**

更接近：

> **技术价值 ≈ 性能 × 覆盖 × 稳定性 × 可获得性 × 可控制性 ÷ 总成本**

这不是可以直接计算的财务公式，而是一张检查表。它提醒我们：当平均准确率趋近饱和，研究可能转向新的语言、新的设备、更低的价格、更少的能耗、更高的可靠性，或者更严重的 edge cases。

98% 到 99% 也未必只是“提高一个百分点”。若口径一致，它意味着错误率从 2% 降到 1%，错误数量减少一半。但反过来，如果一项提升既不改变真实部署，不降低成本和风险，也不能迁移到其他问题，那么 99.99% 到 99.99001% 确实可能没有多少价值。

我最初关于边际收益递减的直觉，并没有错。错的是把所有持续研究都理解为对同一指标的持续优化。

## 三、Benchmark 是共同地图，却不是 Territory

机器学习需要 Benchmark。没有共同训练集和测试标准，各个团队就可以在不同难度的任务上宣布自己“最好”，结果无法比较，也难以复现。李开复回顾 Sphinx 时反复提到的共享数据与统一标准，正是统计路线得以被验证的重要条件。

但同一张地图被使用得越久，研究共同体也越容易把“熟悉地图”误认为“理解疆域”。

ObjectNet 提供了一个清楚的例子。研究者重新拍摄日常物体，有意改变背景、旋转角度和观察视点，以减少常见视觉数据集里的背景、姿态和拍摄偏差。2019 年的论文报告，当时的物体识别系统从既有 Benchmark 转到 ObjectNet 后，性能下降 40—45 个百分点。[^5]

模型不是突然失去视觉能力。更可能的解释是，旧成绩混合了至少三种东西：对物体结构的学习、对训练数据统计规律的利用，以及多年围绕公开 Benchmark 形成的适应。

Google 等机构的研究者后来把类似问题概括为 *underspecification*：同一条机器学习 pipeline 可以产生多个在训练域和 held-out test 上表现近似的模型，但这些模型进入真实部署环境后，可能表现得很不一样。标准测试不足以唯一决定我们真正想要的行为。[^6]

这恰好承接[上一篇文章](/posts/map-territory-ai-reality-injection/)的命题：

> **The map is not the territory.**

Benchmark 是一张必要的共同地图。它让竞争可比较，让改进可累计，也让后来者不必重新发明测量体系。但当地图开始失去信息量，最有价值的动作就不是继续在同一处描粗边界，而是重新进入 Territory：收集新的口音、设备、背景、失败案例与现实约束，再画一张更难的地图。

因此，科研不只是 Answer Production，也包括 Problem Reformulation。

真正的进步有时不是把旧试卷从 99.90 分做到 99.91 分，而是发现旧试卷已经问不出重要差异。

## 四、为什么需要许多人同时研究：重复，也是搜索、验证与扩散

如果事后只看最终成功的路线，平行研究很容易显得浪费。

Sphinx 的故事里，李开复和另一位学生尝试统计方法，其他三十多人继续研究专家系统。两组共享样本和测试标准，又在方法上竞争。后来统计路线胜出，我们回头看，仿佛所有资源都应该一开始集中到这条路上。

可是在结果出现以前，没有人拥有这个答案。

面对真正未知的问题，科研更像一种 parallel search：多个团队从不同假设出发，分散失败风险，独立验证结论，也防止整个领域过早锁定在一条看似合理却错误的路径上。事后看，重复的是目标；事前看，探索的是一组尚不知道成功概率的路线。

而当一个方法成功后，知识仍然需要被复制到不同的人和组织中。论文可以公开，能力却不会随论文自动扩散。数据基础设施、工程实现、人才训练、行业知识、产品接口、用户信任和责任制度，都要在不同场景里重新建立。

所以，“全世界都可以因此受益”至少不等于：

- 每个人都能同等获得；
- 每个人都能以同样成本获得；
- 每个人都能长期稳定获得；
- 每个人都能验证、修改、替换并在供应中断后继续运行。

一项技术被发明，只暂时关闭了“是否可行”的问题。接下来打开的是扩散、适配、产品化、基础设施化与制度化。

## 五、主权不是全部自研，而是知道哪一层不能失去

国家和企业为什么要重复建设，卫星导航给出了一个极端但清晰的案例。

GPS 已经向全球提供定位服务，欧洲为什么还要建设 Galileo？European Space Agency 给出的首要理由就是欧洲的独立性：建立一个由文职机构控制、可以自主保障的全球卫星导航系统。但同一份说明也强调 Galileo 与 GPS、GLONASS 的 interoperability；独立系统并不是为了拒绝其他系统，而是可以与它们共同提高覆盖与可靠性。[^7]

北斗的逻辑也不是“独立所以封闭”。中国 2022 年发布的《新时代的中国北斗》白皮书同时强调自主建设、独立运行，以及开放兼容、多系统兼容共用。[^8]

这给“主权”增加了一个重要限制：

> **Independence ≠ Isolation**

战略冗余看起来像重复，却可能像保险一样提供安全价值、退出能力和议价权；兼容与开放又让多套系统不必成为彼此隔绝的孤岛。

企业层面也存在类似选择。Google 已经可以购买通用 CPU 和 GPU，为什么还要开发 TPU？2017 年的原始论文评估了 2015 年起部署在 Google 数据中心的第一代 TPU：在论文选取的生产推理负载上，它相较同期 CPU 和 GPU 平均快约 15—30 倍，能效高约 30—80 倍。[^9]

这组历史结果不能直接套用到今天的硬件，也不能证明“自研一定更好”。它真正说明的是：当某类负载规模巨大、延迟和能源成本会被调用量持续放大，而且软硬件可以共同优化时，原本通用的 Buy-or-Build 答案会发生变化。

反过来，一家普通公司仅仅为了口号上的“主权”从零制造 AI 芯片，很可能只是昂贵的自我感动。

合理的技术结构不是所有主体都完整重造一遍，而更接近：

> **开放共享的底座 + 有差异的方法与应用竞争 + 关键节点的战略冗余**

主权不是拥有一切。主权是知道什么可以租用，什么必须能替换，什么一旦失去就会连行动权也一起失去。

## 六、既然已经有 Linux，为什么还要让学生实现 xv6？

现在回到第二个问题：如果别人已经把语音识别做出来，我为什么还要学？

严格地说，大多数人确实没有必要从零训练一个基础语音模型。就像工程师不需要重新制造 CPU、重写 Linux 或从头开发一套完整 CFD 软件。把“学习”理解为商业上复制所有成品，只会制造巨大的机会成本。

但“直接使用”和“完全不懂”之间，还有一片很大的能力空间。

MIT 已经有 Linux 可以使用，却仍在 2006 年开发了简化的 Unix-like 教学操作系统 xv6，后来又为新的本科课程把它迁移到 RISC-V。[^10] 学生实现系统调用、页表、进程调度、锁和文件系统，并不是为了毕业后用 xv6 击败 Linux，而是为了建立一张可以在头脑中运行的因果模型。

成品往往太复杂，也封装得太好。它让人迅速得到 output，却不一定看得见内部变量怎样共同产生结果。教学中的“重复建造”，不是商业上的重复投资，而是一种认知实验。

学习一个小型语音识别系统也是如此。目的不必是重新发明 Whisper，而是理解：训练数据如何改变模型，representation 如何影响可学习性，loss function 优化了什么，evaluation 漏掉了什么，distribution shift 为什么让系统失效。

管理学者 Wesley Cohen 和 Daniel Levinthal 在 1990 年提出 *absorptive capacity*，指组织识别外部新知识的价值、吸收它并将其用于商业目的的能力；他们强调，这种能力依赖此前积累的相关知识。[^11]

把这个组织层概念延伸到个人，会得到一句很重要的话：

> **别人已经拥有知识，不等于你已经拥有使用这项知识的能力。**

完全不了解语音识别的人也许会调用 API，却难以判断：98% 是在哪个测试集上得到的，为什么专业术语突然失效，怎样建立自己的评估集，什么时候应该更换供应商，错误究竟来自模型、输入设备，还是整个 workflow。

因此：

> **Use the solution ≠ Own the capability**

使用现成方案，获得的是 output capability；理解其中可迁移的机制，获得的是 problem-solving capability。前者回答“怎样把这段录音转成文字”，后者还能继续追问：哪个 assumption 失效了？问题应该怎样重新定义？哪些原理能迁移到另一个领域？

学习一个已经存在的技术，不意味着从零制造同一个产品。更合理的路径是：

> **Use → Understand → Abstract → Transfer → Modify → Build**

先使用最好的轮子，再理解它的 mechanics；学习能够迁移的部分，只在现有轮子停止工作的地方建造。

## 七、什么时候继续研究，确实只是刷分？

如果文章停在这里，很容易滑向另一个过度结论：只要叫“研究”或“自主”，任何重复投入就都有价值。

事实并非如此。

2018 年推出的 GLUE，把九项自然语言理解任务组织为共同 Benchmark。预训练模型的进展很快；一年多以后，研究者认为系统成绩已经超过非专家人类基线，原 Benchmark 留给后续研究的区分空间有限，于是推出包含更困难任务的 SuperGLUE。[^12]

这个案例不是说 GLUE 所衡量的“语言理解”已经完成。恰恰相反，它说明一个测量工具已经难以继续区分重要进步，因此需要更换问题和测量方式。

判断一项增量研究是否仍有信息量，可以追问：

- 它是否改善真实部署，而不只是公开测试集？
- 它是否降低成本、延迟、能耗或高后果错误？
- 新方法是否能够迁移到其他任务或暴露新的机制？
- 它是否带回了新的 distribution、constraint 或现实反馈？

如果答案全部是否定的，继续增加小数点后的成绩，可能只是学术激励、Leaderboard 竞争和路径依赖。

正确的科研不只是不断回答问题，也包括判断一个旧问题何时已经失去信息量。不是所有重复都有价值；有价值的是能够带来 independent evidence、new capability、new coverage 或 new control 的重复。

## 八、AI 时代，个人到底应该拥有哪一层？

最近，我自己也在使用语音输入工具，把说出的想法转成文字，再进入文章与知识系统。我完全没有必要为了这件事从头训练 Whisper。真正值得设计的，是能力的层次。

| 层级 | 更合理的个人策略 |
|---|---|
| 基础语音模型 | 调用商业服务或开源模型，不必默认从零训练 |
| 推理与输入工具 | 保留可替换方案，避免整个流程锁死在单一入口 |
| 原始数据 | 拥有自己的音频、转写文本与导出能力 |
| 个性化层 | 积累词汇表、纠错规则、context 与 evaluation cases |
| 工作流 | 拥有从语音到文章、视频、代码或知识库的转换过程 |
| 最终资产 | 拥有作品、档案、distribution、读者关系与个人品牌 |

这可以压缩成一句：

> **Rent the common base; own the scarce complement.**

租用已经商品化、规模化的共同底座；拥有只有你的现实经历、判断、语境和长期积累才能形成的互补资产。

个人主权的最低充分条件，不是“我能从头训练所有模型”，而是：我能判断它、验证它、替换它、迁移自己的数据，并在某个供应商消失后继续工作。

这也是为什么本文最终属于 The Worker Investor，而不只是一篇机器学习史。

AI 可以把答案与基础能力民主化，却不会自动赋予一个人 agency、judgment、responsibility 和 ownership。一个 worker 不需要拥有整个技术栈，但需要理解自己依赖哪一层，把现实经验留在哪一层，以及劳动结束以后，哪一部分还能继续属于自己。

在[《The First Principle》](/posts/the-first-principle-beyond-articulation/)里，我把知识与行动的关系写成：

> Knowledge → Practice → Feedback → Judgment → Build → Ownership

现在还可以再补一层。前人的 solution 是 Civilization Prior，是公共起点；个人学习的目的，不是重复所有历史实验，而是建立吸收能力，在现实条件变化时知道旧答案在哪里停止，并把新的反馈转成自己的 capability 与 asset。

因此，AI 时代值得学习的，不是每一个产品的内部细节，而是那些具有较长 half-life、较强 transferability、能够改变 constraint，并持续生成新问题的 primitives。

不是为了证明“别人能造，我也能造”。

而是为了在必须做判断时，自己仍然能够判断；在已有工具失效时，自己仍然能够定位问题；在外部能力足够便宜时，知道怎样把它接入自己的 Reality → Capital Pipeline。

## 结语：Solved 之后，真正的问题才刚刚开始

回到我十年前留下的两个疑问。

为什么语音识别已经研究几十年，仍然需要那么多人继续投入？

因为被解决的从来不是一个永恒不变的“语音识别”，而是某种语言、某类说话人、某组设备、某个数据分布和成本约束下的 formulation。技术的成功不会关闭现实，反而会扩大人类对覆盖、可靠性、价格、隐私和控制权的要求。

为什么别人已经做出了 98% 的模型，我还要学习？

因为直接调用一个 solution，只让我获得一次 output；理解它的边界、机制和 transferable primitives，才让我拥有吸收、判断、改造与继续行动的能力。

但这也不意味着所有研究都值得，所有组织都应该自研，所有人都要从零开始。边际收益真的会递减，Benchmark 真的会失去信息量，主权也真的可能沦为昂贵借口。

真正合理的结构是：

> **Use what civilization has solved.<br>
> Understand why it works.<br>
> Keep the ability to replace what you depend on.<br>
> Build only where reality has changed the problem.<br>
> Own the scarce complement.**

使用文明已经解决的部分，理解它为什么有效；对关键依赖保留退出能力，只在现实改变了问题的地方继续建造，并拥有真正稀缺的互补资产。

所以上一篇文章提出：在无限地图的时代，必须不断回到 Territory。

这一篇可以再向前一步：

> **只要 Territory 仍在变化，Solved 就不会等于 Finished。**

一个问题被第一次解决，只意味着“人类已经证明它可以做到”的阶段暂时结束。接下来才是扩散、适配、降本、可靠化、教育、控制权与所有权的漫长过程。

前人的答案不是让后来者停止学习的终点。

它是后来者不必从零出发的起点。

## 参考资料

[^1]: Carnegie Mellon University Computer Science Department，[《Kai-fu Lee: Large-vocabulary Speaker-independent Continuous Speech Recognition》](https://csd.cs.cmu.edu/academics/doctoral/degrees-conferred/kaifu-lee)，记录论文题目、导师 Raj Reddy 与 1988 年毕业时间；李开复，[《从 1983 到 2017，我的幸运与遗憾》](https://www.chuangxin.com/blog/1983-2017)，2017。40%、80% 与 96% 来自李开复对博士阶段研究的个人回顾，本文不把这些数字解释为跨数据集、跨年代可直接比较的通用准确率。
[^2]: Alec Radford、Jong Wook Kim、Tao Xu、Greg Brockman、Christine McLeavey、Ilya Sutskever，[《Robust Speech Recognition via Large-Scale Weak Supervision》](https://cdn.openai.com/papers/whisper.pdf)，OpenAI，2022；OpenAI，[《Introducing Whisper》](https://openai.com/index/whisper/)，2022。
[^3]: Vineel Pratap、Andros Tjandra、Bowen Shi、Paden Tomasello、Arun Babu 等，[《Scaling Speech Technology to 1,000+ Languages》](https://ai.meta.com/research/publications/scaling-speech-technology-to-1000-languages/)，Meta AI / NeurIPS，2023。
[^4]: Takuya Yoshioka、Zhuo Chen、Dimitrios Dimitriadis、William Hinthorn、Xuedong Huang、Andreas Stolcke、Michael Zeng，[《Meeting Transcription Using Virtual Microphone Arrays》](https://www.microsoft.com/en-us/research/publication/meeting-transcriptions-using-virtual-microphone-arrays/)，Microsoft Research Technical Report MSR-TR-2019-11，2019。22.3% WER 对应七路输入、非重叠语音片段；包含说话人归属的 SAWER 为 26.7%，不能与其他数据集上的识别率直接比较。
[^5]: Andrei Barbu、David Mayo、Julian Alverio、William Luo、Christopher Wang、Dan Gutfreund、Josh Tenenbaum、Boris Katz，[《ObjectNet: A Large-scale Bias-controlled Dataset for Pushing the Limits of Object Recognition Models》](https://papers.neurips.cc/paper_files/paper/2019/hash/97af07a14cacba681feacf3012730892-Abstract.html)，*NeurIPS 2019*。论文报告的是相对既有 Benchmark 下降 40—45 个百分点的历史结果，不代表今天所有视觉模型在 ObjectNet 上的表现。
[^6]: Alexander D’Amour、Katherine Heller、Dan Moldovan、Ben Adlam、Babak Alipanahi、Alex Beutel 等，[《Underspecification Presents Challenges for Credibility in Modern Machine Learning》](https://www.jmlr.org/papers/v23/20-1335.html)，*Journal of Machine Learning Research*，Vol. 23，2022，pp. 1–61。
[^7]: European Space Agency，[《Why Europe Needs Galileo》](https://www.esa.int/Applications/Satellite_navigation/Galileo/First_Galileo_Launch/Why_Europe_needs_Galileo)；European Space Agency，[《What Is Galileo?》](https://www.esa.int/Applications/Satellite_navigation/Galileo/What_is_Galileo)。
[^8]: 国务院新闻办公室，[《新时代的中国北斗》](https://www.beidou.gov.cn/yw/xwzx/202211/t20221104_24827.html)，2022 年 11 月。
[^9]: Norman P. Jouppi、Cliff Young、Nishant Patil、David Patterson 等，[《In-Datacenter Performance Analysis of a Tensor Processing Unit》](https://arxiv.org/abs/1704.04760)，*Proceedings of the 44th Annual International Symposium on Computer Architecture*，2017。性能与能效数字只对应论文评估的第一代 TPU、同期硬件和当时的 Google 生产推理负载。
[^10]: MIT PDOS，[《xv6: A Simple, Unix-like Teaching Operating System》](https://pdos.csail.mit.edu/6.828/2021/xv6.html)，记录 xv6 于 2006 年作为教学操作系统开发，并为后续本科课程迁移到 RISC-V。
[^11]: Wesley M. Cohen、Daniel A. Levinthal，[《Absorptive Capacity: A New Perspective on Learning and Innovation》](https://doi.org/10.2307/2393553)，*Administrative Science Quarterly*，Vol. 35, No. 1，1990，pp. 128–152。原论文讨论的是组织创新能力；本文把它延伸到个人学习时，属于本文的类比与推论。
[^12]: Alex Wang、Yada Pruksachatkun、Nikita Nangia、Amanpreet Singh、Julian Michael、Felix Hill、Omer Levy、Samuel R. Bowman，[《SuperGLUE: A Stickier Benchmark for General-Purpose Language Understanding Systems》](https://proceedings.neurips.cc/paper/2019/hash/4496bf24afe7fab6f046bf4923da8de6-Abstract.html)，*NeurIPS 2019*。论文所称的“超过人类”对应其非专家人类基线与聚合分数，不应外推为通用语言理解已经超过人类。
