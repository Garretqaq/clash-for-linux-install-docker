# Linux 涓€閿畨瑁?Clash

![GitHub License](https://img.shields.io/github/license/nelvko/clash-for-linux-install)
![GitHub top language](https://img.shields.io/github/languages/top/nelvko/clash-for-linux-install)
![GitHub Repo stars](https://img.shields.io/github/stars/nelvko/clash-for-linux-install)

![preview](resources/preview.png)

## Docker 快速开始

- 镜像地址：`songguangzhi/clash-for-docker`
- 启动与端口说明文档：[`DOCKER.md`](DOCKER.md)

## 鉁?鍔熻兘鐗规€?
- 鏀寔涓€閿畨瑁?`mihomo` 涓?`clash` 浠ｇ悊鍐呮牳銆?- 鍏煎 `root` 涓庢櫘閫氱敤鎴风幆澧冦€?- 閫傞厤涓绘祦 `Linux` 鍙戣鐗堬紝骞跺吋瀹?`AutoDL` 绛夊鍣ㄥ寲鐜銆?- 鑷姩妫€娴嬬鍙ｅ崰鐢ㄦ儏鍐碉紝鍦ㄥ啿绐佹椂闅忔満鍒嗛厤鍙敤绔彛銆?- 鑷姩璇嗗埆绯荤粺鏋舵瀯涓庡垵濮嬪寲绯荤粺锛屼笅杞藉尮閰嶇殑鍐呮牳涓庝緷璧栵紝骞剁敓鎴愬搴旂殑鏈嶅姟绠＄悊閰嶇疆銆?- 鍦ㄩ渶瑕佹椂璋冪敤 [subconverter](https://github.com/tindy2013/subconverter) 杩涜鏈湴璁㈤槄杞崲銆?
## 馃殌 涓€閿畨瑁?
鍦ㄧ粓绔腑鎵ц浠ヤ笅鍛戒护鍗冲彲瀹屾垚瀹夎锛?
```bash
git clone --branch master --depth 1 https://gh-proxy.org/https://github.com/nelvko/clash-for-linux-install.git \
  && cd clash-for-linux-install \
  && bash install.sh
```

- 涓婅堪鍛戒护浣跨敤浜哰鍔犻€熷墠缂€](https://gh-proxy.org/)锛屽澶辨晥鍙洿鎹㈠叾浠朳鍙敤閾炬帴](https://ghproxy.link/)銆?- 鍙€氳繃 `.env` 鏂囦欢鎴栬剼鏈弬鏁拌嚜瀹氫箟瀹夎閫夐」銆?- 娌℃湁璁㈤槄锛焄click me](https://娆″厓.net/auth/register?code=oUbI)

## 鈱笍 鍛戒护涓€瑙?
```bash
Usage: 
  clashctl COMMAND [OPTIONS]

Commands:
    on                    寮€鍚唬鐞?    off                   鍏抽棴浠ｇ悊
    status                鍐呮牳鐘跺喌
    proxy                 绯荤粺浠ｇ悊
    ui                    Web 闈㈡澘
    secret                Web 瀵嗛挜
    sub                   璁㈤槄绠＄悊
    upgrade               鍗囩骇鍐呮牳
    tun                   Tun 妯″紡
    mixin                 Mixin 閰嶇疆

Global Options:
    -h, --help            鏄剧ず甯姪淇℃伅
```

馃挕`clashon` 鍚?`clashctl on`锛宍Tab` 琛ュ叏鏇存柟渚匡紒

### 浼橀泤鍚仠

```bash
$ clashon
馃樇 宸插紑鍚唬鐞嗙幆澧?
$ clashoff
馃樇 宸插叧闂唬鐞嗙幆澧?```
- 鍦ㄥ惎鍋滀唬鐞嗗唴鏍哥殑鍚屾椂锛屽悓姝ヨ缃郴缁熶唬鐞嗐€?- 浜﹀彲閫氳繃 `clashproxy` 鍗曠嫭鎺у埗绯荤粺浠ｇ悊銆?
### Web 鎺у埗鍙?
```bash
$ clashui
鈺斺晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺?鈺?               馃樇 Web 鎺у埗鍙?                 鈺?鈺戔晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺?鈺?                                              鈺?鈺?    馃敁 娉ㄦ剰鏀捐绔彛锛?090                      鈺?鈺?    馃彔 鍐呯綉锛歨ttp://192.168.0.1:9090/ui       鈺?鈺?    馃審 鍏綉锛歨ttp://8.8.8.8:9090/ui          鈺?鈺?    鈽侊笍 鍏叡锛歨ttp://board.zash.run.place      鈺?鈺?                                              鈺?鈺氣晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺愨晲鈺?
$ clashsecret mysecret
馃樇 瀵嗛挜鏇存柊鎴愬姛锛屽凡閲嶅惎鐢熸晥

$ clashsecret
馃樇 褰撳墠瀵嗛挜锛歮ysecret
```

- 鍙€氳繃娴忚鍣ㄦ墦寮€ `Web` 鎺у埗鍙拌繘琛屽彲瑙嗗寲鎿嶄綔锛屼緥濡傚垏鎹㈣妭鐐广€佹煡鐪嬫棩蹇楃瓑銆?- 榛樿浣跨敤 [zashboard](https://github.com/Zephyruso/zashboard) 浣滀负鎺у埗鍙板墠绔紝濡傞渶鏇存崲鍙嚜琛岄厤缃€?- 鑻ラ渶灏嗘帶鍒跺彴鏆撮湶鍒板叕缃戯紝寤鸿瀹氭湡鏇存崲璁块棶瀵嗛挜锛屾垨閫氳繃 `SSH` 绔彛杞彂鏂瑰紡杩涜瀹夊叏璁块棶銆?
### `Mixin` 閰嶇疆

```bash
$ clashmixin
馃樇 鏌ョ湅 Mixin 閰嶇疆

$ clashmixin -e
馃樇 缂栬緫 Mixin 閰嶇疆

$ clashmixin -c
馃樇 鏌ョ湅鍘熷璁㈤槄閰嶇疆

$ clashmixin -r
馃樇 鏌ョ湅杩愯鏃堕厤缃?```

- 閫氳繃 `Mixin` 鑷畾涔夌殑閰嶇疆鍐呭浼氫笌鍘熷璁㈤槄杩涜娣卞害鍚堝苟锛屼笖 `Mixin` 鍏锋湁鏈€楂樹紭鍏堢骇锛屾渶缁堢敓鎴愬唴鏍稿惎鍔ㄦ椂鍔犺浇鐨勮繍琛屾椂閰嶇疆銆?- `Mixin` 鏀寔浠ュ墠缃€佸悗缃垨瑕嗙洊鐨勬柟寮忥紝瀵瑰師濮嬭闃呬腑鐨勮鍒欍€佽妭鐐瑰強绛栫暐缁勮繘琛屾柊澧炴垨淇敼銆?
### 鍗囩骇鍐呮牳
```bash
$ clashupgrade
馃樇 璇锋眰鍐呮牳鍗囩骇...
{"status":"ok"}
馃樇 鍐呮牳鍗囩骇鎴愬姛
```
- 鍗囩骇杩囩▼鐢变唬鐞嗗唴鏍歌嚜鍔ㄥ畬鎴愶紱濡傞渶鏌ョ湅璇︾粏鐨勫崌绾ф棩蹇楋紝鍙坊鍔?`-v` 鍙傛暟銆?- 寤鸿閫氳繃 `clashmixin` 涓?`github` 閰嶇疆浠ｇ悊瑙勫垯锛屼互閬垮厤鍥犵綉缁滈棶棰樺鑷磋姹傚け璐ャ€?
### 绠＄悊璁㈤槄

```bash
$ clashsub -h
Usage: 
  clashsub COMMAND [OPTIONS]

Commands:
  add <url>       娣诲姞璁㈤槄
  ls              鏌ョ湅璁㈤槄
  del <id>        鍒犻櫎璁㈤槄
  use <id>        浣跨敤璁㈤槄
  update [id]     鏇存柊璁㈤槄
  log             璁㈤槄鏃ュ織


Options:
  update:
    --auto        閰嶇疆鑷姩鏇存柊
    --convert     浣跨敤璁㈤槄杞崲
```

- 鏀寔娣诲姞鏈湴璁㈤槄锛屼緥濡傦細`file:///root/clashctl/resources/config.yaml`
- 褰撹闃呴摼鎺ヨВ鏋愬け璐ユ垨鍖呭惈鐗规畩瀛楃鏃讹紝璇蜂娇鐢ㄥ紩鍙峰寘瑁逛互閬垮厤琚敊璇В鏋愩€?- 鑷姩鏇存柊浠诲姟鍙€氳繃 `crontab -e` 杩涜淇敼鍜岀鐞嗐€?
### `Tun` 妯″紡

```bash
$ clashtun
馃樉 Tun 鐘舵€侊細鍏抽棴

$ clashtun on
馃樇 Tun 妯″紡宸插紑鍚?```

- 浣滅敤锛氬疄鐜版湰鏈哄強 `Docker` 绛夊鍣ㄧ殑鎵€鏈夋祦閲忚矾鐢卞埌 `clash` 浠ｇ悊銆丏NS 鍔寔绛夈€?- 鍘熺悊锛歔clash-verge-rev](https://www.clashverge.dev/guide/term.html#tun)銆?[clash.wiki](https://clash.wiki/premium/tun-device.html)銆?- 鑻ヨ闃呬腑鐨勮妭鐐?`server` 浣跨敤鍩熷悕锛岄粯璁?`mixin.yaml` 宸查缃?`proxy-server-nameserver`锛屽彲閬垮厤寮€鍚?`Tun` + `fake-ip` 鍚庤妭鐐瑰煙鍚嶈瑙ｆ瀽涓?fake-ip 鑰屽鑷翠唬鐞嗘彙鎵嬪け璐ワ紱濡備娇鐢ㄨ嚜瀹氫箟 DNS 閰嶇疆锛屽缓璁繚鐣欒椤癸紝骞跺湪蹇呰鏃跺啀閰嶅悎 `fake-ip-filter`銆?- 娉ㄦ剰浜嬮」锛歔#100](https://github.com/nelvko/clash-for-linux-install/issues/100#issuecomment-2782680205)

## 馃棏锔?鍗歌浇

```bash
bash uninstall.sh
```

## 馃摉 甯歌闂

馃憠 [Wiki 路 FAQ](https://github.com/nelvko/clash-for-linux-install/wiki/FAQ)

## 馃敆 寮曠敤

- [clash](https://clash.wiki/)
- [mihomo](https://github.com/MetaCubeX/mihomo)
- [subconverter](https://github.com/tindy2013/subconverter)
- [yq](https://github.com/mikefarah/yq)
- [zashboard](https://github.com/Zephyruso/zashboard)

## 猸?Star History

<a href="https://www.star-history.com/#nelvko/clash-for-linux-install&Date">

 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=nelvko/clash-for-linux-install&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=nelvko/clash-for-linux-install&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=nelvko/clash-for-linux-install&type=Date" />
 </picture>
</a>

## 馃檹 Thanks

[@閼摜](https://github.com/TrackRay)

## 鈿狅笍 鐗瑰埆澹版槑

1. 缂栧啓鏈」鐩富瑕佺洰鐨勪负瀛︿範鍜岀爺绌?`Shell` 缂栫▼锛屼笉寰楀皢鏈」鐩腑浠讳綍鍐呭鐢ㄤ簬杩濆弽鍥藉/鍦板尯/缁勭粐绛夌殑娉曞緥娉曡鎴栫浉鍏宠瀹氱殑鍏朵粬鐢ㄩ€斻€?2. 鏈」鐩繚鐣欓殢鏃跺鍏嶈矗澹版槑杩涜琛ュ厖鎴栨洿鏀圭殑鏉冨埄锛岀洿鎺ユ垨闂存帴浣跨敤鏈」鐩唴瀹圭殑涓汉鎴栫粍缁囷紝瑙嗕负鎺ュ彈鏈」鐩殑鐗瑰埆澹版槑銆?

