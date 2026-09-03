---
title: "技能不会消失，只会上移：从 Alexandr Wang 到 AI 时代的人力资本重构"
date: 2026-09-04T00:42:12+08:00
slug: "skills-move-up-abstraction-stack"
author: "Qiaomai"
description: "从 Alexandr Wang 的竞赛训练、Scale AI 创业与 Meta 经历出发，讨论 AI 如何把技能价值推向更高抽象层，并提出一套连接 domain、computation、systems thinking、judgment 与 ownership 的人力资本框架。"
series: ["Human Capital ETF"]
categories: ["Essay"]
tags: ["AI", "human capital", "skills", "systems thinking", "learning", "ownership"]
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

*——AI 时代真正值得投资的，不是某一个永远不会过时的 skill，而是一套能够从具体问题上升到抽象模型，再借助 AI 返回现实、构造系统并获得 ownership 的能力。*

在 2026 年的 Y Combinator Startup School 上，Alexandr Wang 被问到一个越来越普遍的问题：当 AI 已经能够写代码，年轻人还需要学习 Computer Science 吗？还需要数学、编程和那些传统意义上的 technical skills 吗？

他的回答值得注意。他没有说“代码永远重要”，而是说，systematic and rigorous thinking 仍然非常重要，只不过 abstraction layer 正在不断上移。以前工程师直接写代码，再组织代码形成软件；后来需要组织人形成公司；现在开始组织 agents；未来的问题，可能是如何让百万、甚至更大规模的 agents 有效协作。工具变化了，操作对象变化了，但 systems thinking 并没有消失。[^1]

这句话实际上重新定义了“AI 时代到底应该学什么”。

我们可能一直在问一个层级太低的问题：

> **Which skill should I learn?**

而真正的问题应该是：

> **At what abstraction layer should I learn to operate?**

以及：当 AI 不断把执行层自动化以后，我怎样仍然能够理解 reality、定义 problem、构造 model、build system，并最终 capture the value？

Alexandr Wang 自己的成长经历，恰好提供了一个极端、但很有解释力的案例。

<!--more-->

## 一、Alexandr Wang 的故事，不应该从“19 岁创业”开始

如果只看 compressed biography，Alexandr Wang 的故事很容易被讲成典型的 Silicon Valley 神话：在 Los Alamos 长大，数学竞赛少年，MIT dropout，19 岁共同创办 Scale AI，后来进入 Meta 参与超级智能研究。

这种讲法信息量其实很低，因为它几乎无法回答：他的能力究竟是怎样形成的？

Alexandr Wang 成长于新墨西哥州 Los Alamos。这里因 Manhattan Project 和 Los Alamos National Laboratory 闻名。他在采访中谈到，父母都是物理学家，早年都曾在 Los Alamos National Laboratory 工作；他的青少年时期则大量参与数学、物理和计算机竞赛。USACO 的正式名单显示他是 2012–2013 赛季 finalist，AAPT 的记录则显示他在 2014 年进入美国 Physics Team。[^2]

这意味着，在创业之前，他已经拥有了一批相当 specific 的 skills：

> **Math + Physics + Algorithms + Programming**

但真正关键的下一步，不是继续参加更多竞赛。

高中毕业后，他进入 Silicon Valley，在 Quora 工作，之后进入 MIT。Scale 的公开讲者履历还列出了他在 Hudson River Trading 从事 algorithm development、在 Addepar 从事 software engineering 的经历。[^3]

Alexandr 后来回忆，这两个世界给他的东西完全不同。MIT 给了他 exploration：接触 machine learning、TensorFlow，训练自己的模型。公司则给了他另一种知识：一个东西实际上是怎样被 build 出来的。[^4]

公司从外部看起来是 logo、产品、职位和组织架构；进入内部以后，你才会看到 decision、iteration、deadline、trade-off、人之间的协作，以及一个模糊 idea 如何最终变成能够运行的 product。他在 YC 的对谈中明确把学校与公司这两种经历都视为重要。

它们形成了一个非常重要的组合：

> **Theory ↔ Reality**

他没有只停留在 map 上，也没有只在 territory 里重复劳动。他开始在两者之间移动。

## 二、Scale AI 最重要的 insight，来自一个非常具体的问题

后来，Alexandr Wang 在 MIT 自己训练机器学习模型。

按照他的回忆，训练模型大致需要三种东西：

> **Compute + Code + Data**

Compute 已经可以通过 cloud service 获得，code 有 TensorFlow 等工具。但是 data 呢？

他发现，获取、清洗、标注、组织高质量训练数据仍然非常麻烦。于是一个非常具体的 friction 出现了：

> **Compute ✓　Code ✓　Data ?**

当时前两项基本可以“按一下按钮”获得，而训练数据并没有类似的基础设施。

注意这个 insight 是怎么出现的。它不是“AI 很有前景，我应该创业”，也不是“Data is the new oil，所以我要做 data company”，更不是打开一份行业报告，看见数据市场的 CAGR 很高，便决定进入。

真实顺序更接近：

> **Build → Friction → Bottleneck → Abstraction**

先做，然后撞墙，再问：为什么每次都会撞这堵墙？

如果这个问题不是自己反复遇到，而是整个产业都在遇到，它就可能从一个 individual problem 变成 infrastructure opportunity。

这就是 specific skill 为什么重要。没有训练模型的经验，Alexandr 很难真正感受到 data bottleneck。他后来回忆，一些早期投资者不理解数据为什么如此重要；在他看来，原因之一是那些人没有亲自训练过模型。[^5]

这句话背后有一个非常深的认识：

> **现实经验本身就是 information advantage。**

## 三、但 Alexandr Wang 并不是一开始就想到了 Scale

这里尤其值得去掉“成功人士传记”常见的 hindsight bias。

Alexandr 和团队进入 YC 时，最开始尝试的是另一个方向：用 AI agent 帮助人们获得医疗服务。从今天来看，这个 idea 甚至并不荒谬，但在 2016 年，timing 不对。

他们做了一两个月，Jared Friedman 明确告诉他们，这条路线可能走不通。团队于是回到 drawing board，重新寻找问题，最终才转向后来成为 Scale 的方向。[^6]

这意味着，真实创新过程不是：

> **Vision → Success**

而是：

> **Hypothesis → Build → Feedback → Wrong → Update → Build Again**

这和[《地图、疆域与 AI》](/posts/map-territory-ai-reality-injection/)讨论的命题恰好是一回事：

> **The map is not the territory. When there is something wrong, reality always wins.**

真正重要的不是第一次画出完美地图，而是：

> **你有没有能力让 territory 持续修正你的 map？**

## 四、Scale 最初甚至不是一家“AI 神话公司”

2016 年，YC 对 Scale 的介绍非常朴素。

当时 Scale 被描述成一种 “API for human labor”：开发者通过 API，把数据提取、分类、人工判断等任务交给外部劳动力完成。最初的 vision 里已经包含 human + machine 的组合——能自动化的部分逐渐自动化，而难以自动处理的灰色区域继续由人完成。YC 当年的发布页也清楚写明，Scale 由 Lucy Guo 与 Alexandr Wang 共同创办，而不是一个人的英雄故事。[^7]

随后，自动驾驶成为 Scale 极其重要的早期市场。Camera、LiDAR 等传感器制造出巨量数据，而计算机视觉模型需要知道：这是 pedestrian，这是 lane，这是 vehicle，这是 traffic sign。

这些看上去极其 mundane 的工作，实际上构成了模型认识现实世界的基础设施。

Scale 在 2026 年回顾公司十年历史时，仍然把最初那个判断概括为：data matters as much as models and compute。公司也承认，早期做的是行业认为相当“不性感”的工作：labeling、edge cases、data pipeline、evaluation。[^8]

这给我们一个非常反直觉的启发：一个真正重要的 exponential，在早期往往并不像 exponential。

开始的时候，它可能只是给图片里的猫打标签，给道路中的行人画 bounding box，调一个 API，写一个小脚本，自动处理一个 Excel。但是，如果它下面存在一条持续扩张的 underlying curve：

> **Small problem × Large exponential → Large opportunity**

## 五、真正值得研究的，不是 Alexandr Wang 的“天才”，而是 Capital Conversion

2025 年，Meta 对 Scale 进行了一笔约 140 亿美元的投资。Scale 公告称，这笔交易使公司的估值超过 290 亿美元；Alexandr Wang 随后加入 Meta 的 AI 工作，并继续留在 Scale 董事会。Meta 之后的年报把这项少数股权投资记为 138 亿美元，因此不同报道里的数字口径并不完全相同。[^9]

但这件事真正有意思的，不是财富数字，而是他的人力资本经历了什么转换。

开始的时候，他拥有：

> **Math + Physics + Programming = Human Capital**

随后进入 Quora、MIT 等真实环境：

> **Human Capital → Exposure → Problem Awareness → Model / Thesis → Product → System → Ownership → Leverage**

因为是 founder，product 不只给他带来工资，也带来 ownership；ownership 又承接资本、组织、人才和时代趋势形成的 leverage。

于是整个过程可以压缩成：

> **Human Capital → Problem Awareness → Build → Ownership → Leverage**

这可能比“Alexandr Wang 19 岁创业”重要一百倍。

因为绝大多数人不能复制他的出生环境、竞赛天赋、MIT、YC、Silicon Valley network 和时代窗口。这里显然存在巨大的 survivorship bias。

但普通人仍然能够学习其中的 capital conversion mechanism。

## 六、于是问题来了：AI 时代，一个人还需要 skill 吗？

需要。

但我们需要重新理解 skill。

以前，人们倾向于把 skill 理解成“我能够完成某一个 task”：我会 Excel，我会 Photoshop，我会 Python，我会 CAD，我会 SQL，我会翻译。

AI 正在迅速降低大量 task execution 的成本。Stanford 2026 AI Index 的可比结果显示，在 SWE-bench Verified 这类取自真实 GitHub issues 的 benchmark 上，截至 2026 年 2 月，在统一的 mini-SWE-agent-v2 workflow 下，榜单前列模型可以解决约 70%–77% 的验证任务。这个 benchmark 不能等同于完整的软件工程：结果仍然依赖任务边界、测试质量和 agent scaffolding。但趋势已经很明显——直接生产和修改代码的成本正在下降。[^10]

于是，skill 的价值开始迁移。并不是：

> **Skill → 0**

而是：

> **Value moves up the abstraction stack.**

过去珍贵的是写代码，后来珍贵的是设计软件，进一步变成定义系统，然后是设计 agent workflow，再之后是设计由人、软件、agents、资本和物理系统共同组成的 organization。

Alexandr Wang 在 YC 的回答基本就是这个方向：过去先写代码，再组织人；现在开始 orchestrate agents，未来则面对更大规模的 agent organization，而 systems thinking 仍然存在。

所以，技能没有消失。技能的操作对象在上移。

## 七、但这并不意味着具体技能不重要

恰恰相反。

AI 时代有一个很容易掉进去的陷阱：“既然 AI 什么都能做，那我只需要掌握高层 thinking。”

结果会变成一种危险状态：什么都能聊，什么都能 prompt，什么都能 brainstorm，但没有任何 reality anchor。

一个人如果从来没有真正设计过机械结构，就很难判断一个机械方案是否合理；没有真正做过 thermal system，就很难判断某个 pressure transient 是否 physically plausible；没有真正研究过企业，就很难判断 AI 自动生成的 valuation 是否具有经济意义；没有真正写过复杂软件，也很难理解 generated code 为什么最终会形成 architectural debt。

因此，specific skill 的作用发生了变化。

过去：

> **Specific skill = Production capability**

未来越来越变成：

> **Specific skill = Reality access**

它让你能够获得其他人没有的 feedback。我会把它称为：

> **Reality Anchor**

数学、机械、电子、材料、金融、医学、供应链、法律、biology……真正的 domain knowledge 就像人的 sensor，告诉你世界实际是什么样；工程实践、代码、实验和产品能力则像 actuator，让你真正改变世界。

没有 sensor 和 actuator，只剩 abstract reasoning，就容易成为一个闭环的语言系统：map 很漂亮，但没有 territory。

## 八、但只拥有具体技能，同样危险

另一个极端是：我把某一个软件练到极致就够了。

例如，非常熟练地操作一个 CAD 菜单，非常熟练地写某一种 boilerplate code，非常熟练地按照固定模板生成 PPT，非常熟练地做某类重复分析。

这些能力可能非常具体，也确实能够挣钱。问题在于，它们可能绑定的是 interface，而不是 structure。

AI 最容易吞掉的，往往就是 interface layer。按钮会变，软件会变，语言会变，API 会变，workflow 会变。

因此，我们必须进一步区分两类技能：

> **Interface Skill vs. Structural Skill**

“NX 里这个按钮在哪里”是 interface knowledge；“机械装配中的 constraint、reference、geometry relationship 是什么”是 structural knowledge。

“Python 这个函数怎么写”越来越接近 interface；“怎样把问题分解成 data structure、state、constraint、algorithm、evaluation”则属于 structure。

AI 会越来越擅长替你操作 interface。但如果你理解 structure，你就能够不断更换 interface。

这才是真正的 transferability。

## 九、AI 时代最重要的中间能力：Computational Representation

在前面的讨论里，我认为可以正式给这种能力一个名字：

> **Computational Representation**

也就是：把现实问题转化成机器能够计算、搜索、模拟、推理、验证和执行的 representation。

例如，现实里出现一句：“这个冷却系统压力为什么突然升高？”

一个真正 AI-native 的 engineer，不只是把这句话扔给 LLM。他会开始重新表示问题：系统中有哪些 components？哪些是 state variables？流量、管径和 fluid properties 是什么？pump speed 怎么变化？boundary conditions 是什么？measurement uncertainty 多大？到底需要 steady-state model，还是 transient model？哪些变量可以从 CAD 获得？哪些数据来自 sensor？哪些可以通过 Python 批处理？哪些需要 CFD？哪些可以由 agent 检索历史案例？最后必须通过什么 experiment 验证？

于是，模糊问题开始被压缩成：

> **Reality → Objects → Variables → Relations → Constraints → Data → Model → Computation → Evaluation**

这比“会 Python”高一个 abstraction level，也比“会 prompt”高得多。

因为 Python、LLM、agent 都只是 execution engine。真正决定系统能不能跑起来的是：你有没有把 reality 表示正确。

## 十、这也是数学、物理和 CS 在 AI 时代仍然重要的原因

不是因为每个人都要成为 mathematician，也不是因为每个人都应该自己手算，而是因为这些学科训练一种非常重要的能力：representation。

数学训练 quantity、relation 和 structure；物理训练 state、law、constraint 和 mechanism；Computer Science 训练 representation、algorithm、state、abstraction 和 system；概率统计训练 uncertainty、distribution、evidence 和 updating。

这些学科最大的价值，并不是让人和 AI 比谁计算得快，而是帮助人知道：

> **到底应该让 AI 计算什么。**

## 十一、真正稀缺的 skill，开始从 solving 向 framing 转移

传统世界中：

> **Problem → Human Solver → Solution**

AI 世界越来越接近：

> **Human Problem Framing → AI Solving → Human Evaluation**

因此，scarcity 正在向 problem 的两端移动。

前端的问题是：什么问题值得解决？后端的问题是：这个答案到底对不对？

这就是为什么 Problem Framing 和 Judgment 会越来越重要。

AI 可以给你 50 个 startup ideas，但哪个是真实需求？AI 可以给你 20 套 architecture，但哪个能维护五年？AI 可以分析 100 家公司，但哪一家真正拥有 durable moat？AI 可以生成一万篇文章，但哪一篇真正增加了读者对世界的理解？

所以，未来越来越可能出现：

> **AI Output ↑↑　Value of Selection ↑**

生成变便宜，选择变昂贵。

## 十二、这就是所谓 abstract skills，但 abstract 绝不等于“空泛”

真正有价值的抽象能力，不是“战略思维”“创新能力”“领导力”这些简历上的词。如果它们没有现实内容，几乎没有意义。

真正的 abstraction 应该来自 repeated concrete experience。

看见很多具体 pressure problems 之后，抽象出 fluid system；看见很多公司以后，抽象出 unit economics；写过很多程序以后，抽象出 architecture；做过很多产品以后，抽象出 feedback loop。

因此，正确的关系不是：

> **Concrete vs. Abstract**

而是：

> **Concrete → Pattern → Abstraction → New Concrete Problems**

抽象不是离开现实。抽象是压缩现实。

一个好的 abstraction，能够让你用过去一百次经验，解决第一百零一次从未见过的问题。这就是 abstraction 的经济价值。

## 十三、AI 时代真正强的人，会拥有一套纵向 Skill Stack

最下面是：

> **Domain**

你真正懂某一个 reality：机械、能源、金融、软件、biology、manufacturing。

再往上一层是：

> **Computation**

你能够把 reality 转化成 data、code、simulation 和 automation。

再往上是：

> **AI**

让 intelligence 和 execution 获得新的 leverage。

然后继续上升：

> **Modeling + Systems Thinking**

你开始理解 components、relationships、feedback、bottleneck 和 failure mode。

再上面是：

> **Problem Framing + Judgment**

决定什么值得解决，什么答案值得相信。

最后是：

> **Ownership + Capital Allocation**

决定你是否能够 capture 自己创造的价值。

所以，最终不是：

> **Skill₁ + Skill₂ + Skill₃**

而更接近：

> **Domain × Computation × AI × Systems × Judgment × Ownership**

为什么用乘法？因为任何一个接近零，都可能让整个系统失效。

## 十四、我们甚至可以重新定义一个 skill 的投资价值

如果把 skill 当成 Human Capital 中的一项资产，那么它不应该只看“工资高不高”。

可以构造一个更完整的模型：

\[
V_{\mathrm{skill}} = P \times D \times T \times A \times O
\]

其中：

- \(P\) 是 Problem Relevance：它是否连接真实而重要的问题；
- \(D\) 是 Depth：是否需要长期积累，而不是两周速成；
- \(T\) 是 Transferability：能不能迁移到不同场景；
- \(A\) 是 AI Leverage：AI 能否把拥有这项 skill 的人的生产力进一步放大；
- \(O\) 是 Ownership Potential：它最终是否可以沉淀成 code、IP、product、system、audience、equity 或 company。

最后一个变量极其重要，因为：

> **行业增长，不等于个人收益。**

假设 AI 是未来十年最陡的 exponential：

> **AI Growth ↑　≠　Your Wealth ↑**

中间还缺一个：

> **Value Capture Mechanism**

Alexandr Wang 不只是“在 AI 行业工作”。他与 Lucy Guo 建立了 Scale，并持有 ownership。

因此：

> **Exponential × Positioning × Ownership**

才真正可能产生财富上的巨大 convexity。

## 十五、这正是 The Worker Investor 应该关心的问题

一个 worker 最容易形成的思维是：我学 skill，是为了把劳动卖得更贵。

于是：

> **Skill → Better Job → Higher Salary**

这当然没有错。但 [The Worker Investor](/posts/2026-07-12-worker-investor-start/) 应该继续追问：

> **Then what?**

更完整的路径应该是：

> **Skill → Problem Access → Artifact → System → Asset → Ownership**

会写代码，最初是 labor；把重复劳动写成工具，开始形成 artifact；让几十个人使用这个工具，开始形成 system；把 system 产品化，开始成为 asset；如果你拥有这个 asset，便进一步获得 ownership。

此时，skill 才真正完成一次 capital conversion。

这可能就是 [Human Capital ETF](/posts/2026-07-12-human-capital-etf-framework/) 最终必须回答的问题：人力资本什么时候不再只是未来工资的现值，而开始转换为一种可以被拥有、复制、传播和复利的资产？

Alexandr Wang 是一个极端答案。普通人的规模可能远小得多，但机制是同一个机制。

## 十六、这也让 Alexandr Wang 最后的两个建议有了新的含义

访谈最后，他被要求给 18 岁的自己留一句话。他给出了两个建议。[^11]

第一个是：建立自己的 internal compass。不要完全依赖 consensus 去决定未来是什么。

真正重要的变化，在成为 consensus 之前，往往会经历很长时间的 obscurity。他把 Scale 早期几年投资人对“data business”的怀疑，视为这种经历的一部分。

但 internal compass 绝不是“相信自己就行”。那叫 stubbornness。

真正有效的 internal compass 应该是：

> **Independent Model + Reality Feedback**

你可以不跟 consensus，但不能不跟 reality。

第二个建议是：找到世界上 steepest and longest-lasting exponential curve。

几十年前可能是 Moore’s Law。在 Alexandr 看来，现在是 AI progress。哪怕 exponential 的起点看起来非常 boring——例如早期识别 YouTube 视频中的猫——也可能值得下注。

但从 Worker Investor 的角度，还应该给这句话补上半句：不要只找到 exponential，还要找到自己与 exponential 的连接方式。

否则，你只是在旁观指数增长。

真正的问题应该依次是：

> **Where is the exponential?**<br>
> **What skill gives me exposure to it?**<br>
> **What can I build on top of it?**<br>
> **What part of the resulting value can I own?**

这才是一条完整的 investment thesis。

## 十七、AI 带来的最大变化，也许不是“替代技能”，而是 Intelligence Cost Collapse

Alexandr Wang 在这次访谈中还有一个非常值得思考的判断：如果 intelligence 和 agency 越来越便宜，那么真正的 scarce resource 可能逐渐变成 vision and ambition。[^12]

他认为，即便今天模型能力完全停止进步，把现有 AI 扩散到整个经济体系，仍然足够制造数十年的巨大变化；当前的重要 bottleneck 已经开始从单纯提升 model capability，转向 diffusion——如何把能力真正部署进现实世界。

这一判断当然可以讨论。Compute、energy、capital、domain data、institutions 和 trust，都不会因此突然变得无限。把现有 benchmark 能力转化为稳定、负责、经济可行的生产系统，也远不是自动发生。

但他的方向性判断仍然有价值：当 execution 变得更便宜以后，decision about execution 就会更昂贵。

当写代码变便宜，architecture 更重要；当 research 变便宜，question 更重要；当内容生成变便宜，taste 更重要；当 intelligence 变便宜，agency 更重要；当 agency 也逐渐便宜，direction 更重要。

于是，AI 时代的技能结构发生了一次很奇怪的变化：越往下，execution increasingly abundant；越往上，Problem、Purpose、Judgment 和 Ownership 反而越来越稀缺。

World Economic Forum 的 *Future of Jobs Report 2025* 呈现出类似的组合：AI and big data、networks and cybersecurity、technological literacy 被雇主视为增长最快的技能；analytical thinking 仍是最普遍的核心能力，creative thinking、curiosity and lifelong learning、systems thinking 等也继续保持重要。需要强调的是，这是企业调查中的预期，不是对未来的机械预测；但它至少说明，市场正在寻找的并不是“technical skills 或 abstract skills”二选一，而是两者的组合。[^13]

## 十八、所以，一个年轻人今天到底应该怎么学？

我现在会给出一个与“多学技能”完全不同的答案。

先选择一个 territory。必须有一个世界是真正对你有阻力的。它可能是机械、电子、软件、能源、金融、制造、机器人、biology——任何一个都可以。因为只有真实世界才会告诉你：你错了。

然后学习 computation。不是为了成为 syntax machine，而是为了把 reality 变成 executable representation。

然后拥抱 AI。不是把它当搜索框，而是把它当：

> **Intelligence Leverage**

接下来训练 modeling、probability 和 systems thinking，让自己能够逐渐离开某个具体 tool，同时仍然理解 underlying structure。

然后不断 build。因为没有 build，knowledge 很难变成 feedback；没有 feedback，abstraction 很容易变成 imagination。

最后，再问 ownership。因为只有到了这一层：

> **Human Capital → Capital**

## 十九、最终，我们可以把 AI 时代的个人成长写成另一条链

过去可能是：

> **Learn → Work → Earn**

现在更值得追求的是：

> **Observe → Think → Model → Compute → Build → Implement → Evaluate → Explain → Iterate → Own → Compound**

最下面几步与 reality 接触，中间几步把 reality 转化成 representation，再往上把 representation 变成 artifact 和 system，最后让 system 成为 asset。

## 结语：真正不会过时的，不是某一个 Skill

我们可能不应该继续寻找“未来十年最值得学习的 10 个技能”。

因为只要时间足够长，几乎所有具体工具都会变化。Python 可能变化，CAD 会变化，IDE 会变化，LLM 会变化，agent framework 更会变化。

真正值得长期投资的，是一种 vertical mobility across abstraction layers：你能够钻到足够具体的地方，把一个问题做透；又能够升到足够高的地方，看见它背后的 structure。

然后重新下来：把 structure 写成 code，把 code 做成 tool，把 tool 变成 system，把 system 变成 asset，最后拥有其中一部分。

所以，Alexandr Wang 的故事真正值得记住的，可能从来不是 19 岁创业，也不是 MIT dropout，而是一个年轻人的知识如何经历了这样一次转换：

> **Skill → Reality → Problem → Model → Build → Ownership**

当世界出现一条新的 exponential curve 时，他不仅看到了它，也恰好拥有足够具体的 skill 去接触它，足够抽象的能力去理解它，足够强的 agency 去 build on it，并最终拥有了自己创造出来的东西。

这或许也是 AI 时代 The Worker Investor 最值得建立的一种能力：不要只是学习未来需要的技能，要让自己成为一个可以不断进入 reality、抽象 reality、重构 reality，并拥有自己所构造之物的人。

具体技能让你触碰世界，抽象能力让你理解世界，AI 让你放大行动，而 ownership 决定你能否分享这种行动最终创造的复利。

## 参考资料

[^1]: Y Combinator，[《Alexandr Wang: “This Is a Once-in-a-Civilization Opportunity”》](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=1446s)，Startup School 2026，2026 年 7 月，24:06 起；Root Access，[访谈文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)，2026 年 7 月 29 日。
[^2]: Arm Newsroom，[《Tech Unheard Episode 5: Alex Wang》](https://newsroom.arm.com/podcasts/tech-unheard-episode-5-alex-wang)，2025 年 4 月 16 日；USA Computing Olympiad，[《2012–2013 USACO Finalists Announced》](https://usaco.org/current/index.php?page=finalists13)，2013 年；American Association of Physics Teachers，[《2014 United States Physics Team Announced》](https://www.aapt.org/aboutaapt/2014-United-States-Physics-Team-Announced.cfm)，2014 年 5 月 21 日。
[^3]: Scale AI，[《MITTR – EmTech Digital: Data Is the New Code》讲者页面](https://learn.scale.com/public/videos/mittr-emtech-digital-data-is-the-new-code)，2021 年 6 月 21 日。该页列出 Quora、Hudson River Trading、Addepar 与 MIT 经历。
[^4]: Y Combinator，[同一场 Startup School 访谈](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=70s)，约 01:10–03:20；[文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)。Alexandr Wang 在这一段分别说明了工作环境与 MIT 带给他的不同经验。
[^5]: Y Combinator，[同一场 Startup School 访谈](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=250s)，约 04:10–06:20；[文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)。这一段讨论 compute、code、data 与早期投资者对数据业务的怀疑。
[^6]: Y Combinator，[同一场 Startup School 访谈](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=205s)，03:25 起；[文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)。
[^7]: Y Combinator，[《Scale Is an API for Human Labor》](https://www.ycombinator.com/blog/scale/)，2016 年 7 月 26 日。发布页记录了 Lucy Guo 与 Alexandr Wang 的共同创办关系，以及当时 human task API 与 human + machine 的产品设想。
[^8]: Scale AI，[《Ten Years of Scale》](https://scale.com/blog/ten-years-of-scale)，2026 年。这里采用的是公司的十周年自述，用来说明 Scale 如何回顾自己的早期 thesis 与业务，不把它当作独立第三方评价。
[^9]: Scale AI，[《Scale AI Announces Next Phase of Company’s Evolution》](https://scale.com/blog/scale-ai-announces-next-phase-of-company-evolution)，2025 年 6 月 12 日；Meta Platforms，[2025 Form 10-K](https://www.sec.gov/Archives/edgar/data/1326801/000162828026003942/meta-20251231.htm)，2026 年提交。Scale 公告披露交易后估值超过 290 亿美元；Meta 年报记录其在 2025 年完成的 Scale AI 少数股权投资为 138 亿美元。
[^10]: Stanford Institute for Human-Centered Artificial Intelligence，[《Artificial Intelligence Index Report 2026》](https://hai.stanford.edu/assets/files/ai_index_report_2026.pdf)，第 2 章，第 101 页。报告的 SWE-bench 图表采用 2026 年 2 月快照，并对 Verified 结果限定统一的 mini-SWE-agent-v2 workflow；本文因此不把 benchmark 成绩外推为完整软件工程能力。
[^11]: Y Combinator，[同一场 Startup School 访谈](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=1765s)，29:25 起；[文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)。
[^12]: Y Combinator，[同一场 Startup School 访谈](https://www.youtube.com/watch?v=sJ4VJWycX9M&t=520s)，约 08:40 起讨论 diffusion，20:01 起讨论 intelligence、agency、vision 与 ambition；[文字稿](https://www.ycrootaccess.com/p/alexandr-wang-building-a-frontier)。文中将这些内容明确作为 Alexandr Wang 的判断，而非已经证实的经济预测。
[^13]: World Economic Forum，[《Future of Jobs Report 2025：Skills Outlook》](https://www.weforum.org/publications/the-future-of-jobs-report-2025/in-full/3-skills-outlook/)，2025 年。报告基于雇主调查，反映组织对 2025–2030 年技能重要性的预期，而非确定性预测。
