---
title: "地图、疆域与 AI：在无限地图的时代，把现实重新注入知识系统"
date: 2026-08-30T11:12:05+08:00
slug: "map-territory-ai-reality-injection"
author: "Qiaomai"
description: "从 Korzybski 的“地图不是疆域”出发，讨论生成式 AI、递归训练与现实反馈的关系，并建立一条把工作经验转化为知识、作品、ownership 与 future optionality 的 Reality → Capital Pipeline。"
series: ["The Worker Investor"]
categories: ["Essay"]
tags: ["AI", "epistemology", "human capital", "reality", "ownership"]
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

*——从 “The Map Is Not the Territory” 到 The Worker Investor*

当生成式 AI 把制造 representation 的边际成本推近于零，知识系统真正的瓶颈就不再只是“缺少更多内容”，而是如何持续从 Reality 获得新信息，并把一个 worker 的现实经验转成能够长期存在、可以拥有的资本。

<!--more-->

1931 年，Alfred Korzybski 在一篇讨论数学、物理与人类评价方式的论文中，提出了一个后来影响深远的命题：[^1]

> **The map is not the territory.**

地图不是疆域。

一张标注着巴黎、德累斯顿和华沙的地图，当然可以帮助旅行者理解现实。但如果地图上的城市关系与真实世界不同，它就不只是不完整，还会误导行动。地图之所以有价值，不是因为它“看起来像一张地图”，而是因为它的 structure 与 territory 的 structure 之间存在足够可靠的对应。

Korzybski 很快把这个比喻推向语言、知识与人类认知：语言也是一种 map。我们使用词语描述世界，使用概念压缩世界，使用理论解释世界，使用数学建立结构模型。然而，word is not the thing；description is not the event；theory is not reality。

我们所拥有的知识，本质上都是某种 representation：

> Reality → Perception → Object → Concept → Language → Knowledge

现实先发生，再被感觉系统接收，被神经系统处理，被分类为对象，被赋予名称，进一步形成判断、理论、文章和教科书，最后又被另一个人阅读和解释。

人最容易犯的错误之一，就是忘记中间这些 abstraction layers，最终把 representation 当成 reality 本身。Korzybski 把不同抽象层级之间的混淆称为 *identification*。语言说“这是一个苹果”，很容易让我们形成静态、稳定的 apple 概念；现实中的那个苹果却始终处于时间之中：

\[
\operatorname{Apple}(t_1) \neq \operatorname{Apple}(t_2)
\]

今天的新鲜苹果和一个月后腐烂的苹果，仍然可以被同一个单词指代。语言给了我们压缩能力，也带来了危险：它把动态的 process 压缩成静态的 thing，把连续变化的现实压缩成稳定的 category。

人不可能停止抽象。没有抽象，我们甚至无法思考。真正重要的能力，是 Korzybski 所说的 *consciousness of abstracting*：意识到自己正在抽象，并记得地图只是地图。

九十多年后，大语言模型的出现，让这个问题获得了前所未有的现实意义。

## 一、当人类拥有一台能够无限制造 Map 的机器

过去，制造一张新的知识地图非常昂贵。

一个人需要经历现实、形成观察、进行思考，再通过写作、出版和传播，把自己的经验转成别人可以读取的 representation。一本书、一篇论文、一套理论背后，通常都存在一条漫长的路径：

> Reality → Human → Map

生成式 AI 改变了其中一个基本变量：**制造 Map 的边际成本急剧下降。**

一台语言模型可以在几秒钟内生成文章、总结、解释、方案、脚本、代码、框架和评论。人类第一次拥有了一种近乎可以无限制造 representation 的机器。

于是，问题也发生了变化。

过去的问题是：

> How can we make more maps?

现在的问题越来越可能变成：

> How do we keep the maps connected to the territory?

模型读取互联网上已有的内容，生成新的内容；人再把它上传到互联网；后来的模型又继续读取这些由模型生成的内容：

> Map₀ → AI → Map₁ → AI → Map₂ → AI → Map₃

知识系统由此可能出现一种 self-reflexive recursion：

> Map → Map of Map → Map of Map of Map → …

网页越来越多，token 越来越多，表达越来越完整，但真正来自现实的新信息未必同步增加。

> **Information Volume ≠ Information Gain**

一万篇由 AI 重述已有知识的文章，可以产生巨大的 information volume，却可能几乎没有向整个知识系统注入新的 empirical information。

于是，Korzybski 那句近百年前的话重新变得重要：**The map is not the territory.**

## 二、为什么 AI 不能只靠“读取自己的输出”无限增长

这里必须非常谨慎。

AI-generated data 并不天然等于坏数据。模型可以借助 synthetic data、self-play、rejection sampling、代码执行、数学 verifier 和模拟环境变得更强。真正的问题不是“AI 训练 AI”这几个字，而是：

> **新的训练循环里，有没有一个独立于模型自身 representation 的约束信号？**

假设真实世界存在一个复杂的数据分布：

\[
P_{\mathrm{Reality}}(x)
\]

人类通过书籍、网页、照片、实验记录、代码和对话等形式，对它进行了有限采样：

\[
D_0 \sim P_{\mathrm{Reality}}
\]

再利用这些数据训练模型：

\[
P_{\theta_0}(x) \approx P_{\mathrm{Reality}}(x)
\]

模型并没有获得 Reality 本身。它得到的是对已有记录的一种 statistical approximation。

如果随后让 Model 0 大量生成 synthetic data：

\[
D_1 \sim P_{\theta_0}
\]

再用它训练 Model 1：

\[
P_{\theta_1} \approx P_{\theta_0}
\]

并不断继续：

\[
P_{\mathrm{Reality}}
\rightarrow P_{\theta_0}
\rightarrow P_{\theta_1}
\rightarrow P_{\theta_2}
\rightarrow \cdots
\]

后面的系统观察到的，就越来越不是 Reality，而是 earlier models’ representations of Reality。这有点像 photocopy of a photocopy of a photocopy。

2024 年发表于 *Nature* 的研究把这种风险称为 model collapse：在其实验设定中，不加区分地使用前代模型生成的数据进行递归训练，会积累不可逆的缺陷，并使原始数据分布的 tails 逐渐消失。[^2]

真实世界里存在大量 uncommon but real 的事物：罕见经历、少数观点、奇怪的工程故障、极少发生的疾病、反常的实验结果、独特的语言风格、极端场景和 edge cases。模型更容易重新生成高概率 pattern；如果生成数据反复替换真实数据，低概率但真实的部分就可能越来越弱：

> Rare but Real → Rare → Invisible

error 也可能被重新写回知识系统。假设 Reality 是 \(X=100\)，Model 0 因 approximation error 生成 \(X=102\)。当下一代系统仍能接触 Reality 时，错误有机会被纠正；如果下一代只看见 102，这个 error 就可能从 output 变成 training signal：

> Error → Training Data → Learned Representation

但这并不意味着 model collapse 在所有合成数据工作流里都不可避免。后续研究发现，**用每一代合成数据替换原始数据**与**保留并累积真实数据和合成数据**，会产生不同结果；在研究所测试的多种设定中，后者能够保持稳定，至少说明关键变量是数据如何被选择、保留和校验，而不是 synthetic 这个标签本身。[^3]

模型可以重新排列已有信息，发现已有数据中未被明确注意的 pattern，推导 implication，生成 hypothesis，并搜索巨大的 solution space。但有一条边界必须保持清楚：

> **New Hypothesis ≠ New Empirical Evidence**

AI 可以提出：“这种材料在某种温度下也许会发生相变。”但究竟会不会，最终仍然需要：

> Hypothesis → Experiment → Measurement

Reality 必须重新进入系统。

## 三、Grounding 比“谁生成了数据”更重要

从这个角度再看科学方法，会发现它真正伟大的地方，并不只是“理性”或者“逻辑”。

科学建立了一套制度化的 **Map Calibration Mechanism**。

科学理想中的循环不是：

> Paper → Paper → Paper

而是：

> Theory → Prediction → Experiment → Observation → Revised Theory

换成 Korzybski 的语言：

> **Map → Territory → Better Map**

Experiment 的认识论意义，就是 Reality Injection。它迫使理论重新接受一个无法由理论自己任意定义的外部世界的约束。

这也解释了为什么 synthetic data 有时反而可以极其强大。AlphaGo Zero 没有使用人类棋谱，而是在围棋规则和胜负结果的约束下通过 self-play 学习；AlphaGeometry 大规模生成合成几何题与证明，同时把 symbolic deduction engine 作为可验证的约束。它们不是简单地让 AI 接受 AI 自己的说法，而是让生成过程不断面对一个稳定的 rule system、outcome 或 verifier。[^4][^5]

> AI → Generate → Verifier / Environment → Feedback → Update

同样，AI 可以生成代码，但 compiler、unit tests 和 runtime 会返回反馈；模型可以探索形式数学，但 theorem prover 能检查一条证明是否成立。

所以，真正关键的变量不是：

> Human-generated or AI-generated?

而是：

> **Grounded or ungrounded?**

## 四、下一轮数据前沿，也许不是 More Internet

即使有一天，公开互联网上的高质量文本能够被模型充分吸收，也不意味着“世界上的数据已经训练完了”。

因为互联网从来就不是 Reality。更准确的集合关系是：

\[
\mathrm{Training\ Data}
\subset
\mathrm{Internet}
\subset
\mathrm{Digitized\ Human\ Experience}
\subset
\mathrm{Human\ Experience}
\subset
\mathrm{Reality}
\]

现实世界每一秒都在产生远远超过互联网能够捕获的信息。

工程师在工厂里遇到一个奇怪故障。医生发现患者出现了与标准病例不同的反应。消费者使用一件产品三个月后发现了设计问题。创业者真正尝试一种商业模式，才发现客户根本不愿意支付原先预计的价格。材料实验失败；车辆在极端环境中发生异常；代码在线上出现只有真实 workload 才会触发的 bug；一个人在投资亏损中第一次真正理解自己的 risk tolerance。

这些全部属于 Territory。

但其中只有很小一部分最终会经过下面这条链，进入 AI：

> Territory → Observation → Record → Digitization → Internet → Training

因此，所谓“互联网数据墙”，即使存在，也最多是一堵 **Passive Public Data Wall**，而不是 Reality Wall。

真正需要被优化的，也许是另一个变量：**Reality Bandwidth**。

它表示单位时间内，AI 能够从真实世界获得多少有效、新颖、可验证的信息。可以把它写成：

\[
B_R =
\frac{
\mathrm{Verified\ Novel\ Information\ from\ Reality}
}{
\mathrm{Time}
}
\]

而 Reality Bandwidth 的一个主要限制，就是 Interface Cost。

## 五、Cost per Grounded Bit

现实中发生一件事情，到 AI 真正能够理解、利用并更新自己的 map，中间存在多层成本：

\[
C_{\mathrm{Interface}} =
C_{\mathrm{Capture}} +
C_{\mathrm{Human}} +
C_{\mathrm{Action}} +
C_{\mathrm{Verification}} +
C_{\mathrm{Integration}}
\]

首先需要捕获现实，可能依赖摄像头、传感器和仪器。人需要把经验解释出来；某些 hypothesis 还必须通过真实 action 才能测试。系统需要判断 observation 是否可靠，最后让反馈进入 memory、context、database 或未来模型。

因此，我们可以构造一个思想实验指标：

> **Cost per Grounded Bit**

也就是：获得一个真正来自 Reality、经过验证、能够改变模型认识的新 bit，需要付出多少成本？

如果下一阶段 AI development 能够持续做到：

\[
C_{\mathrm{Grounded}} \downarrow
\quad \Longrightarrow \quad
B_R \uparrow
\quad \Longrightarrow \quad
\mathrm{Grounded\ Learning} \uparrow
\]

那么，它的价值可能比单纯再找到几万亿 token 的网页更加重要。

> **The next data frontier is not more Internet. It is cheaper interfaces to reality.**

甚至可以进一步说：

> **The bottleneck is not how much reality exists. The bottleneck is how cheaply reality can become feedback.**

这里的 Reality Bandwidth、Interface Cost 和 Cost per Grounded Bit 都不是已有行业标准，而是我为了理解下一阶段数据问题提出的思想框架。它们的作用不是制造一个看似精确的数字，而是提醒自己：信息的来源与验证路径，比内容总量更重要。

## 六、人与机器人，都是 Reality Interface

沿着这条路继续走，robotics 的意义也会发生变化。

机器人当然可以搬箱子、做家务、操作设备，但从 AI 的认识论角度，它还有另一个身份：

> **Robots are interfaces through which AI can interrogate reality.**

摄像头给 AI 眼睛，麦克风给 AI 耳朵，力传感器让 AI 感知接触，机械臂让 AI 不仅能够 observe，还能够 act。

于是，单向的：

> Reality → AI

进一步变成：

> AI → Action → Reality → Feedback → AI

仅仅 observation，主要帮助系统估计：

\[
P(Y \mid X)
\]

而 intervention 让系统开始追问：

\[
P(Y \mid \operatorname{do}(X))
\]

Judea Pearl 用 do-operator 区分被动观察与外部干预：看见 \(X\) 发生以后 \(Y\) 如何变化，和主动改变 \(X\) 之后 \(Y\) 会怎样，并不是同一个问题。[^6]

这就是 active learning、robotics 和 autonomous laboratories 的意义。2023 年发表于 *Nature* 的 A-Lab 展示了一种闭环材料实验室：系统根据已有知识和计算选择合成路线，执行实验，再把观察到的结果送回下一轮决策。这个具体系统当然不等于“自动科学已经完成”，但它清楚展示了 AI 如何从 passive data consumer 向 active reality investigator 移动。[^7]

理想情况下，AI 甚至可以主动选择：下一次最值得做什么实验？测量哪个变量？询问哪个专家？哪一次 action 可以最大幅度降低 uncertainty？

\[
a^* = \arg\max_a\, \mathbb{E}[\mathrm{Information\ Gain} \mid a]
\]

但在机器人真正低成本普及以前，世界上已经存在数十亿个极其先进的 reality interfaces：人。

## 七、人的价值，是能够把 Reality 带回来

一个人告诉 AI：

> “我刚才真的试过了，结果不是这样。”

这一句话的信息价值，有时可能超过 AI 再生成一万段相似文本。因为后一种主要属于：

> Map → Map

而前一种属于：

> Territory → Human → AI

人在这里承担了一个非常重要的角色：

> **Human = Reality Interface**

这也让我重新理解了一件事：未来 AI 越强，人的 experience 未必越不重要。

如果公共知识越来越容易获得，access to existing knowledge 的稀缺性会下降；而 **unique reality exposure** 的价值可能上升。

一个工程师真正见过什么问题，一个创业者真的卖过什么东西，一个投资者究竟承受过怎样的亏损，一个创作者发布内容之后观众到底如何反应，一个人在长期行动中到底在哪些地方发现“书上说的”与“现实发生的”并不一样——这些都是 fresh measurements of reality。

> **在一个充满无限 Map 的时代，contact with the Territory becomes scarce.**

人的经验之所以重要，不只因为它“属于人”，更因为它是一次来自 Reality 的新测量。

## 八、Reality Injection Rate：比内容总量更值得关心

这让我想到另一个概念：**Reality Injection Rate**。

假设未来一年互联网增加了 \(10^{15}\) 个 token。真正值得问的不是“又新增了多少内容”，而是：其中多少信息，是因为有人真的观察、行动、实验、失败或者测量以后，以前不存在、现在第一次进入公共知识空间？

可以把它写成：

\[
\mathrm{RIR} =
\frac{
\mathrm{New\ Information\ Grounded\ in\ External\ Reality}
}{
\mathrm{Total\ New\ Information\ Published}
}
\]

这同样是一个思想指标，而不是目前可直接统计的成熟度量。它要表达的是：如果 AI slop 大规模增长，可能出现 Total Content 急剧上升，Reality Injection Rate 却下降的局面。

互联网看起来越来越巨大，却越来越 self-referential。

过去，一个程序员解决真实 bug 后写下一篇 Stack Overflow；消费者真正使用产品后留下 review；工程师总结真实故障；研究者做完实验发表结果。这些内容本质上都是：

> Territory → Map

而大量 purely generated content 更接近：

> Map → AI → Map′

两者外观上都叫“文章”，但 epistemic lineage 完全不同。

未来判断一篇内容的价值时，也许可以问一个非常简单的问题：

> **这里有什么东西，是因为作者真正去做了，才知道的？**

如果答案是“几乎没有”，它也许只是 another map of existing maps。如果其中存在一个只有真正进入 Reality 后才暴露出来的问题，这篇内容就在向公共知识系统注入新的 information。

## 九、AI 也可能反过来提高 Reality Injection Rate

事情不一定朝悲观方向发展。

过去，绝大多数人的现实经验根本不会进入互联网，不一定因为它没有价值，而是因为把经验转化为知识的成本太高。

一个人一天可能产生一百个 observation，最后只有两个被记录，甚至没有一个被公开。绝大多数经验随着时间消失，因为传统路径太长：

> Experience → Reflection → Research → Writing → Editing → Publishing

生成式 AI 第一次大幅降低了这条链的转换成本。

今天，一个人下班后可以直接对 AI 说：

> “今天发生了一件很奇怪的事。我原来认为 A，实际结果却是 B。我不知道为什么。”

AI 可以继续追问：条件发生了什么变化？有没有数据？有没有类似案例？原先的 hypothesis 是什么？B 是偶然事件，还是重复出现？

于是：

> Raw Experience → Structured Observation → Hypothesis → Research → Knowledge

过去可能永远不会被记录的一段 tacit experience，现在能够以更低成本变成 durable representation。

所以，AI 同时存在两条方向相反的路线：

> AI → Map → AI → Map

它可能降低 Reality Injection Rate。

而另一条：

> Reality → Human → AI → Better Map

却可能大规模提高 Reality Capture Rate。

决定未来互联网走向哪一边的，也许不是“有没有 AI”，而是我们如何设计 Human–AI Interface。

## 十、AI 首先是一种 Civilization Prior

在讨论 personalization 之前，需要先理解 AI 对普通人的第一层意义。

今天的大语言模型，可以粗略理解为：

> **A lossy statistical compression of recorded human civilization**

它当然不等于整个互联网，更不是绝对正确的“人类文明共识”。它有 bias、有知识边界、有遗漏，也会 hallucinate。但对一个具体的人而言，它仍然提供了一种过去很难想象的东西：**Civilization Prior**。

一个第一次接触某个领域的人，最大的瓶颈往往甚至不是“不会回答”，而是：不知道问题叫什么，不知道还有哪些方向可以问，不知道历史上已经有人讨论过它，也不知道有哪些概念能够准确表达自己的感觉。

他的 reachable space 可能只有：

\[
S_0 = \{A,B,C\}
\]

他甚至不知道 \(D,E,F,G,\ldots\) 存在。

现在，他可以直接用最便宜的接口——自然语言——告诉 AI：

> “我感觉这里好像有什么问题，但不知道该怎么表达。”

于是：

> Vague Intuition → Vocabulary → Concept → Reference → Framework → New Question

这个过程本身就是一种 cognitive dimensionality expansion。

当一个人从模糊地说“我觉得知识和现实好像不是一回事”，逐渐获得 representation、abstraction、identification、map and territory、model collapse、feedback loop、information gain 和 grounding 等词语，他的思考空间也会随之变化。

原本只能沿一个轴表达的问题 \(x\)，开始变成：

\[
x = (x_1,x_2,\ldots,x_n)
\]

语言维度扩大，可达的思考空间也随之扩大。

这就是 AI 最基础、也最普惠的一层作用：

> **AI = Civilization Prior**

它可以帮助一个人的起点快速向人类已有知识靠近。这是 cognitive elevation。

## 十一、Civilization Prior 也会产生 Prior Gravity

问题在于，如果 AI 永远停留在这一层，它也很容易成为“人类平均知识的接口”。

基础模型从巨量已有信息中学习出一个 prior：

\[
P(K)
\]

当用户提出问题，而 AI 对这个人的背景、长期思考、具体经历和概念系统几乎一无所知时，它自然会倾向于生成：

\[
P(Y \mid X)
\]

也就是：“当一般人提出这个问题时，最合理、最常见的回答是什么？”

于是会出现一种我称为 **Prior Gravity** 的东西。

模型庞大的训练分布像一种认知引力。一个具有个人色彩的新 observation 输入模型，如果缺少足够 context 支撑，很容易重新被拉回 high-probability conceptual basin：

> Novel Thought → Generic AI → Mainstream Interpretation

我把它称作：

> **Semantic Regression to the Mean**

模型说的可能没有错。但它完成的是“把你的问题归类到已有的人类知识目录里”，而不是“理解这个想法在你自己的认知轨迹中究竟新增了什么”。

这也是为什么，同一个基础模型对于不同的人，最终可能产生完全不同的价值。

## 十二、从平均知识接口到 Cognitive Amplifier

当一个人刚进入某个领域时，Civilization Prior 非常重要。但随着行动越来越多，他会逐渐获得自己的 experience、反复面对的问题、hypothesis、验证失败的路径、概念体系，以及尚未被充分表达的 intuition。

这时候，真正有价值的 AI 应该从：

\[
P(K)
\]

转向：

\[
P(K \mid C_{1:t})
\]

其中 \(C_1,C_2,\ldots,C_t\) 代表这个具体的人长期积累的 context。

AI 不再只问“人类一般如何理解这个问题”，而开始理解：对于这个具体的人，他现在究竟站在哪里？

这才是 personalization 的深层意义。不是“AI 知道我喜欢什么颜色”，也不只是“AI 知道我在做什么项目”，而是：

> **Cognitive Continuity**

AI 能够维持一个人的认知状态在时间上的连续。

长期使用 AI 时，一个常见误解是把 memory 等同于用户档案：这个人喜欢投资、在写博客、研究 AI。这些属于 Profile Memory，有用，但远远不够。

真正珍贵的是 **Thought Provenance**：一个思想究竟是怎么来的？

假设文章最终留下这句话：

> “在无限地图的时代，与 Territory 的接触会成为稀缺资源。”

这个 conclusion 背后可能经历：

> Experience₀ → Question₁ → Conversation₁ → Reading → Concept₁ → Counterexample → Conversation₂ → Concept₂ → Information₁

真正的长期 context 保存的不是一个孤立结论，而是：

> **Information₀ → Δ₁ → Δ₂ → Δ₃ → Information₁**

我把它称作 **Epistemic Trajectory**，或者 **Cognitive Trajectory**。

它保存的不是 conclusion，而是：**How did you get here?**

这和只保存 theorem，与同时保存 Definition → Lemma → Proof → Theorem，并不是同一件事。最终文章是当前 map 的 committed version；conversation history 保存的是 the evolution of the map。

## 十三、External Cognitive Structure 必须继续面对现实

从这里开始，“AI 助手”这个词显得有些太轻了。

如果一个系统能够持续承担 Memory、Retrieval、Structuring、Comparison、Abstraction、Compression、Expansion、Research、Counterargument、Translation 和 Transmission，它开始承担某种：

> **Externalized Cognitive Layer**

或者说，Cognitive Exoskeleton。

人的大脑里，很多重要信息并不天然以清晰文字存在。它更像一个高维状态：

\[
\{\mathrm{Experience, Emotion, Memory, Intuition, Contradiction, Possibility}\}
\]

你只是感觉：“这里好像有个东西。”

AI 可以帮助完成：

> Tacit Thought → Explicit Structure

再进一步：

> Feeling → Observation → Pattern → Concept → Framework → Language

因此，AI 很像一种 cognition compiler。人的 raw cognitive state 是 \(S\)，AI 帮助：

\[
\operatorname{Compile}(S)
\rightarrow
\mathrm{Article/Diagram/Framework/Code}
\]

这已经远远超出“帮我写一段文字”。它是在帮助人把原本难以传递的 internal state，转换成 durable and communicable structure。

但 personalized AI 不能因此成为 Confirmation Machine。

AI 符合一个人的 reference 和 preference，不等于 AI 应该符合这个人的 conclusion。否则：

> Personalization → Confirmation Bias → Echo Chamber

真正有价值的 personalized AI 应该遵循一个原则：

> **Preserve the frame, challenge the claim.**

保留你的认知坐标系，但不自动同意你的结论。

它知道你为什么从 A 走到 B，也知道这个问题与之前哪条 trajectory 有关；但当 Reality 或 external evidence 与你的 conclusion 不一致时，它仍然应该指出：“这一步可能存在问题。”

真正的 cognitive amplifier 不是 mirror。它应该位于一个开放循环里：

> Human ↔ AI ↔ Reality

Human 提供 Experience、Goal、Judgment 和 Taste；AI 提供 Memory、Search、Structure 与 Computation；Reality 提供 Constraint、Feedback 与 Verification。

只有这三个角同时存在，认知系统才不会封闭。

## 十四、从 Information 0 到 Information 1

回到我自己现在越来越频繁的一种工作方式。

现实生活里，一个很小的 trigger 出现。可能是工作中的问题，一次投资失败，读书时看到的一句话，发布视频后的观众反馈，或者凌晨加班后产生的一种情绪。

最开始，它只是 \(I_0\)：未经结构化的 Experience、Feeling、Intuition 和 Observation。

然后我把它立即交给 AI。不是为了让 AI 替我生成“一个观点”，而是开始 discourse：为什么会这样？有没有已有理论？我的判断哪里不完整？能否从另一个领域理解？有什么反例？这个概念在历史上有没有人讨论过？

于是：

\[
\begin{aligned}
I_1 ={}& I_0 \\
&+ \mathrm{Civilization\ Prior} \\
&+ \mathrm{Personal\ Context} \\
&+ \mathrm{Research} \\
&+ \mathrm{Counterargument}
\end{aligned}
\]

其中：

> **I₁ = Structured, Connected, Testable Representation of I₀**

然后再把它 compress 成文章。

Conversation 是高维而连续的信息流，Article 是一个 checkpoint。它把 Conversation₁ + Conversation₂ + … + Conversationₙ，压缩成某个时刻的 \(\mathrm{Map}_t\)，再公开到 blog。

于是，博客不再只是 content distribution channel。它既是 **Cognitive Checkpoint**，也是 **Public Proof of Thought**。

最终文章不是思想的终点，而是：

> **A committed version of the current map.**

未来新的 Reality feedback 到来以后：

> Mapₜ → Reality → Feedback → Mapₜ₊₁

知识再次更新。

## 十五、AI 真正降低的，是 Experience → Asset 的转换成本

当我把这套思考放回 [The Worker Investor](/posts/2026-07-12-worker-investor-start/) 时，事情开始变得清晰。

传统 worker 的基本生产关系是：

> Time → Labor → Paycheck

今天工作八小时，获得一天工资，第二天再重新开始。

工作过程当然会产生 experience，但其中很大一部分是 ephemeral 的。它留在公司、记忆或某个已经结束的项目里，最后随时间消失。

过去，一个 worker 如果想把经验转成 durable asset，成本非常高。他需要自己记录、整理、研究、写作、编程、制作和发布。因此，大量现实经验最后的路径是：

> Experience → Disappear

AI 改变的一个根本变量，是：

> **Cost(Experience → Asset) ↓**

于是：

> Experience → Conversation → AI Structuring → Research → Build → Owned Asset

开始成为更多普通人可以负担的路径。

一段 experience 可以被转换成 Article、Video、Code、Workflow、Framework、Dataset、Product、Research、Reputation、Audience，甚至最终成为一家 business。

> **Ephemeral Experience → Durable Capital**

这可能是 AI 对 The Worker Investor 最重要的意义之一。

## 十六、工作不再只有 Paycheck Return

于是，可以重新理解一个普通人的一天。

Worker A：

> 8h Work → Salary

Worker B：

> 8h Work → Salary + Experience + Observation + Knowledge + Automation + Content + Code + Reputation

如果后者能够保留一部分 durable residue，那么第二天开始时：

\[
S_{t+1} > S_t
\]

这就是 Human Capital Compounding。

真正值得问的问题不再只是：

> What did I earn today?

还可以继续问：

> What did reality teach me today?<br>
> What can AI help me understand about it?<br>
> What can I build from it?<br>
> What can I own after today is over?

工作从一次性 labor transaction，开始有机会产生 second-order return：

> 8h → Paycheck + Experience + Knowledge + Proof of Work + Ownership + Future Optionality

传统 Human Capital 常被理解为 Education + Skills + Experience + Professional Knowledge。但在 AI 时代，这个定义应该被扩展：

> **Human Capital = Capability + Reality Access + Judgment + Context + AI Leverage + Owned Knowledge**

其中尤其重要的是 **Reality Access**。

一个人在真实世界中的位置，本身就是一种资产。职业让你看到某一类 Reality；项目带来某一类 feedback；失败意味着你支付过别人尚未支付的 learning cost；长期行动让你拥有只通过阅读很难获得的 tacit knowledge。

AI 越容易提供 Civilization Prior，unique reality exposure 就越可能成为新的差异来源。

因此，不要只问“AI 能为我的工作提供什么”，也可以反过来问：

> **我的工作正在把什么独特的 Reality 提供给我的 AI system？**

两个方向同时存在。

## 十七、The Worker Investor 的 Reality → Capital Pipeline

如果最后的结论只是“AI 很重要，所以普通人应该多学 ChatGPT”，那我们其实浪费了整个讨论。

真正应该建立的是一条：

> **Reality → Capital Pipeline**

它的基本循环可以写成：

> **Live → Capture → Think → Build → Own → Distribute → Learn → Live Again**

首先进入 Reality：真正工作、行动、实验、失败。

然后 Capture：不要让那些只存在十分钟的 observation 消失。

接着，把 raw experience 带入长期 AI context。利用 Civilization Prior 寻找语言、概念、references 和 counterarguments，通过 discourse 形成 structured knowledge。

再把它带回 Reality：Build、Test、Observe feedback。

最终，在尊重雇主知识产权、商业秘密和职业伦理的前提下，把其中可以公开、可以拥有的部分转换成自己的 Article、Code、Framework、Product、Audience 与 Reputation。

这就是：

> Labor → Knowledge → Ownership

如果把这套逻辑重新放回 [Human Capital ETF](/posts/2026-07-12-human-capital-etf-framework/) 的四个仓位，它也能自然嵌入。

**Core** 保证一个人仍然能够长期进入 Reality。身体、现金流、职业与基本能力不是保守配置，而是 Reality Access 的基础设施。

**Growth** 不再只是“多看书”。更有效的路径是：

> Reality Problem → AI → Book / Paper / Course → Back to Reality

学习因此变成 problem-driven，而不是知识收藏。

**Distribution** 也不只是做自媒体。它的认识论意义是：

> Private Experience → Public Map

一个只存在于个人脑海里的 observation，通过文章、视频、演讲或者产品，进入公共知识空间。

**Meta** 则变得尤其重要。Memory、AI、workflow、automation、review 和 knowledge base，最终组成一种：

> **Personal Cognitive Infrastructure**

它的目标不只是今天节省二十分钟，而是 **Preserve Cognitive Continuity**：让每一次新的思考都建立在之前的 cognitive state 之上，而不是每天 reset。

## 十八、Build and Own：从 Worker 到 Worker Investor

最终，这仍然会回到 The Worker Investor 最核心的问题：Ownership。

一个人可以工作十年，拥有大量 experience。但如果这些 experience 最终全部只经过：

> Work → Company Output → Salary

那么，他主要仍然是在出售 labor。

这当然不是错误。公司支付工资，获得相应劳动成果，是正常交换。真正的问题是：除了这次交换，还有什么能够留在这个 worker 自己身上？

如果在尊重知识产权、商业秘密和职业伦理的前提下，一个人能够持续把可泛化的经验转化成 Knowledge、Skill、Writing、Code、Audience、Framework、Reputation 和 Product，那么：

> Labor → Capital

才真正开始发生。

这就是 **Build and Own**。

AI 不会让 ownership 自动发生，但它极大降低了 Experience → Asset 中间的 friction。因此，The Worker Investor 在 AI 时代真正值得强调的不是 *Use AI more*，而是：

> **Use AI to shorten the distance between experience and owned capital.**

这也让我重新理解 AI 所谓的“普惠”。

对于一个认知起点较低的人，AI 作为 Civilization Prior，让他第一次可以通过自然语言，以极低成本获得过去需要良好教育背景、图书馆、导师或者专业训练才能获得的知识入口。

\[
\mathrm{Knowledge\ Access\ Cost} \downarrow
\]

它降低了 floor。

但当越来越多人可以获得同样的 AI，差距会从别的地方重新出现：谁能提出更好的问题？谁真正进入了 Reality？谁持续行动？谁把 feedback 保存下来？谁拥有长期 context？谁建立了 external cognitive structure？谁不断 build？谁能把 output 变成 ownership？

于是，AI 也同时 raise the ceiling。

未来人与人的差异，可能越来越少来自“谁能够背更多已有知识”，越来越多来自：

> **Who can build the better Human + AI + Reality system?**

真正的 intelligence 也许不再只是某一个人的 IQ，或者某一个模型的 benchmark score。它越来越可能是：

\[
\mathrm{Intelligence}_{\mathrm{System}}
= f(\mathrm{Human, AI, Memory, Tools, Context, Reality\ Feedback})
\]

## 结语：在无限地图时代，重新回到 Territory

从 1931 年重新回到今天。

Korzybski 当年担心的是，人类把语言误认为现实，把不同 abstraction orders 混在一起。九十多年后，我们第一次拥有了一台能够以近乎无限速度制造 abstraction 的机器。

这既是巨大的文明能力，也是新的风险。

如果我们使用 AI，只是让：

> Map → Map → Map

那么整个知识系统也许越来越流畅，却未必越来越接近 Reality。

但如果我们构建的是：

> **Reality → Human → AI → Better Map → Action → Reality**

那么 AI 就不只是一台远离现实的文本机器。它开始成为一种基础设施：降低 Reality → Information 的记录成本，降低 Information → Knowledge 的结构化成本，也降低 Knowledge → Asset 的创造成本。

对于一个普通 worker 来说，这也许才是 AI 真正革命性的地方。

过去，一个人一天的现实生活里，大量信息随时间消失。现在，他可以进入世界，获得 feedback，把这些 feedback 送入一个拥有 Civilization Prior、personal context 和长期 cognitive history 的 external cognitive structure；与 AI 一起理解、研究、质疑和重构它，再把结果 build 成能够长期存在的东西。

于是：

> Experience → Knowledge → Asset → Ownership → Optionality

这条链第一次变得比过去便宜得多。

所以，The Worker Investor 在 AI 时代最终想做的，也许不是教一个 worker 如何离开工作，而是教他重新理解工作。

工作不只是 Paycheck。它同时也是：

> **Contact with the Territory**

真正值得做的是：不要只消费已有的地图，也不要只让 AI 为你制造更多地图。

进入现实，行动，观察，失败，接受 feedback。然后回来，和 AI 一起重新画地图，把其中属于你的那一部分 build 出来。

Own it.

因为在一个地图可以无限生成的时代，真正稀缺的可能不是另一张地图，而是：

> **A map that has returned from the territory.**

而对于 The Worker Investor 来说，更重要的是：

> **Do not merely sell your experience once through labor.<br>
> Capture it, abstract it, amplify it, build from it, and own what can endure.**

这或许就是从 Worker 走向 Worker Investor 的另一条路径。

## 参考资料

[^1]: Alfred Korzybski，[《Science and Sanity: An Introduction to Non-Aristotelian Systems and General Semantics》](https://openlibrary.org/books/OL22136866M/Science_and_sanity)，International Non-Aristotelian Library Publishing Company，1933，p. 58；Institute of General Semantics，[《Alfred Korzybski》](https://generalsemantics.org/Alfred-Korzybski)，记录其于 1931 年 12 月发表 *A Non-Aristotelian System and Its Necessity for Rigour in Mathematics and Physics*。正文中的 Reality Bandwidth、Reality Injection Rate 等概念是本文对这一命题的延伸，不是 Korzybski 本人的术语。
[^2]: Ilia Shumailov、Zakhar Shumaylov、Yiren Zhao、Nicolas Papernot、Ross Anderson 等，[《AI Models Collapse When Trained on Recursively Generated Data》](https://www.nature.com/articles/s41586-024-07566-y)，*Nature*，Vol. 631，2024，pp. 755–759，DOI: [10.1038/s41586-024-07566-y](https://doi.org/10.1038/s41586-024-07566-y)。本文仅在论文所研究的递归训练条件下讨论 model collapse，不把它外推成所有合成数据工作流的必然结局。
[^3]: Joshua Kazdan、Rylan Schaeffer、Apratim Dey、Matthias Gerstgrasser、Rafael Rafailov、David L. Donoho、Sanmi Koyejo，[《Collapse or Thrive: Perils and Promises of Synthetic Data in a Self-Generating World》](https://proceedings.mlr.press/v267/kazdan25a.html)，*Proceedings of the 42nd International Conference on Machine Learning*，PMLR 267，2025，pp. 29469–29494。研究比较了替换、累积及固定子集等不同数据工作流，说明 synthetic data 的后果依赖具体训练机制。
[^4]: David Silver、Julian Schrittwieser、Karen Simonyan、Ioannis Antonoglou 等，[《Mastering the Game of Go without Human Knowledge》](https://www.nature.com/articles/nature24270)，*Nature*，Vol. 550，2017，pp. 354–359，DOI: [10.1038/nature24270](https://doi.org/10.1038/nature24270)。AlphaGo Zero 没有使用人类棋谱，但使用了围棋规则、self-play 和胜负结果；这与缺少外部约束的文本递归并不是同一种训练结构。
[^5]: Trieu H. Trinh、Yuhuai Wu、Quoc V. Le、He He、Thang Luong，[《Solving Olympiad Geometry without Human Demonstrations》](https://www.nature.com/articles/s41586-023-06747-5)，*Nature*，Vol. 625，2024，pp. 476–482，DOI: [10.1038/s41586-023-06747-5](https://doi.org/10.1038/s41586-023-06747-5)。AlphaGeometry 使用大规模 synthetic training data，并把语言模型与 symbolic deduction engine 结合起来。
[^6]: Judea Pearl，[《A Causal Calculus for Statistical Research》](https://proceedings.mlr.press/r0/pearl95a.html)，*Proceedings of the Fifth International Workshop on Artificial Intelligence and Statistics*，PMLR R0，1995，pp. 430–449。该文以普通条件概率与外部 intervention 的区分，为后来的 do-calculus 提供形式化表达。
[^7]: Nathan J. Szymanski、Bernardus Rendy、Yuxing Fei、Rishi E. Kumar、Tanjin He、Haegyeom Kim 等，[《An Autonomous Laboratory for the Accelerated Synthesis of Inorganic Materials》](https://www.nature.com/articles/s41586-023-06734-w)，*Nature*，Vol. 624，2023，pp. 86–91，DOI: [10.1038/s41586-023-06734-w](https://doi.org/10.1038/s41586-023-06734-w)。本文引用的是其闭环实验设计，不把单一系统的结果外推成通用自治科学能力。
