---
title: "Life Problem：什么问题值得牵引有限的一生？"
date: 2026-08-11T23:00:20+08:00
slug: "life-problem-worth-a-life"
author: "Qiaomai"
description: "从 NX 工程自动化中的重复摩擦出发，讨论普通 Worker 如何形成问题意识、成为 Builder，并把短暂的劳动转化为能够复用、拥有和复利的持久结构。"
series: ["The Worker Investor"]
categories: ["Essay"]
tags: ["life problem", "problem awareness", "builder", "ownership", "optionality"]
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

*——从 Problem Awareness、Builder 到短暂的人如何创造持久结构*

最近，我越来越强烈地意识到一件平常却很难真正接受的事实：一个人的时间是有限的。

有限不只意味着人生有终点，也意味着我不可能把所有值得学的东西都学完，不可能把所有感兴趣的方向都探索一遍，更不可能把每一种可能的人生活一次。数学、编程、AI、流体力学、投资、写作、工程自动化，每一个方向都足以消耗许多年。继续增加学习清单，无法解决这个问题。我必须选择。

AI 使这种选择变得更加重要。过去，许多想法会因为不会写代码、找不到资料或缺少工具而停下来；现在，我已经可以借助 AI 更快地检索信息、学习 API、搭建原型和整理文章。当“获得一个答案”与“做出第一个版本”越来越容易，稀缺性便继续向上移动：答案仍然重要，但比答案更稀缺的，是发现、定义并长期拥有一个值得解决的问题。

> **Can I solve this problem? → Is this problem worth solving?**

这不是一道只属于科学家或创业者的题。每一个依靠工作生活的人，都在用不可逆的时间换取工资、经验和结果。我们当然要完成眼前的任务，但如果一生始终只由外部任务组织，最重要的资本配置决定就从未真正回到自己手里：我的注意力究竟应该长期投向什么？

我把这个问题称为 **Life Problem**。

## 一、Life Problem 不是一句宏愿

Life Problem 很容易被误解成一句宏大的使命，例如“改变世界”“推动人类进步”或“成为更好的自己”。这些话也许表达了愿望，却很难直接告诉人明天应该做什么。另一个极端，则是把某个几天就能解决的任务当成长久方向，例如“自动完成一个 NX 操作”。任务太小，完成以后牵引力也随之消失。

我寻找的，是处在两者之间的问题：足够大，可以不断展开；又足够具体，能够生成下一项真实行动。

Richard Hamming 在 1986 年的演讲《You and Your Research》中提出了一个直接的前提：每个人只有一次人生，因此值得认真想一想，自己所定义的“重要工作”是什么。他曾反复追问研究者：你的领域有哪些重要问题？你正在研究什么重要问题？但他同时提醒，“重要”不能只看结果听起来多么巨大，还要看是否存在一个可以进入的 **reasonable attack**。一个完全无法接触、无法检验的问题，还不能组织有效行动。[^1]

这给了我一个很实用的判断：

> **Large enough to organize a life, but concrete enough to generate the next project.**

Life Problem 不是一个必须一次解决的终极难题，而是一个能够持续生成问题、学习和作品的稳定问题域。它不提供未来二十年的详细路线，却能够不断生成下一步。Purpose 更接近“为什么值得”，Life Problem 则进一步追问：“我准备通过持续理解和改变什么现实，来实践这个为什么？”[^2]

我现在会用七个问题检验一个候选的 Life Problem：

| 我观察的维度 | 我会追问什么 |
| --- | --- |
| Recurrence | 它是否在不同年份、工作和项目中反复出现，而不只是一时兴奋？ |
| Depth | 解决第一层以后，下面是否还有机制、约束和新的未知？ |
| Attackability | 以我现在的能力与资源，能否找到一个真实的下一步？ |
| Generativity | 它能否持续生成研究、原型、文章、代码、实验或产品？ |
| Compounding | 今天留下的结果，能否让下一次理解和行动更容易？ |
| External Value | 对它的理解，最终能否改善别人面对同类问题的方式？ |
| Ownership | 我能否合法、合规地保留其中一部分能力、作品、声誉或资产？ |

我并不拿它们计算所谓的“人生最优解”。这七个问题只是帮助我排除两个极端：把一句空泛口号当成方向，或者把一个短期任务误认成终身问题。经过这些追问以后，我真正愿意保留的候选问题，通常都能反复进入现实、产生下一项行动，并在时间中留下东西。

## 二、痛苦不会自动变成问题

最近一段时间，我在工作中尝试用 AI 和 NX Open 做工程自动化。最初的问题非常小：管路设计中有大量手工查找、测量、标注和一致性检查，能不能让软件替人完成其中一部分？

如果只停在这一层，它只是一次效率改进。但当我真正开始制作插件，问题很快发生了变化。软件怎样知道什么对象需要处理？工程师脑子里的经验怎样变成机器可以执行的 rule？模型改变以后，结果如何保持正确？自动生成的内容由谁验证？一个功能原型怎样变成稳定、可维护的工程系统？

于是，最初的“少点几下鼠标”开始向外生长：

> 重复操作 → 工程自动化 → Design Rule Checking → Engineering Knowledge → AI-assisted CAD → Design to Verification → Engineering Infrastructure

我还没有解决这条链条上的大多数问题。但正因为亲手做过第一个功能性插件，我开始看见它们之间的关系。此前我在[《我完全不会 NX Open，却用 AI 做出了第一个功能性插件》](/posts/ai-nx-open-functional-plugin/)中记录了这个过程；后来又在[《工作经验在什么条件下，才能成为真正的资产？》](/posts/when-work-experience-becomes-an-asset/)里区分企业成果与个人能够合法保留的能力、判断和方法。现在回头看，它们可能是同一个深层问题从不同位置露出的地表信号。

但是，现实中的摩擦不会自动长成 Life Problem。重复加班不会自动变成洞察，犯过许多错误也不会自动获得方法。人可以承受同一种痛苦很多年，只是一次又一次恢复原状。现实提供的只是未经处理的信号；只有当人开始辨认它为何反复出现、怎样命名它、边界在哪里、什么才算改变，摩擦才第一次变成一个可以工作的对象。

> **Friction / Suffering → Problem Awareness → Problem Framing → Choice → Action → Persistent Transformation**

创造力研究把 **problem finding** 与 problem solving 区分开来。Getzels 在 1975 年专门讨论了发现与构造问题在创造性解决过程中的作用。[^3] 现实并不总会把边界清楚、答案唯一的问题交到我们手中。很多时候，最困难的工作发生在求解之前：从杂乱的异常中看出模式，把不舒服的感觉表达成一个可检验的问题，再决定是否愿意对它负责。

这中间有三个不同动作：

> **Reality provides friction.**\
> **Problem awareness turns friction into a problem.**\
> **Agency turns the problem into a project.**

Life Problem 因此未必是坐在书桌前想出来的。它更可能先以一种不宏伟的形式出现：一次加班，一个反复报错的流程，一项所有人都习以为常的低效，或者一个多年以后仍然不肯放过你的疑问。真正的问题意识，是有一天我不再只问“怎样熬过去”，而开始问：为什么同一类问题总在回来？

## 三、一个好问题会自己变成 Curriculum

过去我经常按照学科组织学习：先学数学，再学编程，再学数值方法，希望有一天能够把它们用起来。这种方式有必要，却很容易让知识彼此分离，也很难决定应该学到多深。

问题驱动的顺序不同。一个真实工程问题会先暴露我不理解什么，再把我拉进流体力学；流体力学把我拉进微分方程；微分方程继续把我拉进数值方法、线性代数和程序设计；AI 又降低了把模型、方程和代码连接起来的门槛。学习不再只是增加课程，而开始围绕一个需要被解决的现实形成结构。

> **Problem pulls knowledge.**

这也是我提出 Equation to Code 的原因。但现在回头看，这个名字最容易让人误解的地方，是仿佛只要把一个方程翻译成代码，工作就结束了。真正的工程链条更长：

> **Problem Awareness → First Principles → Model → Equation → Numerical Method → Code → Verification → Tool**

AI 可以越来越快地生成代码，却不会替工程师承担模型与现实之间的责任。边界条件是否合理？量纲是否一致？离散方法是否稳定？极端输入会发生什么？结果能否与理论解、实验或已有工具相互验证？工程工作的终点不是“代码运行了”，而是：

> **The model survives contact with reality.**

当这种经验证的方法被封装、复用并连接进工作流，问题才会继续向外发展：

> Problem → Verified Tool → System → Product → Infrastructure

一个好问题由此不只成为 curriculum，也会逐渐改变一个人的身份。这个变化不是职位晋升，而是承担责任的范围不断扩大：

> **Worker → Problem Solver → Tool Builder → System Builder → Problem Owner**

Worker 完成外部定义的任务；Problem Solver 处理一次具体困难；Tool Builder 把解法编码，使同类工作不必每次从头开始；System Builder 连接工具、规则、数据与反馈；Problem Owner 则进一步决定什么问题值得解决、怎样验证结果，并愿意对它的长期后果负责。

我并不把它看作一条区分高低的身份等级。一个人可以在同一天里同时是 worker、solver 和 builder。我想区分的，只是劳动的形态：

> **Worker completes tasks. Builder creates systems.**

Builder 看见重复劳动时，不只想着下一次做得更快，而会追问：能不能让这类工作以后不再依赖同样多的重复人力？这正是从 Problem Solving 走向 **Problem to Infrastructure** 的起点。

> **A great question becomes a curriculum.**\
> **A great question becomes a body of work.**\
> **A body of work can become infrastructure.**

## 四、我反复在做的，其实是同一种转换

一个人怎样知道什么是自己的 Life Problem？

我不认为答案来自一次性的人生规划。过早宣布一句终身使命，很容易把偶然兴趣包装成命运，也可能为了维持自我叙事而忽视新证据。对我更可靠的方法，是回头检查过去几年：哪些问题解决以后，我就失去兴趣？哪些问题解决一层以后，反而变得更大？哪些问题即使没有即时奖励，隔一段时间仍会重新回来？

这是一种 **Problem Genealogy——问题谱系**。它不是整理我做过的全部事情，而是追踪不同项目背后是否存在同一种反复出现的转换。

| 方向 | 我反复尝试完成的转换 |
| --- | --- |
| 工程自动化 | 重复劳动 → 可复用系统 |
| Equation to Code | 理解与方程 → 经验证的可执行结构 |
| Human Capital ETF | 有限时间与注意力 → 可累积的能力组合 |
| The Worker Investor | 劳动与收入 → 能够被自己拥有的资产与选择权 |
| 写作、网站与视频 | 私人洞察 → 能够持续存在的公共作品 |

这些方向不需要被强行合并成一个品牌。但删掉具体项目名称以后，我开始看见一个共同的 invariant：

> **Transient effort → Persistent structure**

人的一次操作会消失，一套工具可以被再次调用；一次理解可能被遗忘，一个经过验证的模型可以继续被使用；一小时劳动不可追回，一篇文章、一段通用代码、一项能力或一份被拥有的资产，却可能进入下一轮。

因此，我现在最接近的母问题也许不是“怎样让自己变得更优秀”，而是：

> **人的生命是 transient 的，但人如何创造 persistent structures？**

或者更具体地说：

> **一个普通个体，如何把有限生命中的劳动、经历、问题、知识和判断，转化为能够被验证、复用、拥有和复利，并最终对别人产生价值的资产与系统？**

这句话把 The Worker Investor、Human Capital ETF、Compounding Yourself、Equation to Code、工程自动化和写作放进了同一条链条。它现在仍然只是一个研究假设，而不是不得修改的誓言。新的工作、失败、阅读和项目可能使它收缩、转向，甚至被一个更准确的问题取代。

Problem Genealogy 也不能只回头看。过去只能提供证据：什么问题曾经反复吸引我、我在哪些地方真正做出了结果；未来则提供筛选标准：我愿意成为什么样的人，又愿意让哪些结构因为我的工作而出现。二者必须在今天相遇。

> **Past reveals the pattern.**\
> **Future selects the direction.**\
> **Present makes the next move.**

也就是我在[《向过去寻找结果，向未来寻找原因》](/posts/past-results-future-reasons/)中反复思考的那句话：向过去寻找证据，向未来寻找筛选标准，在今天完成下一步。

## 五、我开始在 Career Plan 之外建立 Personal Research Program

传统 Career Plan 通常按照职位和年龄组织人生：三十岁达到什么级别，五年后进入什么岗位，需要补齐哪些证书和技能。这些规划可以帮助人在既有系统里移动，却很难穿过公司、职位、工具和行业的变化。

Life Problem 提供的是另一条轴线。我可以继续做工程师，也可能在未来写书、制作软件、研究新的技术或建立产品。表面的工作会变化，但如果这些活动持续检验同一个深层问题，它们就不再只是互不相关的职业片段。

我把这种组织方式称为 **Personal Research Program**：

> Life Question：我长期想理解或改变什么？\
> ↓\
> Decade Problem：未来几年准备深入哪一层？\
> ↓\
> Yearly Thesis：今年要形成什么新的判断？\
> ↓\
> Projects：用什么真实项目检验？\
> ↓\
> Artifacts：留下什么代码、文章、模型、数据或工具？\
> ↓\
> Infrastructure：哪些反复出现的方法可以成为系统？

这不是要在今天规划未来二十年的每一个动作。现实会变化，模型会出错，新的约束与机会也会不断出现。更合理的方式，很像工程中的 Model Predictive Control：保持相对稳定的方向，只规划一段有限 horizon；采取下一步，读取反馈，再重新计算路径。

> **Important Problem → Current Project → Next Action → Feedback → Updated Understanding**

方向相对稳定，路径持续重算。未来不必给出完整地图，只需要帮助现在排除一些不值得的方向；今天也不必独自承担整个人生，只需要完成当前最有信息价值的一步。

这也是一种跨时间的自我分工：Future Self 提供方向，Past Self 留下基础设施，Present Self 只负责下一项有用的行动。一个长期作品从来不是某一天的我独立完成的，而是许多个已经不存在的 past selves，把笔记、代码、资产、判断与尚未解决的问题，依次交给下一个自己。

## 六、Artifact 是劳动离开当下的方式

如果 Life Problem 只存在于脑中，它仍然非常脆弱。一次理解会被遗忘，一段经验会随着岗位变化而失去上下文，组织内部做过的工作也未必能被外部世界看见。要让短暂劳动进入下一轮，必须有某种东西把它保存下来。

我把这种东西统称为 **Artifact**：文章、代码、模型、数据集、工具、课程、视频、经过抽象的方法，或者一个可以被别人验证的案例。

> **Artifact is memory outside the brain.**\
> **Public artifact is proof of work outside the organization.**

看不见的人力资本当然仍然有价值，但它很难像公开、可验证的 proof of work 那样在社会关系中高效传播。别人无法直接看见我脑子里的判断，却可以阅读一篇文章、运行一段代码、检查一个模型，也可以据此决定是否信任、合作或提供新的机会。Artifact 不是为了把一切都变成内容，而是让一部分真实能力获得可保存、可搜索、可验证和可分发的形态。

我也给这种留存划了一条清楚的边界。企业的代码、图纸、数据、客户信息和商业机密属于企业；工作成果不能因为我参与过，就被带走或公开。我能够合法保留的，是问题意识、专业判断、抽象能力、通用方法，以及在不泄露机密、不侵犯知识产权的前提下重新构造的公共作品。如果某些内容无法安全地泛化，我就让它留在组织内部。

在这个边界之内，我越来越关心一个概念：**Capture Rate——价值留存率**。它不是一项精确的会计指标，而是一个用于检查劳动质量的问题：

> **How much of the value created by my work becomes something I can retain?**

一份工作可以为组织创造很大的价值，却只给个人留下当月工资和疲惫。另一份工作除了工资，还会留下更好的 judgment、更深的 domain knowledge、可迁移的方法、公开的 proof of work、声誉、读者、合作关系与被自己拥有的金融资产。区别不只在于做了多少，而在于有多少结果能够合法地进入自己的下一轮。

这个过程可以写成：

> **Experience → Abstraction → Artifact → Distribution → Reuse → Ownership → Compounding**

经验只有被抽象，才能离开原始场景；抽象只有形成 artifact，才能被保存和验证；artifact 只有获得适当分发，才可能进入新的使用与反馈；而当其中一部分能够被自己拥有，它才真正开始复利。

因此，The Worker Investor 不是把每项爱好都商业化，也不是从组织中攫取不属于自己的东西。它只是在认真工作之外，多问一步：除了这次交付，我是否也在合法地建设那个完成交付的人？

## 七、Momentum 是被保存下来的轨迹

“还有尚未完成的工作”可能提供方向，也可能变成一种危险的自我压迫。当一个人看见太多可能性，很容易开始相信：不能休息，不能浪费时间，必须把脑子里的每一个想法都实现。最后，Unfinished Work 不再是牵引，反而变成永远还不清的债务。

所以，我需要区分两件事。

**Open Loops** 是尚未完成的具体事项：某个页面没改、某段视频没剪、某本书没读完。它们会不断增加，也永远不可能全部清空。

**Life Work** 是我在长期建设什么。它的作用不是要求我完成所有事情，而是帮助我决定哪些事情值得继续，哪些可以放弃，哪些即使暂时停止也不会失去方向。

真正的问题从来不是：

> How do I finish everything?

而是：

> **Which unfinished work deserves my finite life?**

我所理解的 momentum，也不是每天都保持高速。情绪、睡眠、身体和意志都会耗尽；一个人甚至可能几周没有推进某个项目。但只要重要问题已经被保存进笔记、repository、草稿、实验结果和明确的 next action，过去的自己就已经替未来保留了重新进入的入口。

> **Momentum does not require uninterrupted motion. It requires a preserved trajectory.**

真正牵引人的，也许只是一个安静的事实：**There is still something unfinished that matters to me.** 休息不是 momentum 的反面。有时，休息正是为了保护问题与自己的长期关系，使今天的疲惫不必摧毁过去建立的轨迹。

## 八、The Worker Investor 最终投资的是问题选择权

这也让我重新理解 [The Worker Investor](/posts/2026-07-12-worker-investor-start/) 所追求的 freedom。

自由当然包括更稳定的现金流、更少的债务和更多金融资产，但它最终不只是“I don't need to work anymore”。更重要的自由是：

> **I can increasingly decide what problem my time is spent on.**

普通 worker 的大部分问题由组织、客户和现实生活提供。这并不是坏事。工作让人接触真实约束、获得反馈，也让原本看不见的问题显现出来。危险在于，一个人只完成别人定义的任务，却从不保留自己的问题意识；十年以后，他完成了大量工作，却仍不知道自己愿意长期为什么负责。

金融资本购买的是等待、拒绝与选择的空间；人力资本扩大的是能够理解和解决的问题集合；artifact 保存并证明过去的劳动；ownership 使一部分结果能够进入自己的下一轮。它们最后共同服务于同一个目标：逐渐把有限生命的配置权拿回一部分。

把这些经历与思考放在一起以后，我看到的并不是“找到热爱，然后坚持”，而是一条更具体的链：

> **Finite Life → Problem Awareness → Problem Agency → Project → Curriculum → Builder → Artifact → Ownership → Compounding → Optionality**

有限生命使注意力成为稀缺资本；问题意识把现实摩擦变成可以定义的对象；Problem Agency 让人选择承担责任；真实项目拉来知识与反馈；Builder 把一次解法变成工具和系统；Artifact 让劳动留下证据；Ownership 使其中一部分能够积累；复利最终带来选择问题的自由。

在[《不要只成为 AI 的使用者，要成为问题的主人》](/posts/become-the-owner-of-the-problem/)里，我讨论过 Problem Agency。现在我想继续追问：在能够拥有问题以后，究竟有什么问题，值得被一个人长期拥有？

## 结语：短暂的人，持久的结构

我现在仍然不能确定，自己的 Life Problem 最终会被写成哪一句话。但我已经能够看见一些过去并不存在的可能：工程经验可以变成软件，方程可以变成经验证的工具，工作中的问题可以变成研究，私人思考可以变成公共作品，收入可以变成资产，零散项目也可能逐渐形成一个 body of work。

这些东西目前有些只存在于笔记、repository、未完成的文章和脑子里的想法里。世界不知道它们存在，也不会有一个中央调度器提醒我：这里还有一件属于你的工作没有完成。

如果我不做，它们可能真的会消失。这句话不是抱怨，反而是一种责任。不是因为世界欠我一个结果，也不是因为它们一定成功，而是因为我看见了某种尚未存在的东西，并愿意用下一项真实行动检验它。

一个人的 Life Problem 最终不是他说了什么，而是这个问题在现实中留下了什么证据。

人的生命是 transient 的。但一个人可以让短暂的注意力、劳动和理解，进入文章、代码、工具、资产、制度与他人的行动，成为不必随当下立即消失的 persistent structures。也许这就是 The Worker Investor 最值得长期追问的命题：

> **How can transient human effort create persistent structures?**

我暂时不需要知道二十年后的完整答案。未来的自己提供方向，过去的自己留下基础设施，而今天唯一能够行动的自己，只需要识别仍然值得追踪的问题，然后完成下一项能够被交给明天的工作。

> **Make the next good move.**

## 参考资料

[^1]: Richard W. Hamming，[《You and Your Research》](https://cmp.felk.cvut.cz/cmp/teaching/YouAndYourResearch.pdf)，Bell Communications Research Colloquium Seminar，1986 年 3 月 7 日。演讲逐字稿由 J. F. Kaiser 整理；本文引用其关于 important problems 与 reasonable attack 的讨论。
[^2]: Patrick E. McKnight、Todd B. Kashdan，[《Purpose in Life as a System that Creates and Sustains Health and Well-Being: An Integrative, Testable Theory》](https://journals.sagepub.com/doi/10.1037/a0017152)，*Review of General Psychology*，2009 年，第 13 卷第 3 期，DOI: 10.1037/a0017152。
[^3]: J. W. Getzels，[《Problem-Finding and the Inventiveness of Solutions》](https://onlinelibrary.wiley.com/doi/10.1002/j.2162-6057.1975.tb00552.x)，*The Journal of Creative Behavior*，1975 年，第 9 卷第 1 期，第 12–18 页，DOI: 10.1002/j.2162-6057.1975.tb00552.x。
