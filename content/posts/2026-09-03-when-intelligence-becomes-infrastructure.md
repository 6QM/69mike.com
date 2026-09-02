---
title: "当智能成为基础设施，我们还应该把什么留在自己身上？"
date: 2026-09-03T00:00:01+08:00
slug: "when-intelligence-becomes-infrastructure"
author: "Qiaomai"
description: "从自己把认知活动交给 AI 的经验出发，区分 AI-on 与 AI-off Human Capital，并以 Access、Regeneration、Reality Contact 和 Cognitive Sovereignty 回答一个问题：当智能成为基础设施，人还应该把什么能力留在自己身上。"
series: ["Human Capital ETF"]
categories: ["Essay"]
tags: ["AI", "human capital", "learning", "cognitive offloading", "optionality"]
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

*——从 Cognitive Offloading 到 Cognitive Sovereignty，从 Human Capital 到 Future Optionality*

最近我越来越强烈地意识到一件事：我已经把相当一部分认知活动 offload 给了 AI。

遇到一个陌生的技术问题，我不再先找一本书从第一页开始读；想理解一个概念，我会直接和模型讨论；需要写代码，我往往先描述问题，让 AI 帮我拆解、生成、调试和迭代；遇到一个模糊的思想，我也会不断提问、反驳、重新抽象，直到一个相对完整的 concept 慢慢浮现出来。

从一个非常现实的角度看，这几乎是无可挑剔的策略。人的时间有限。如果一个 frontier model 能在几十秒内帮助我完成过去需要几个小时、几天甚至几周的信息检索、结构化、编程和推理，那么主动拒绝它，某种程度上反而是在浪费最稀缺的资产——时间。

过去一年多，我也确实因此得到了很多以前很难独立完成的东西。我可能没有记住某个 Python class 的全部写法，没有熟练掌握某个 framework 中几十个 API 的具体参数，但我逐渐知道了一个软件系统可以怎样被拆开，一个问题怎样被建模，AI testing 可以怎样做，一个项目怎样从 idea 走向 implementation，一个陌生领域应该从什么地方切进去。

甚至包括 [The Worker Investor](/posts/2026-07-12-worker-investor-start/)、[Human Capital ETF](/posts/2026-07-12-human-capital-etf-framework/) 和 Compounding Yourself 这些概念，也不是某一天凭空出现的。它们往往来自一次次漫长的对话：一个问题引出另一个问题，一个词和另一个词发生组合，一块原本孤立的认知被放进新的结构里，最后慢慢长成一个 system。如果没有 AI，我很可能不会以如此低的摩擦成本完成这些探索。

但问题也恰恰从这里开始。因为有一天你会突然问自己：如果今天 AI 消失了，我到底还剩下什么？

<!--more-->

## 一、一个越来越重要的分裂：Getting Things Done ≠ Learning

Andrew Ng 最近谈到了一个值得认真对待的现象。他一方面鼓励人们学习 AI、快速 build；另一方面又用很强的措辞批评了当前最常见的 LLM 学习方式。他区分了两件以前很容易混在一起的事：AI 很擅长帮助人完成任务，但“把事情完成”不等于“这个能力已经长进了自己身上”。他也拿自己举例：AI 可以迅速解释一个 frontend / backend component 应该怎样工作，项目顺利完成；大约六个月后再次遇到类似问题，他却不记得当初的答案，只好重新问 AI。[^1]

这里发生的是 cognitive offloading——认知卸载。认知科学通常用这个词描述：人通过身体行动或外部工具改变任务的信息处理要求，从而降低内部认知负担。[^2] 对 productivity 来说，这往往是好事；但对 retention、internalization 和 skill acquisition 来说，效果取决于究竟卸载了什么。

一项发表于 *PNAS*、覆盖近千名高中生的数学学习实验提供了一个很有意思的对照。学生使用模仿普通 ChatGPT 界面的 GPT-4 工具时，练习成绩相对 control group 提高了 48%；但工具被撤掉以后，他们在无辅助考试中的成绩反而低了 17%。另一个经过教学性约束、更多提供引导而不是直接答案的 GPT Tutor，在练习阶段提高了 127%，撤掉 AI 后的负面影响则基本消失——不过也没有在无辅助考试中形成显著的正向优势。[^3]

这项研究支持的不是“AI 必然妨碍学习”，而是一个范围更窄、也更有行动意义的结论：在这项高中数学实验里，无护栏的直接答案提高了当下表现，却削弱了之后的独立表现；经过设计的 scaffolding 可以显著改变结果。真正关键的变量因此可能不是 *Use AI or Don’t Use AI?*，而是：**AI 是在替代 cognitive work，还是在促进 cognitive work？**

这两种使用方式看起来非常相似。人都坐在那里，屏幕上也都有 AI，最后也都拿到了答案。但是它们在人脑内部留下的东西可能完全不同。

## 二、AI 最大的风险可能不是错误，而是“消化不良”

这让我想到一个很形象的词：消化不良。

在没有 AI 的时代，一个人摄入知识的速度天然受到限制。你一天只能读几十页书，只能听几小时课，只能解决有限数量的问题。所以 knowledge acquisition 和 cognitive assimilation 的速度虽然不同，差距却不会无限大。

LLM 改变了这一点。现在，一个人在一天之内完全可以接触过去一个月甚至一年都不会接触到的信息。于是出现了一种新的失衡：

\[
\begin{gathered}
\mathrm{Information\ Intake\ Rate}\\
\gg\\
\mathrm{Cognitive\ Assimilation\ Rate}
\end{gathered}
\]

信息进入大脑的速度，远远超过大脑真正完成 assimilation 的速度。你读懂了，觉得有道理，甚至可以继续讨论，但这并不意味着它已经成为你的能力。

这里至少存在几个完全不同的层次：

> **Recognition is not Recall.** 看到答案觉得熟悉，不等于自己能够回忆出来。
>
> **Recall is not Understanding.** 能背出来，不等于理解为什么。
>
> **Understanding is not Reconstruction.** 能理解别人做出来的东西，不意味着在没有答案的情况下能够从头重新推导出来。

AI 最容易制造的错觉，正发生在这些层次之间。模型表达得如此清楚，以至于我们很容易把“我理解 AI 为什么这么说”误认为“这是我已经拥有的知识”。

MIT Media Lab 2025 年发布的一项 essay-writing 研究试图考察这种 cognitive cost。参与者被分为 LLM、Search Engine 和 Brain-only 三组；在这项小规模、任务特定的实验中，Brain-only 组表现出最强、分布最广的 EEG 功能连接，Search Engine 组居中，LLM 组最弱；LLM 组对文章的自我归属感较低，也更难准确复述自己刚写下的内容。值得强调的是，只有 54 人完成前三个阶段，18 人完成第四阶段，而且论文仍是预印本。研究团队明确反对把结果写成“ChatGPT 让人变笨”，并提醒这些发现只来自特定的教育性 essay-writing 场景，不能直接推广到其他模型和任务。[^4]

因此，我更愿意把 cognitive debt 理解为一种个人的分析框架，而不是已经被证明的“大脑退化”：我们已经消费了认知成果，却没有完整支付形成这种能力所需要的认知成本。

它很像 technical debt。系统今天可以运行，功能今天也成功上线，但内部仍有一些没有解决的问题被悄悄延后。区别只在于，这一次债务不是存在代码库里，而是存在人的认知结构里。

## 三、Cognitive Offloading 本身并不是敌人

如果讨论停在这里，很容易滑向另一个极端：不要用 AI，自己算、自己写、自己查，否则就会失去思考能力。这个结论同样有问题。

因为人类文明本来就是一部不断进行 cognitive offloading 的历史。文字是外部记忆，书籍是外部知识库，数学符号把复杂关系压缩成可以操作的 representation，地图把空间信息从人的记忆中搬到纸面，计算器让人不再手算复杂乘除，计算机进一步承担大量计算，Google 又把许多事实检索外包给互联网。没有人会因此主张，为了保持人类认知能力，我们应该废除文字。

2011 年，Betsy Sparrow、Jenny Liu 和 Daniel Wegner 做了四项关于互联网与记忆的实验。他们发现，当参与者预期某条信息以后还可以从电脑中找到时，对信息本身的 recall 会下降，对“应该去哪里找到它”的记忆反而会增强。[^9] 这项研究并不能证明互联网让人的整体记忆变差；它更像是在说明，人的记忆会根据外部环境重新分工：当 access 足够稳定时，记住路径有时比记住全部内容更经济。

问题在于，这种分工存在边界。如果被记住的“路径”只是一个随时可能改变的 proprietary model、API 或账号，而人又没有形成判断检索结果的能力，那么 access 一旦中断，留下的就不只是遗忘，而是失去方向。我们可以把电话号码交给通讯录，却不能把“应该联系谁、对方说得是否可信、出了问题该怎样重新建立联系”也一并交出去。

真正的问题从来不是能不能把 cognition 外包，而是：**哪些 cognition 可以外包，哪些 cognition 一旦完全外包，人就失去了自主性？** 这才是 AI 时代真正困难的问题。

## 四、Human Capital 必须被重新拆成 AI-on 与 AI-off

传统上，我们谈 human capital，经常会列出教育、知识、技能、经验、健康和职业能力。但在 AI 时代，Human Capital 至少应该被拆成两层。

第一层可以叫 **AI-on Human Capital**：当 AI 存在时，一个人能够创造多大价值？这里包括 prompt、agent、automation、AI coding、rapid prototyping、信息处理、模型选择和工具 orchestration。一个能够熟练使用 AI 的工程师，可能大幅扩展自己能够承担的 scope。这是真实的 human capital amplification。

第二层可以叫 **AI-off Human Capital**：当 AI 不存在时，你还能够理解多少、判断多少、重建多少？这并不要求一个人回到 1990 年工作。它真正考察的是 independence：如果模型给出一个荒谬的结论，你是否知道哪里可能有问题？如果系统崩溃，你是否大致知道应该从哪里开始查？如果新模型替代旧模型，你能否迅速重新学习？如果某个 framework 消失，你是否仍理解 underlying mechanism？如果 AI 无法进入某个领域，你还有没有能力进入它？

2026 年，Anthropic 的研究者用一个学习新 Python library 的任务，对软件开发者做了一项随机对照实验。使用 AI 的参与者在随后的概念测试中平均低了 17%，相当于接近两个 letter grades；AI 组完成任务稍快，但速度差异没有达到统计显著。更值得注意的是，使用 AI 并不必然带来较低成绩：表现较好的参与者往往会追问解释、提出 conceptual question，或者让 AI 辅助理解而不是直接包办。[^10] 这项研究样本较小，只测量了任务结束不久后的理解，不能回答长期能力变化，但它把 AI-on 与 AI-off 的差别放进了一个很具体的工作场景：代码可以更快出现，理解却不一定以同样速度出现。

于是可以把 AI 时代的 Human Capital 暂时写成：

\[
\begin{gathered}
\mathrm{Human\ Capital}\\
= \mathrm{Internal\ Capability}\\
{}+ \mathrm{AI\ Leverage}\\
{}+ \mathrm{Judgment}\\
{}+ \mathrm{Learning\ Velocity}
\end{gathered}
\]

这不是一个可精确计算的经济学公式，而是一张个人能力的检查表。其中任何一项单独最大化都不是最优解。只有 internal capability，没有 AI leverage，你可能非常扎实，但 productivity 太低；只有 AI leverage，没有 internal capability，你可能极其高效，却异常脆弱；没有 judgment，你甚至不知道模型什么时候错了；没有 learning velocity，当技术栈发生变化，你掌握的具体工具又会迅速折旧。

所以真正值得积累的，不是一个 static skill set，而是一种 **regenerative capability**。

## 五、真正的问题不是“我记住了多少”，而是“我能不能重新长出来”

这是我认为这轮思考中最重要的变化。过去我们谈学习，总是问：我学会了吗？但在 AI 时代，另一个问题可能更加重要：**如果我把这个知识忘掉，我还有能力重新把它长出来吗？**

比如编程。一个人未必需要记住所有 API 参数，未必需要背下几十种 framework 的 syntax，也未必需要在没有 documentation 的情况下手写所有 boilerplate，因为这些东西的外部访问成本已经非常低。

但是他最好仍然理解：程序状态是什么，数据如何流动，function 和 abstraction 为什么存在，网络请求到底发生了什么，数据库为什么需要 transaction，复杂度意味着什么，系统为什么会失败，以及一个大问题如何被拆成可以验证的小问题。

前面的东西越来越接近 Access，后面的东西越来越接近 Regeneration。因此，我们可以用一个简单的问题判断任何知识应该 internalize 到什么程度：

> **Is this something I merely need access to, or something I need the ability to regenerate?**

低频 API 可以 access，具体 syntax 可以 access，某个软件菜单的位置可以 access。但是 causal model、first principles、problem decomposition、evidence evaluation、reality constraints 和 learning how to learn——这些东西必须尽量具有 regeneration capability。

因为真正的 autonomy 不是“我永远记得答案”，而是：答案消失以后，我仍然知道怎样重新接近答案。

## 六、为什么我还是越来越重视数学、物理、代码和历史？

这又带来另一个问题：如果 AI 已经可以随时解释任何知识，还有哪些东西值得一个人真正花很多年去掌握？

我最开始想到的是 Mathematics、Physics、Code 和 History。后来我发现，这几个词真正共同的地方并不是“它们都是重要学科”，而是它们分别提供了一种极难被时代淘汰的 cognitive interface。如果再加一个，我会加上 Language：

> **Language → Representation**
>
> **Mathematics → Structure**
>
> **Physics → Reality**
>
> **Code → Execution**
>
> **History → Time**

语言帮助我们表示和组合经验；数学让我们处理数量、关系、概率、变化、约束和不确定性；物理提醒我们，世界不是由语言组成的，物质、能量、时间、空间、熵和材料强度不会因为 narrative 漂亮就改变；代码迫使一个 system 真正运行，模糊语言最终必须坍缩成具体行为；历史则让人看到 path dependence，看到制度、技术、公司、个人和文明如何从过去走到今天，并提醒我们：今天看起来理所当然的结构，往往只是漫长历史过程中的暂时状态。

这不意味着每个人都应该成为物理学家或数学家。它们的重要性在于帮助人保持一种能力：orientation。你不需要把整张地图背下来，但最好知道北在哪里。

## 七、但 Steve Jobs 呢？Warren Buffett 呢？

这个推论马上会遇到一个很好的反例：如果数学和物理如此重要，那么 Steve Jobs 怎么解释？Warren Buffett 又怎么解释？为什么一个伟大的人必须擅长数学或者 physics？

答案是：他不需要。

Jobs 的价值显然不来自高等数学。2005 年，他在 Stanford 的毕业演讲中回忆，退学以后因为兴趣去旁听 calligraphy，学习 serif、sans-serif、字母间距与 typography；十年后设计第一台 Macintosh 时，这些经验重新出现，进入了 Mac 的字体设计。[^5] 这是一种完全不同于 physics 的能力。

但 Jobs 并没有活在一个脱离 reality 的符号世界。他面对的是：人究竟愿不愿意使用这个东西？一个界面到底舒服不舒服？字体到底美不美？产品握在手里的感觉对不对？消费者看到产品有没有 desire？这些判断同样会被 reality 检验。

Elon Musk 的 Reality Contact 明显更接近物理世界。Penn 对他的校友回顾显示，他取得了物理学学位和 Wharton 的本科学位；其后来的许多事业又直接面对 energy density、manufacturing、rocketry、battery 和 cost 等物理与工程约束。[^6]

Buffett 又完全不同。他的 territory 不是火箭或者 typography，而是 business economics。股票价格只是 representation，真正决定一家企业长期价值的，是它未来能够产生并取出的现金。Berkshire 的 Owner’s Manual 将 intrinsic value 定义为一家企业剩余生命周期中可以取出的现金的折现价值，同时强调它只是会随利率和现金流预测变化的估计，而不是一个精确数字。[^7]

所以真正的共同变量不是“伟大的人都擅长数学”，而是：**伟大的人往往有某种非常强的 Reality Contact。**

## 八、一个人必须有一块“现实能够拒绝他”的地方

我非常喜欢用这个标准理解 Reality Contact：你是否生活在一个现实可以对你说“不”的领域里？

工程师画了一根管，装不上去。Reality says no。研究人员提出一个理论，实验不符合预测。Reality says no。创业者认为自己的产品非常棒，没人付钱。Reality says no。投资者认为一家企业价值极高，现金流长期没有兑现。Reality says no。作家认为自己表达得非常深刻，读者完全无法理解。Reality says no。演员认为自己演得很好，镜头和观众没有被说服。Reality says no。

真正危险的状态，是一个人生活在一个几乎永远不会收到 negative feedback 的符号环境里。模型永远漂亮，PPT 永远正确，argument 永远 self-consistent，每一个 concept 都可以再用一个 concept 解释，每一次失败都可以重新包装成 narrative。久而久之，人会开始把 map 当成 territory。

AI 会把这个风险进一步放大，因为 AI 实在太擅长生产漂亮的 map。

1986 年的 Challenger 调查提供了一个极端但清楚的例子。听证会上，Richard Feynman 把一小段 O-ring 材料用夹具压住，放进冰水，再展示它在低温下无法迅速恢复形状。复杂的可靠性判断、管理流程和发射叙事，突然被一小块橡胶拉回物理世界。NASA 保存的调查材料也显示，工程师与管理层对灾难性失败概率的估计曾相差几个数量级，而把“以前这样飞过也没有失败”当作继续接受风险的理由，会让标准在不知不觉中下降。[^11]

这个故事的重要性不在于“一个聪明人用简单实验战胜了复杂组织”，而在于它展示了 Reality Contact 的功能：让一个可以被不断解释的争论，重新面对一个不能被修辞改变的约束。对于技术，材料最终有否决权；对于产品，用户有否决权；对于投资，长期现金流有否决权。

## 九、Token → Map → System → Territory

我们可以进一步把现代社会分成四层：

> **Token**：money、stock price、title、degree、followers、likes、ranking、benchmark score。它们是社会运行所需要的 measurement 与 coordination token。
>
> **Map**：language、theory、financial statement、CAD drawing、model、algorithm、code、dashboard。它们帮助我们描述现实。
>
> **System**：company、software、factory、supply chain、institution、product。Map 在这里被组织起来，开始持续产生行为。
>
> **Territory**：people、body、time、material、energy、natural law、human needs。真正的现实最终在这里发生。

2016 年 Wells Fargo 的销售丑闻，正好展示了这四层怎样发生错位。美国消费者金融保护局的调查发现，为了满足销售目标并获得激励，一些员工在客户不知情或未同意的情况下开设账户、申请银行卡或开通服务。[^12] 销售数字原本只是帮助管理业务的 token；当整个 system 开始围绕数字本身优化时，dashboard 上的“增长”却对应着 territory 里真实客户的损失、困扰与信任崩塌。

所以 token 并不虚假，metric 也并非不该存在。危险发生在代理指标不再接受底层现实校准的时候：组织以为自己在增加客户关系，实际上只是在增加账户数量；个人以为自己在增加学习，实际上只是在增加完成的对话和生成的文档。

所以金钱当然不是“假的”，股票也不是电子游戏里的金币。它们之所以有价值，正是因为这些 token 最终拥有对 territory 的 claim。钱可以购买时间、能源、labor、factory、computation、土地和人的 attention。

但这里仍然存在一个关键区别：一个人擅长在 token layer 获胜，不代表他能够理解 system layer；理解 system，也不代表他可以重建 territory。这也是“地图不等于疆域”真正重要的地方。

## 十、The Map Is Not the Territory，但人仍然需要地图

“The map is not the territory”来自 Alfred Korzybski。他强调，地图不是它所代表的疆域，但一张正确的地图会与疆域拥有相似结构，这也正是地图有用的原因。[^8]

所以，我们不能走向另一个极端。地图当然非常重要，一个完全不看地图的人同样很容易迷路。Theory、model、language、finance、mathematics 和 software，都是文明压缩 reality 的方式。真正的问题不是 *map vs territory* 二选一，而应该是：

> **Use the map, while maintaining contact with the territory.**

人会看着地图走路，但不会只盯着地图而完全不看前方。当地图和现实冲突时，Reality always wins。也恰恰在冲突发生的时候，我们得到了一次非常珍贵的机会：update the map。

这其实就是 engineering、science、entrepreneurship 乃至成熟人生决策的共同机制：

> **Model → Act → Observe → Error → Update**

一个好的 map，并不是永远正确的 map，而是能够被 territory 持续纠正的 map。

## 十一、Build 的本质：让不存在的东西进入 Reality

这又让我重新理解了一个经常被滥用的词：Build。

今天大家都在说 builder，但 build 并不意味着所有代码必须亲手一个字符一个字符敲出来。否则，一个 CEO 从来没有亲自焊接电路板，就不能说他 build a company；一个建筑师没有亲自搬砖，就不能说他参与 build 一栋楼。

Build 更深层的含义是：**通过自己的 agency，使一个原本不存在于现实中的结构开始存在。** 它可以是软件、公司、文章、制度、课程、产品，也可以是一个以前不存在的 concept。

AI 可以承担越来越多 micro-operation，但它并没有因此自动成为这个 process 的 owner。因为真正的 builder 仍然需要选择问题、决定目标、承担 trade-off、面对 constraints、判断结果、承担后果，并决定下一次 iteration。

想象 AI 在一个下午生成了一套工厂维护排程工具。代码能运行，界面也完整，但“建成”远没有发生：传感器出现坏值时该相信谁？计划停机和意外停机的成本怎样比较？谁可以覆盖自动排程？一次错误会只是晚几个小时，还是造成安全事故？现场人员愿不愿意改变原来的工作流？这些问题不是代码生成之后的边角料，它们才决定一个 software artifact 能否成为现实中可靠运转的 system。

因此，AI 生成的是大量可供选择的 map；builder 的责任，是让其中一张地图经受现场、用户、成本和后果的检验。项目最终失败时，不能用“代码是模型写的”撤销责任；项目真正创造价值时，也不是因为文件夹里多了多少代码，而是因为某个现实约束被解决了。

所以，AI 时代真正被 commoditize 的，很可能不是 Build 本身，而是 Build 中的大量 execution。一旦 execution 越来越便宜，价值就会向上游移动：What should be built? Why should it exist? For whom? Under what constraints? Who decides when it is good enough? Who owns it? Who is responsible when it fails?

## 十二、假设整个文明都获得了 ChatGPT，然后突然被拔掉

把这个问题再推远一点。做一个思想实验：假设从今天开始，每个人都获得一个接近 frontier model 水平的 AI，没有昂贵价格，没有 compute constraint，每一个孩子、工程师、商人、政府官员、研究人员和普通劳动者都可以随时调用。

最初几年，几乎必然会出现巨大的 productivity explosion。很多知识壁垒快速下降，一个普通人能够完成过去只有 specialist 才能完成的工作。程序员的 scope 变宽，设计师可以开发软件，marketing 可以自己做 automation，科学家可以更快进入邻近学科，创业成本下降，整个文明的 cognitive floor 被抬高。

但很快，另一个现象会发生：execution 不再稀缺。如果所有人都可以生成代码，那么“生成代码”本身的经济价值下降；如果所有人都能写文章，“写出通顺文章”本身也会下降；如果任何人都能生成 presentation、analysis 和 prototype，竞争必然继续向上游迁移。

新的 scarcity 会变成 problem selection、context、taste、judgment、trust、distribution、ownership、decision rights 和 responsibility。换句话说，当 intelligence 越来越便宜之后：**方向开始比执行更贵。**

## 十三、当 AI 存在足够久，它会从工具变成 Cognitive Substrate

再假设这个文明不是使用 AI 五年，而是五十年、一百年，几代人从出生开始就生活在 AI 中。那时，他们可能已经不再把 LLM 看成“一个工具”。就像今天的人不会每天感叹：太神奇了，我今天居然使用了电。

Electricity 已经成为 infrastructure，互联网也是。AI 最终也可能变成 cognitive infrastructure，甚至更准确地说，变成 **cognitive substrate**。

越来越多系统会默认假设它存在：教育默认 AI tutor 存在，程序员默认 agent 存在，企业默认 autonomous workflow 存在，政府默认 AI planning 存在，科学研究默认 AI research assistant 存在，个人默认 personal AI 存在。整个文明围绕它重新组织，生产率变得非常高。

一种技术是否成为 substrate，关键不只在于人们使用它多频繁，而在于其他制度是否已经按照“它永远在线”的前提重新设计。一个团队如果只是给原来的工程师增加 AI，工具失效时至多暂时变慢；如果团队已经取消训练路径、减少专业岗位、删除旧流程，并把知识只保存在 agent workflow 里，那么关闭 AI 并不会让组织自动恢复到从前。旧能力不是待机状态，而是已经被组织结构淘汰了。

但与此同时，它也可能悄悄积累一种以前没有出现过的 vulnerability：文明还会使用系统，却越来越少有人知道，这个系统在没有 AI 的情况下应该怎样被重建。

## 十四、如果这时候 API 被切断，会发生什么？

这里最值得想象的场景其实不是 apocalypse，不是所有东西第二天全部倒塌。更可能出现的是一句很简单的话：**Everything becomes slow.**

代码突然变慢，研究突然变慢，行政突然变慢，教育突然变慢，决策突然变慢。很多以前一个人半小时完成的事情，重新需要几天。大量工作流程不是不能做，而是人已经忘记：过去为什么需要这么多人才能完成。

于是整个文明才会真正看见一个过去被隐藏起来的变量：**Civilizational Cognitive Reserve**，也就是当外部智能基础设施失效以后，一个文明仍然能够理解、维护、修复和重建关键系统的能力。

美国海军学院对 celestial navigation 的处理，是一个很好的现实缩影。天文导航曾从课程中退出：NROTC 在 2000 年停止教授，海军学院在 2006 年移除。2015 年，它又被重新纳入海军学院课程。海军给出的理由不是怀念六分仪，而是电子导航可能受到系统退化、断电、卫星故障和 cyber threat 的影响。[^13] GPS 仍然是效率更高、精度更好的主系统；看星星定位的价值，则是在主系统不可用时，舰船仍保留一种独立接近答案的方法。

这正是 Cognitive Reserve 与拒绝技术的区别。保留 reserve 不是要求每天都用低效方式工作，而是有意识地保存少量人员、知识、工具和演练，使“第二条路”不只存在于历史书里。

这与银行的 capital reserve、国家的 strategic petroleum reserve、工程系统里的 redundancy 很相似。平时看起来没有效率，真正发生 failure 时，才知道它为什么存在。

## 十五、文明还可能积累一种 Interpretability Debt

还有一个更危险的问题。假设 AI 不只是帮助我们写代码，它进一步帮助我们设计下一代 chip、compiler、模型架构、机器人、电网、金融系统，以及新的 AI。几代以后，人类可能面对一些依然正常运行的系统，却没有任何一个单独的人真正理解它们的全貌。

这可以叫 **Interpretability Debt**：系统是可运行的，但越来越难以解释，也越来越难以 reconstruction。

这里的 Interpretability Debt 是我借用 technical debt 提出的延伸概念，并不是一个已经拥有统一定义的学术指标。2015 年，Google 的研究者在 *Hidden Technical Debt in Machine Learning Systems* 中指出，真实 ML 系统里的模型代码往往只占很小一部分，周围还有数据收集、验证、配置、监控和 serving infrastructure；更难处理的债务来自纠缠的数据依赖、隐藏反馈、未声明的使用者，以及外部世界的变化。[^14] 系统今天运行正常，并不意味着后来的人知道某个 signal 为什么存在、谁在依赖它，或者修改之后会触发什么连锁反应。

把这个问题放大到文明层面，债务就不只在软件里，也在组织记忆里。文档可能仍在，却没有人能判断哪些假设已经过期；模型能够给出设计，却没有团队能独立验证边界条件；系统可以被重启，却不能从 first principles 重新说明它为什么安全。可运行、可维护、可解释、可重建，是四个不同的层次。

最极端的情况甚至会出现一个 recursive dependency：人类需要 AI 才能理解如何制造 AI。那么当 AI substrate 被破坏后，文明不是简单地“重新写一下程序就行了”，因为用来重建 AI 所需要的认知能力本身，也已经被 offload 给 AI。

这是一种非常深的 structural fragility。

## 十六、效率和韧性从来不是同一个优化目标

这并不只是 AI 问题，而是一个经典的 engineering problem：Efficiency vs Resilience。

如果追求绝对效率，就应该减少 redundancy。一个服务器够用，就不要第二台；一个供应商最便宜，就全部交给他；一个 AI 能完成任务，就不需要人再学一遍。在正常情况下，这是最佳 optimization。

但 robustness 要求完全不同。航空系统有 backup，数据中心有 redundancy，金融机构有 capital buffer，军队保留 strategic reserve，关键制造业建立 second source。原因很简单：

> **Redundancy looks inefficient until the primary system fails.**

自动化研究很早就发现了这里的悖论。Lisanne Bainbridge 在 1983 年的 *Ironies of Automation* 中指出，自动化并不会简单消除人的问题；经典设计常把正常操作交给机器，却把机器无法处理的异常状态留给人。[^15] 于是，人只在最困难、最少见的时候被叫回来接管，而日常自动化又减少了他练习、观察和形成情境感的机会。系统越可靠，这个矛盾反而可能隐藏得越久。

AI 把同一个问题带进知识工作：平时由模型生成方案，只有在模型犯下隐蔽错误时才要求人类表现出专家判断。但如果判断本身长期没有被使用，所谓 human in the loop 可能只剩流程图上的一个方框。真正的 redundancy 必须被维护；一个从不演练、没有信息、也没有否决能力的 backup，并不是真正的 backup。

所以，AI 时代也许需要一种新的 redundancy：**Cognitive Redundancy**。它不是要求所有人重复学习同样的知识，而是说，一个成熟的文明不能允许所有关键能力都只有一种实现方式：call the model。

## 十七、我们这一代人可能恰好是一种 Bridge Generation

现在二三十岁、四十岁左右的人，可能属于一个非常特殊的 generation：我们经历过 pre-AI world，也正在进入 AI-native world。

我们知道没有 ChatGPT 的时候，查资料是什么感觉；知道软件以前怎么开发；知道 essay 曾经怎么写；知道没有 GPS 时，人怎样认路。同时，我们又拥有 AI 的 leverage。

如果未来真的出现 infrastructure disruption，这种 bridge generation 反而可能具有一种奇怪的价值：它既知道旧世界怎么运行，又知道新世界为什么更快。

但一代人的亲身记忆不能自动变成文明的 reserve。人会退休，技能会生疏，旧设备会消失，曾经“大家都知道”的做法也会变成无人能读的档案。真正有价值的 bridge，必须把 tacit knowledge 转换成可以传递的东西：清楚的原理、开放的格式、可离线保存的资料、能够实际运行的旧流程、跨代训练，以及定期发生的恢复演练。历史只有在必要时还能被调用，才不只是 nostalgia。

这种历史经验最终也会消失。就像今天已经很少有人知道，一座现代城市如果没有电网、互联网和全球 supply chain，究竟应该怎样维持。所以 History 在这里再次显出意义。它保存的不只是“过去发生过什么”，而是：**人类曾经还有哪些不同的 ways of doing things。**

## 十八、真正应该追求的不是 Independence from AI，而是 Cognitive Sovereignty

到这里，最容易产生的误解必须被纠正。我并不认为未来最优秀的人应该减少使用 AI。恰恰相反，应该大量使用，甚至比今天使用得更多，因为 intelligence amplification 本身就是一种真实的竞争优势。拒绝 calculator 不会让一个数学家更高贵，拒绝 compiler 也不会让一个程序员更优秀。

真正值得追求的不是 independence from tools，而是 **Cognitive Sovereignty**：

> 我可以大量调用外部 intelligence，但仍然拥有足够的 internal model 来判断它。
>
> 我可以借助 AI 编程，但知道 software 是怎样一种 system。
>
> 我可以让 AI 帮助投资分析，但知道 price 不等于 value。
>
> 我可以让模型帮助我形成观点，但仍然拥有自己与 reality 的 connection。
>
> 我可以让 AI 写第一版，但最终承担结论和后果的人仍然是我。

“Own the loop”也需要几个真实的 control point：在问 AI 之前，我能否先说清目标与约束；收到答案之后，我能否检查 evidence，而不只检查语气是否流畅；结果进入现实之前，我能否设计测试、寻找反例并保留否决权；结果造成影响之后，我是否仍然愿意署名并承担责任。如果这几个位置都已经让出去，那么即使人还在不断输入 prompt，也未必仍然拥有这个 loop。

这种关系不是 AI replaces me，也不是 I reject AI，而是：**I own the loop.**

## 十九、这可能才是 Human Capital ETF 在 AI 时代真正应该保护的“本金”

如果把这些重新放回 Human Capital ETF，这个框架也会发生变化。

Core 不应该只理解成健康、职业和现金流。它还有一个很深的认知层：保护那些不能被彻底 externalize 的基础能力。Growth 也不应该只是多看课、多读书、多学技术，而应该逐渐变成：不断扩大自己能够理解、进入和重新构造 reality 的范围。

Distribution 不只是“发内容”，而是把 internal model 变成 public artifact，让现实、市场、读者和用户来检验它。Meta 也不只是提高 productivity，它应该持续追问：我到底在增长能力，还是只在增长 output？哪些事情 AI 已经替我做得很好？哪些东西我虽然做出来了，却还没有真正理解？哪些知识只需要 Access？哪些必须具备 Regeneration？哪些 cognitive debt 正在积累？

可以想象两个 worker 都借助 AI 做出了同样的 prototype。第一个人交付以后只留下结果；第二个人还留下了系统图、关键 trade-off、失败记录、可重复的测试，以及一篇能够接受外部批评的说明。短期看，两个人的 output 可能相同；放进 Human Capital ETF 里，他们积累的资产却不同。后者把一次任务同时转化成了 Core 中的判断基础、Growth 中的可迁移能力、Distribution 中的公开资产，以及 Meta 中对自己工作方式的反馈。

这不是要求每一次工作都写成教材，而是提醒自己：output 只有被提炼、检验和保留下来，才更可能从一次性劳动转化为 human capital。否则 AI 提高的也许只是 throughput，而不是本金。

## 二十、The Worker Investor 投资的，最终不是知识，而是 Optionality

这样一来，The Worker Investor 的问题也会变得更加清晰。一个 worker 为什么还要学习？不是为了把所有知识存进脑子。为什么要学 AI？不是为了追逐最新工具。为什么要 build？不是为了证明自己会代码。为什么要写作？也不只是为了发表内容。

最终是在投资 **Future Optionality**。Optionality 不是“我知道未来会发生什么”。恰恰相反，它意味着：因为我不知道未来发生什么，所以我要让自己在不同未来中都拥有重新行动的能力。

AI 继续高速进步，我能利用它；AI 工具发生替换，我能重新学习；某个职业消失，我拥有 transferable capability；某个平台失效，我仍然拥有 audience、作品或者 ownership；某个 software 被淘汰，我理解 underlying mechanism；某个答案消失，我还拥有 regenerate answer 的能力。

Optionality 因此不主要存在于“我押中了哪一个模型”，而存在于不同层之间的可迁移性。具体 prompt 会折旧，某个产品界面会改变，今天领先的 agent 也可能被替代；但问题领域的理解、判断证据的标准、与真实用户建立的信任、自己拥有的作品和把新工具接入旧目标的能力，可以穿过这些更替。真正的 option 不是永远守着一条旧路，而是在路消失以后仍有能力换路。

这是一种比“掌握某项技能”更深的 Human Capital。

## 二十一、真正值得拥有的，不是答案，而是重新接近答案的能力

所以，重新回到最开始那个问题：我用了这么久 AI，却没有记住那么多具体代码。如果 AI 今天没了，我是不是其实什么都不会？

我的答案现在会变成：不能只用“我还能不能手写出某段代码”来判断。更重要的是看，你是否比以前更能发现问题、拆解问题；是否知道一个系统大概由哪些部分组成；是否知道应该去哪里寻找 evidence；是否能够迅速进入一个陌生领域；是否知道模型可能错在哪里；是否知道现实会怎样检验它；是否能够在工具改变以后重新学习；以及最终——是否能够让一个 idea 穿过 abstraction，进入 reality。

如果这些能力正在增长，那么 AI 并没有简单地把 cognition 从你身上拿走。它可能改变了 cognition 存放的位置与形态。

但与此同时，也应该警惕另一件事：不要因为 AI-on capability 飞速增长，就误以为 AI-off capability 也同步增长了。这两条曲线应该分别观察。

怎样观察？对于真正重要的新能力，我可以偶尔做四个很朴素的测试：**Reconstruct**——关掉 AI，用空白页重画核心结构；**Diagnose**——面对一个故意放进去的错误，不先索要新答案，而是解释它为什么错；**Transfer**——改变一个约束，看同一原理还能不能用；**Build**——做出一个最小版本，让真实数据、用户或运行结果来拒绝它。学习研究长期发现，主动从记忆中提取，而不只是重复阅读，可以显著改善之后的保持；2008 年一项 *Science* 研究也表明，在其外语词汇学习任务中，反复 retrieval 对延迟测试尤其重要。[^16]

这不意味着每个 API 都要闭卷考试。它只是给“我好像已经理解了”增加一次抽样检查。AI 可以继续承担大量 access，少数高价值的 causal model 和 failure model 则要定期被取回、使用并接受现实检验。

## 二十二、不要只学会在地图上赢

我们正在进入一个非常奇怪的时代。以前 intelligence 极其昂贵，一个人要花十年才能形成的 knowledge structure，现在可能几秒钟就可以被调用。这是巨大的文明进步，没有必要对此怀旧，也没有必要故意让自己变慢。

真正值得警惕的是，当 intelligence 变得廉价以后，我们会不会误以为：

> **Access to intelligence = Possession of intelligence**

就像 access to capital 不等于拥有 business capability，access to information 不等于 knowledge，access to map 不等于 understanding territory。

AI 可以帮我们获得越来越好的地图，甚至告诉我们应该走哪条路。但一个成熟的人仍然应该偶尔抬起头，看一眼真正的路：看材料，看用户，看身体，看现金流，看代码究竟有没有跑，看实验有没有成功，看产品有没有被使用，看现实有没有按照自己的理论运行。

因为 The map is not the territory。当地图与现实发生冲突时，Reality always wins。

真正值得积累的 Human Capital，因此也许可以被浓缩成一句话：

> **Use AI aggressively. Learn selectively. Own the fundamentals. Stay close to reality. Build continuously.**

再往前一步：不要试图把整个世界记在脑子里，但要保留理解世界、重新学习世界，并在必要时重新建造世界的能力。

The Worker Investor 最终投资的，也许正是这种能力：不是让自己成为一块储存越来越多知识的硬盘，而是成为一个即使环境变化、工具更替、地图失效，仍然可以重新找到北方的人。

不要只学会在地图上赢。要尽可能保留触碰、理解，以及在必要时重建地图之下那片 territory 的能力。

## 参考资料

[^1]: Silicon Valley Girl，[《Andrew Ng: The Biggest Opportunities in AI Aren’t Where You Think》](https://www.youtube.com/watch?v=o-wv_szZ0V0&t=844s)，Andrew Ng 访谈，相关讨论见 14:04–15:53。
[^2]: Evan F. Risko、Sam J. Gilbert，[《Cognitive Offloading》](https://doi.org/10.1016/j.tics.2016.07.002)，*Trends in Cognitive Sciences*，Vol. 20, No. 9，2016，pp. 676–688。
[^3]: Hamsa Bastani、Osbert Bastani、Alp Sungu、Haosen Ge、Özge Kabakcı、Rei Mariman，[《Generative AI without guardrails can harm learning: Evidence from high school mathematics》](https://doi.org/10.1073/pnas.2422633122)，*Proceedings of the National Academy of Sciences*，Vol. 122, No. 26，2025，e2422633122。
[^4]: Nataliya Kosmyna、Eugene Hauptmann、Ye Tong Yuan、Jessica Situ、Xian-Hao Liao、Ashly Vivian Beresnitzky、Iris Braunstein、Pattie Maes，[《Your Brain on ChatGPT: Accumulation of Cognitive Debt when Using an AI Assistant for Essay Writing Task》](https://www.media.mit.edu/publications/your-brain-on-chatgpt/)，MIT Media Lab / arXiv:2506.08872，2025；研究限制与措辞说明见 [项目 FAQ](https://www.media.mit.edu/projects/your-brain-on-chatgpt/overview/)。
[^5]: Steve Jobs，[《You’ve got to find what you love》](https://news.stanford.edu/stories/2005/06/youve-got-find-love-jobs-says)，Stanford University Commencement Address，2005 年 6 月 12 日。
[^6]: Knowledge at Wharton，[《Harnessing the Sun and Outer Space: Elon Musk’s Sky-high Vision》](https://knowledge.wharton.upenn.edu/article/harnessing-the-sun-and-outer-space-elon-musks-sky-high-vision/)，University of Pennsylvania，2009。
[^7]: Berkshire Hathaway，[《Owner’s Manual》](https://www.berkshirehathaway.com/1996ar/manual.html)，1996 Annual Report；相关 discounted cash-flow 表述亦见 Warren E. Buffett，[《Chairman’s Letter – 1992》](https://www.berkshirehathaway.com/letters/1992.html)。
[^8]: Alfred Korzybski，*Science and Sanity: An Introduction to Non-Aristotelian Systems and General Semantics*，1933，p. 58；原文节选与出处见 Institute of General Semantics，[《The Map is Not the Territory》](https://generalsemantics.org/event-4967707)。
[^9]: Betsy Sparrow、Jenny Liu、Daniel M. Wegner，[《Google Effects on Memory: Cognitive Consequences of Having Information at Our Fingertips》](https://doi.org/10.1126/science.1207745)，*Science*，Vol. 333, No. 6043，2011，pp. 776–778。
[^10]: Judy Hanwen Shen、Alex Tamkin，[《How AI assistance impacts the formation of coding skills》](https://www.anthropic.com/research/AI-assistance-coding-skills)，Anthropic Research / arXiv:2601.20245，2026 年 1 月 29 日。
[^11]: Presidential Commission on the Space Shuttle Challenger Accident，[《Personal Observations on Reliability of Shuttle》](https://www.nasa.gov/history/rogersrep/v2appf.htm)，Richard P. Feynman，Rogers Commission Report, Vol. 2, Appendix F，1986；O-ring 冰水演示亦见 NASA，[《Power to Explore: A History of Marshall Space Flight Center, 1960–1990》](https://www.nasa.gov/wp-content/uploads/2023/02/sp-4313.pdf)，NASA SP-4313，1999。
[^12]: Consumer Financial Protection Bureau，[《Written Testimony of Richard Cordray Before the Senate Committee on Banking, Housing, and Urban Affairs》](https://www.consumerfinance.gov/archive/newsroom/written-testimony-richard-cordray-director-cfpb-senate-committee-banking-housing-and-urban-affairs/)，2016 年 9 月 20 日。
[^13]: U.S. Navy，[《Charting a New Course: Celestial Navigation Returns to USNA》](https://www.navy.mil/Press-Office/News-Stories/display-news/Article/2264003/charting-a-new-course-celestial-navigation-returns-to-usna/)，2015 年 10 月 15 日。
[^14]: D. Sculley、Gary Holt、Daniel Golovin 等，[《Hidden Technical Debt in Machine Learning Systems》](https://proceedings.neurips.cc/paper/2015/hash/86df7dcfd896fcaf2674f757a2463eba-Abstract.html)，*Advances in Neural Information Processing Systems 28*，2015。
[^15]: Lisanne Bainbridge，[《Ironies of Automation》](https://doi.org/10.1016/0005-1098(83)90046-8)，*Automatica*，Vol. 19, No. 6，1983，pp. 775–779。
[^16]: Jeffrey D. Karpicke、Henry L. Roediger III，[《The Critical Importance of Retrieval for Learning》](https://doi.org/10.1126/science.1152408)，*Science*，Vol. 319, No. 5865，2008，p. 966。
