CARDGAME="特别的石头剪刀布游戏
・使用三种三张石头剪刀布卡片进行游戏
・你会拿到所有卡片，红爱酱会拿到随机的卡片
  （红爱酱可能拿到相同的卡片）
・每位玩家都可以看到自己拿到的卡片
・每位玩家选择一张卡片并进行石头剪刀布游戏
・两方卡片相同则红爱酱获胜
・红爱酱如果输掉，将被迫露出小穴并强制自慰
・由于魔法石板的规则，无论输赢，你都必须自慰
・重复以上游戏，直到一方无法忍受认输"

mkdir -p "./data/translated_img"
mkdir -p "./data/translated_bgimg"

function sentaku() {
    magick "./data/app/data/bgimage/ゲームタイトル.jpg" \
      -modulate 100,50 \
      -stroke white -strokewidth 16 \
      -draw "line 0,468 1080,468" \
      -draw "line 0,952 1080,952" \
      -draw "line 0,1436 1080,1436" \
      -pointsize 72 -fill white \
      -stroke black -strokewidth 4 \
      -font Noto-Sans-CJK-SC-Black \
      -gravity center \
      \
      -annotate +0-726 "$2" \
      -annotate +0-242 "$3" \
      -annotate +0+242 "$4" \
      -annotate +0+726 "$5" \
      "./data/translated_bgimg/$1"
}

sentaku "startsentaku1.jpg"  "①从最初/脱衣游戏开始" "②从自慰游戏开始" "③从恶作剧游戏开始" "④从SEX/惩罚游戏开始"
sentaku "startsentaku2A.jpg" "从最初开始" "从说明注意事项后开始" "从脱衣游戏的选择支开始" "返回上一页"
sentaku "startsentaku2B.jpg" "从自慰游戏的最初开始" "从剪刀石头布对决开始" "从剪刀石头布结束后开始" "返回上一页"
sentaku "startsentaku2C.jpg" "从恶作剧游戏的最初开始" "从恶作剧游戏的选择支开始" "从恶作剧游戏的选择支开始\n(全部选项解锁的状态)" "返回上一页"
sentaku "startsentaku2D.jpg" "从SEX游戏的最初开始" "惩罚游戏A\n在红爱酱满足之前射精后的惩罚" "惩罚游戏B\n在骰子游戏通关前射精后的惩罚" "返回上一页"

function sentaku() {
    local color=$1
    local title=$2
    local text=$3
    local name=$4

    magick ./data/app/data/image/$name \
        -fill white \
        -draw 'rectangle 15,60 %[fx:w-16],190' \
        -font Noto-Sans-CJK-SC-Black \
        -fill white -stroke black -strokewidth 1 \
        -gravity center \
        -pointsize 28 \
        -annotate +0+20 "$text" \
        ./data/translated_img/$name

    if [[ -z "$color" ]]; then
        return
    fi

    magick ./data/translated_img/$name \
        -fill $color \
        -draw 'rectangle 10,15 %[fx:w-11],50' \
        -font Noto-Sans-CJK-SC-Black \
        -fill white -stroke black -strokewidth 1 \
        -gravity center \
        -pointsize 26 \
        -annotate +0-75 "$title" \
        ./data/translated_img/$name
}

sentaku "#318ce5" "色情Flash型" "打砖块脱衣\n＆\n射击游戏脱衣" "sentaku01.png"
sentaku "" "" "探照灯脱衣\n＆\n撩起脱衣" "sentaku03.png"
sentaku "" "" "剪肩带脱衣\n＆\n圆点遮羞脱衣" "sentaku04.png"
sentaku "#47cc6c" "小便诱发型" "医生先生脱衣\n＆\n尿尿脱衣" "sentaku05.png"


function itazura() {
    local color=$1
    local title=$2
    local text=$3
    local name=$4

    magick -size 800x130 canvas:none \
        -fill $color \
        -draw "roundrectangle 0,0 799,129 10,10" \
        -gravity center \
        -fill white \
        -font Noto-Sans-CJK-SC \
        -pointsize 42 \
        -annotate +0-40 "$title" \
        -pointsize 24 \
        -annotate +0+25 "$text" \
        ./data/translated_img/$name
}

itazura royalblue "①跳蛋九九乘法表游戏"       "一边忍受跳蛋刺激一边背完九九乘法表！背得越远振动越强！\n每次背错都会被惩罚在身上写上H的涂鸦"                      "itazura01.png"
itazura seagreen  "②野外自慰游戏"             "穿着性感的衣服和雨衣，晚上在公园里自慰！\n抑制住自己的呻吟，别让的朋友和警察注意到"                               "itazura02.png"
itazura brown     "③水花四溅的画笔与炮机游戏" "在看不到下半身的情况下，双腿下方的炮机器将逼近你的小穴！\n保持冷静，别让别人发现你正在被炮机进攻！还有颜射惩罚！" "itazura03.png"
itazura royalblue "④色情状态舔球比赛"         "在双耳麦克风里舔一颗糖球！\n直到舔完为止，小穴会被拔开，色情状态也会被分析！"                                     "itazura03.png"
itazura seagreen  "②精液肛交中出游戏"         ""
itazura brown     "③水花四溅的画笔与炮机游戏" "在看不到下半身的情况下，双腿下方的炮机器将逼近你的小穴！\n保持冷静，别让别人发现你正在被炮机进攻！还有颜射惩罚！" "itazura03.png"
itazura royalblue "④色情状态舔球比赛"         "在双耳麦克风里舔一颗糖球！\n直到舔完为止，小穴会被拔开，色情状态也会被分析！"                                     "itazura03.png"
itazura seagreen  "②野外自慰游戏"             "穿着性感的衣服和雨衣，晚上在公园里自慰！\n抑制住自己的呻吟，别让的朋友和警察注意到"                               "itazura02.png"
itazura brown     "③水花四溅的画笔与炮机游戏" "在看不到下半身的情况下，双腿下方的炮机器将逼近你的小穴！\n保持冷静，别让别人发现你正在被炮机进攻！还有颜射惩罚！" "itazura03.png"

⑤ 精液肛交中出游戏
不断赢得高低游戏，将大量的精液射进Beniai的屁眼里！警告：本游戏包含粗俗的配音和声音。如果您对此类内容感到不适，请勿选择本游戏。
