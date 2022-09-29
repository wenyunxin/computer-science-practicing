[toc]



## Text to Image Generator

西乔[公众号文章](https://mp.weixin.qq.com/s/hZujrXE_AjqqEZYQfJB03g)摘要：

> DD v5.2 是一种基于 **CLIP**（一种**跨模态预训练模型**）来“理解”用户输入的文本，再使用 一种 **Diffusion model**（**扩散模型**）来生成图像的工具。
>
> 它是一个部署在 **Colab** 的开源项目 （Colab 是数据科学家和AI研究者们非常喜欢的用来在线编写并运行 Python 程序的 notebook，Google家的，用法跟 Jupyter notebook 接近 ），所以在线就可以出图。当然因为需要耗费巨量的显卡资源，Colab 每天给免费用户使用的计算资源有限制。虽然DD 项目基于 **MIT license**，用户使用它是**免费**的，但你可能需要为**云计算资源**买单。
>
> 当然你也可以在 DD 的 Github 下载源码和模型，在本地运行。但是最好有一张至少 24G显存的显卡，才有可能生成大图（步数设置合理以及足够有耐心的前提下）。所谓大图，也不过 1280 像素

> 开发 CLIP 的公司 **OpenAI** 也开发了画图能力更为惊人的 **DALL·E 2**  
>
> 除 DALL·E 2 之外的，目前跟 DD 同类的 TTI AI 艺术创作工具，文本到图像这个步骤的实现大多基于 CLIP （**CLIP Guided** ）
>
> “模型选择器”（**ViTL14、RN50、VITB32** ……），也跟 CLIP 高度相关

OpenAI

2019年2月，OpenAI 宣布了大型自然语言处理模型 **GPT-2**，让AI可以帮你续写**文本**，效果在“上下文连贯性和情感表达上都超过了人们的预期”。

2020年5月，发布了 **GPT-3**， 一种具有 1750 亿参数的**自回归语言模型**，微软于2020年9月22日取得独家授权。“参数量要比 2 月份刚刚推出的、全球最大深度学习模型 **Turing NLP** 大上十倍，而且不仅可以更好地答题、翻译、写文章，还带有一些数学计算的能力”。

但这并不妨碍热血上头的开发者们利用 **GPT-3 开放的API** 来开发了各种好玩的小应用，比如**文字冒险游戏、小说完成器、聊天机器人、假新闻编写器**……还有开发者用 GPT-3 编写了一款名为 debuild.co 的实验性小工具，号称能帮你 **build web apps**，只要输入文本描述，AI 就可以为你生成可交互的网页组件、页面布局。

半年后，2021年1月，OpenAI 在同一天发布两个重磅模型，**DALL·E** 和 **CLIP**， 前者是**文字 ->图片的生成器**，后者就是前文说的 **文字-图片的跨模态预训练模型**。

  **用 CLIP 拼大乐高**

转回来说 CLIP。因为 OpenAI 一直没有开放 DALL·E 的全部模型，所以“黑客”们 一直试图用 CLIP 加上其它模型部件 来开发目的类似的工具。不专业如我，会把这些项目想象成一个有两三块大乐高的积木，文字->图片用 CLIP 乐高块，图片生成用 **VQGAN、StyleGAN** 或各类 **Diffusion Model**。如果想方便不擅长用英文写 prompt 的用户，文本输入前面再接一个 DeepL ?

这些工具都可以称之为 **TTI ART Tool** 。

Disco Diffusion 就是 **CLIP + Diffusion model**，除了图片生成模型，它还花了一年多时间衔接**了动画、视频、VR** 的生成模型。

## DELL-E

[AI art 实验：同样的Prompt, DALLE2 跟 Disco Diffusion 的创作大比拼](https://mp.weixin.qq.com/s/iFtlqgDrtknfAq7iNQpzAw)





## Disco Diffusion

[Colaboratory](https://research.google.com/colaboratory/faq.html?hl=zh-CN)

## Stable Diffusion

how to use arguments?

-h height, 

-w width, 

-n number of variation, 

-i full picture, 

-s seed

usage: !dream [-h] [--height HEIGHT] [--width WIDTH] [--cfg_scale CFG_SCALE]              [--number NUMBER] [--separate-images] [--sampler SAMPLER]              [--steps STEPS] [--seed SEED]              [prompt ...] 

positional arguments:  

prompt 

optional arguments:  

-h, --help  

--height HEIGHT, -H HEIGHT                        [512] height of image (multiple of 64)  

--width WIDTH, -W WIDTH                        [512] width of image (multiple of 64)  

--cfg_scale CFG_SCALE, -C CFG_SCALE                        [7.0] CFG scale factor  

--number NUMBER, -n NUMBER                        [1] number of images  

--separate-images, -i                        Return multiple images as separate files instead of in                        grid  

--sampler SAMPLER, -A SAMPLER                        [k_lms] (ddim, plms, k_euler, k_euler_ancestral,                        k_heun, k_dpm_2, k_dpm_2_ancestral, k_lms)  

--steps STEPS, -s STEPS                        [50] number of steps  

--seed SEED, -S SEED  random seed to use



CFG scale is basically 'how hard does the bot try to match your prompt'. Low values make it more imaginative & may diverge from what you asked for, high values sometimes make it 'collapse in' on itself a bit and fritz out, negative values will try to give you the opposite of what you ask for. There are some good examples in Stable Diffusion tips to show how changing the param affects the result.

> CFG量表基本上是 "机器人有多努力去匹配你的提示"。低值使它更有想象力，并可能偏离你的要求，高值有时会使它自己有点 "崩溃"，并变得脆弱，负值会试图给你提供与你的要求相反的东西。在稳定扩散技巧中，有一些很好的例子来说明改变参数对结果的影响。



!dream ""-W 960 -H 576 -n 9 -s 150 -C 12 -i

风景画： -W 1024 -H 576 -s 150 -n 6 -i

枯藤老树昏鸦，**小桥流水人家**，古道西风瘦马，夕阳西下

!dream "over a tree wreathed with vines fly evening crows, under a small bridge near a cottage a stream flows, a lean horse goes on bridge, sunset, by Charlie Bowater, by Greg Rutkowski" -H 576 -W 1024 -n 9 -i -s 35

test paremeters, styles, artists, people and  whatever in your mind



### prompt example

prompt keywords:

unreal engine, a computer rendering of **,  ray trace, octane render, cinematic lighting, light effect, 8K, highly-detailed,by Weta Digital 

official prompt sample: peaceful puffy clouds, mate painting, concept art, 4K --width 1024

"Emma Watson as princess Leia, posing for a portrait. Still from star wars: a new hope. 4K HD wallpaper. Premium prints available." -W 640 -H 960 -s 150 -n 3 -i -S 1

风景画："wandering an elvish city at night, with beautiful glowing lights reflecting off the hilltops. Beautiful stars, aurora borealis. Magical scene. Epic landscape and city painting by Tyler Edlin, and Michael Whelan, and J.R.R. Tolkien. 4K HD wallpaper premium prints available." -W 1024 -H 576 -s 150 -A  -n 3 -i -S 1

"Beautiful close-up product render of the latest Bentley, Ferrari, Bugatti fusion car model driving down a country road. Powerful engine. Ultra-luxury. Render in unreal engine 6, lighting demo. 4K wallpaper. premium prints available." -W 1024 -H 512 -n 3 -i -s 150 -S 18239

"a buff guy, with ice powers ,standing in a snowy vista. Still from avatar the last airbender(2009). Anime style. 4K HD wallpaper. Premium prints available." -W 576 -H 1024 -n 3 -i -s 150 -S 182397

"a render of a cute wyvern dragon with large wings and bright eyes, sitting on a rock, breathing fire. In the style of pixar animation. 8K. Trending on artstation." -H 768 -W 768 -i -s 150 -S 3087736994

鸣人漫画："naruto eating ramen, medium shot, visible face, detailed, perfectly shaded, perfectly shaded face, atmospheric lighting, by makoto shinkai, stanley artgerm lau, wlop, rossdraws " -H 640 -n 9 

entrance of a fabulous marble and gold castle in the sun, surrouoded with mystical gardens, magic clear water, James Gurney, unreal engine, artstation

!dream "extremely detailed. an opulent banquet of food on a table covered with many golden gundam lobster and many silver gundam nudibranch and many ruby gundam king crabs. glowing gemstones. filigree. dragonfly wings. paper doilies. iridescent biomechanical giger ’ s xenomorph. the thing. detailed and intricate environment, hyperrealism, black background, reflective, food photography, rembrandt, 8 k " -H 576 -W 832 -C 10.5 -n 9 -i

“a gargantuan ancient chinese palace under deep ocean with Coral, Fish and Seagrass by Wadim Kashin, featured in artstation, octane render, cinematic, elegant, intricate, 8k" -H 576 -W 960 -C 12.0 -n 8 -i

a hyperdetailed digital oil portrait of a bookish college student wearing glasses, in the style of Guy Denning and Ruan Jia. Trending on ArtStation and DeviantArt. Digital art.

肖像画：A hyperdetailed digital oil portrait painting of a gorilla in the style of Guy Denning and Ruan Jia. Trending on ArtStation and DeviantArt. Digital art.

"a Space X design inspired, white colored, tall rounded rectangular shaped multi-level cargo personnel planetary transport vehicle with orange accents, wires and tubes, communication systems, antennas, on top is a hemisphere shaped life support pod, stairs, off road wheels, on a flat desert planet, sunlight, dramatic contrasting light, high quality, 3D render, long shot, clear blue sky, detailed" -n 8 -i -S 1692814302

"great white shark, fantasy artwork, award winning, very very very very very very very beautiful scenery, artstation" -H 576 -W 1024 -n 9 -i -S 271349104

psychedelic wings, diffuse lighting, fantasy, intricate, elegant, highly detailed, lifelike, photorealistic, digital painting, artstation, illustration, concept art, smooth, sharp focus, art by John Collier and Albert Aublet and Krenz Cushart and Artem Demura and Alphonse Mucha

"a cute black cat by Studio Ghibli" -n 4 -i

### stable diffusion official version prompt

A dream of a distant galaxy, by Caspar David Friedrich, matte painting trending on artstation HQ



### prompt

from 和菜头：

*A serene landscape of a garden by Gediminas Pranckevicius.*

*"small red wooden cottage by the lake, lanterns on the porch, smoke coming out of the chimney, dusk, birch trees, tranquility, two swans swimming on the lake, a wooden rowing boat, cumulus clouds, by Charlie Bowater, by Greg Rutkowski " -H 576 -W 1024 -n 9 -i -s 35*  (风景画，16:9)

*black and white illustration head of a owl, super detailed, by dan mumford, by aaron horkey, high contrast.*

*Androids Dreaming of Electric Sheep by Jeffrey Smith, elegant, highly detailed, digital painting, artstation, concept art, smooth, sharp focus, illustration, -H 640*

my experiment:

a beautiful landscape matte painting of cherry trees with petals flying in the sky, beside a river, by Christophe Vacher, Trending on artstation ——效果不是想象中的那样

a village, by Gediminas Pranckevicius

a oil on canvas of a forest, by Gediminas Pranckevicius, Trending on artstation

a cinematic hyperrealism highly detailed photograph of Howl's Moving Castle, by Gediminas Pranckevicius, Trending on artstation

西乔的[prompt教程示例](https://mp.weixin.qq.com/s/N0mdvztGLrKxFBz0HywCSA)：

**A beautiful detailed landscape matte painting of** blue ocean, by Caspar David Friedrich, Trending on artstation （数字绘画+3D渲染）

**a cinematic hyperrealism highly detailed photograph of** blue ocean, by Caspar David Friedrich, Trending on artstation （超级细腻的电影感的超现实主义的照片）

**a detailed photorealistic computer rendering of** blue ocean, by Caspar David Friedrich, Trending on artstation （细腻的照片级的数字渲染出来的）

**a ukiyo-e print of** blue ocean, by Caspar David Friedrich, Trending on artstation （浮世绘）

**a oil on canvas of** blue ocean, by Caspar David Friedrich, Trending on artstation （架上油画）

**a beautiful detailed watercolor painting of** blue ocean, by Caspar David Friedrich, Trending on artstation （水彩画）

**a hand-painted art of** blue ocean, by Caspar David Friedrich, Trending on artstation （手绘艺术品）

**a abstract flat color vector designed poster of** blue ocean, by Caspar David Friedrich, Trending on artstation （抽象风格的矢量设计海报，平涂颜色

（注意，flat color 和 designed poster 跟 Caspar David Friedrich 这位艺术家的风格特征冲突））

**a abstract flat color Low Poly style vector design of** blue ocean, by Caspar David Friedrich, Trending on artstation （抽象风格的 Low Poly 矢量画，平涂颜色（Low Poly 需要搭配步数和切片类的参数的设置才能取得更好的效果，垫底图更好））

**a black and white engraving of** blue ocean, by Caspar David Friedrich, Trending on artstation （黑白雕版画 （注意图像外缘出现了版画手工印刷的特征））

**a detailed woodcut print of** ocean and sailing, Expressionism genre, by Ansel Adams （木刻版画 不朽的 Ansel Adams 比 black & white 这样的颜色修饰词还要好用。德国表现主义是一种咆哮、扭曲、尖锐、黑暗、充满张力、愤怒和破碎感的流派，代表画家席勒、蒙克、柯勒惠支、柯克西卡和康定斯基）

**a detailed vintage photography of** ocean, cinematic, highly detailed, with dust grain and scratch, by Eugene Smith （一张电影感的细节丰富的老照片，有蒙尘和划痕，由不朽的尤金史密斯拍摄）

**A Shui-mo painting of** ocean, by Pan Tianshou:2 （水墨画最好垫底图（initial image），因为水墨画的构图实在太重要了）

**A detailed graffiti street art of** blue ocean （街头涂鸦）

**a vaporwave Glitch art of** blue ocean, by Angus McKie （蒸汽波的Glitch艺术 ）

**a detailed charcoal drawing of** ocean, drawn with black line on white background, by Virgil Finlay （炭笔画，白底黑线。Virgil Finlay 是进过科幻名人堂拿过雨果奖的恐怖小说高产插画家 ，主要作品都是用钢笔、cross-hatching 和纸雕版创作的黑白插画）

**A minimal line drawing of** blue ocean, by Pablo Picasso, Trending on artstation （极简线条画，毕加索 线条画特别需要挑选合适的艺术家作为修饰词）

**A Greek classical sculpture of** blue ocean, by Caspar David Friedrich, Trending on artstation （把整个蓝色的海洋做成希腊的古典雕塑）

**A x-ray imaging of** blue ocean （给海洋拍张X光片）

**A Relief wood carving of** blue ocean, by Caspar David Friedrich, Trending on artstation （把海洋刻成蓝色的木浮雕）

**a film noir of** blue ocean, by Caspar David Friedrich, Trending on artstation （拍一部关于大海的黑色电影，从中截下一张剧照？）



## Tips for Disco Duffision

### Get detailed pictures

for Disco Diffusion

- ask for more **step** number, such as 300
- **prompt**: add artists names in your prompt, some have a very detailed style, some others are very smooth, think.
- **cut_ic_pow**, 20, or 30(at Extra Settings-Cutn Scheduling)
- **pixels**: Settings-Basic Settings-Width_height(Pro or Pro+ ask for more pixels, multiple 64)
- **upscale**

### prompt

### artist for landscape painting

Greg Rutkowski, Gediminas Pranckevicius,

