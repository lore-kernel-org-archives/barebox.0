Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4UOU-0003RR-Qm
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 11:48:56 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 18 Jan 2014 12:48:08 +0100
Message-Id: <1390045689-23127-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
References: <1390045689-23127-1-git-send-email-robert.jarzmik@free.fr>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: mioa701 change MTD layout
To: barebox@lists.infradead.org

As barebox has grown up in size, because UBI support is now embedded in
barebox, and because the IPL is at least rewritten to be fully GPL,
modify mioa701 support to take into account this new layout :
 - IPL is version 0.5
 - MTD layout is fully changed
 - the boot sequence is rewritten :
   - the volume up button triggers console mode
   - upon PowerOn or Sleep exit, power key is debounced and if not
   help board is powered off back
   - sdcard environment override can now stop the autoboot sequence
   - mtd environment override can now stop the autoboot sequence

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/env/bin/barebox_update  |    7 +--
 arch/arm/boards/mioa701/env/bin/console_mode    |    6 +++
 arch/arm/boards/mioa701/env/bin/init            |   55 +++++++++++++++++++----
 arch/arm/boards/mioa701/env/bin/sdcard_override |    3 ++
 arch/arm/boards/mioa701/env/config              |    3 +-
 arch/arm/boards/mioa701/env/data/dps1.raw.gz    |  Bin 1239 -> 1324 bytes
 6 files changed, 62 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/boards/mioa701/env/bin/console_mode

diff --git a/arch/arm/boards/mioa701/env/bin/barebox_update b/arch/arm/boards/mioa701/env/bin/barebox_update
index 1023770..632c209 100644
--- a/arch/arm/boards/mioa701/env/bin/barebox_update
+++ b/arch/arm/boards/mioa701/env/bin/barebox_update
@@ -1,10 +1,11 @@
 #!/bin/sh
 
 # Page+OOB specific partitions
-addpart /dev/mtd0.raw 1081344@3649536(msipl)
-addpart /dev/mtd0.raw 270336@3649536(barebox)
+addpart /dev/mtd0.raw 2162688@405504(barebox)
 
 if [ -r /barebox.BIP0 ]; then
+	dps1_unlock
 	erase /dev/mtd0.raw.barebox
-	cp -v /barebox.BIP0 /dev/mtd0.raw.barebox
+	cp -v /barebox.BIPO /dev/mtd0.raw.barebox
+	dps1_unlock
 fi
diff --git a/arch/arm/boards/mioa701/env/bin/console_mode b/arch/arm/boards/mioa701/env/bin/console_mode
new file mode 100644
index 0000000..aa06e92
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/console_mode
@@ -0,0 +1,6 @@
+#!/bin/sh
+# Script to run barebox in console mode
+
+splash /dev/mtd0.barebox-logo2
+echo
+echo "Welcome to barebox console"
diff --git a/arch/arm/boards/mioa701/env/bin/init b/arch/arm/boards/mioa701/env/bin/init
index ab5d84d..e914eae 100644
--- a/arch/arm/boards/mioa701/env/bin/init
+++ b/arch/arm/boards/mioa701/env/bin/init
@@ -7,13 +7,55 @@ export PATH
 addpart /dev/mtd0 $mtdparts
 
 usbserial -s "Mio A701 usb gadget"
-led keyboard 0
 
-sdcard_override
+gpio_get_value 22
+is_usb_connected=$?
+
+gpio_get_value 93
+is_vol_up=$?
 
 fb0.enable=1
+# Phase1: Handle Vol-Up key case : drop immediately to console
+if [ $is_vol_up != 0 ]; then
+	console_mode
+	exit
+fi
+
+# Phase2: Handle Power-On case : debounce PowerUp key or Halt
+if [ $global.system.reset = "POR" -o $global.system.reset = "WKE" ]; then
+	powerup_released=0
+
+	gpio_get_value 0
+	is_power_up=$?
+	if [ $is_power_up = 0 ]; then
+		powerup_released=1
+	fi
+	msleep 500
+
+	gpio_get_value 0
+	is_power_up=$?
+	if [ $is_power_up = 0 ]; then
+		powerup_released=1
+	fi
+
+	if [ $powerup_released = 1 ]; then
+		echo "Power button not held, halting"
+		poweroff
+	fi
+fi
+
+# Phase3: display logo
+led keyboard 0
 splash /dev/mtd0.barebox-logo
 
+# Phase4: check for SD Card override
+sdcard_override
+if [ $? = 0 ]; then
+    console_mode
+    exit
+fi
+
+# Phase5: check for MTD override
 mtd_env_override
 if [ $? = 0 ]; then
     echo "Switching to custom environment"
@@ -21,20 +63,17 @@ if [ $? = 0 ]; then
     exit
 fi
 
+# Phase6: check for user interrupting auto-boot
 echo "No custom environment found"
-
-gpio_get_value 22
-is_usb_connected=$?
 if [ $is_usb_connected != 0 ]; then
 	echo -n "Hit any key to stop autoboot: "
 	timeout -a $autoboot_timeout
 	if [ $? != 0 ]; then
-		echo
-		echo "Welcome to barebox console"
+		console_mode
 		exit
 	fi
 fi
 
+# Phase7: auto-boot linux kernel
 echo "Booting linux kernel on docg3 chip ..."
-bootargs="$bootargs mtdparts=docg3.0:$mtdparts ubi.mtd=4 rootfstype=ubifs root=ubi0:linux_root ro"
 bootm /dev/mtd0.kernel
diff --git a/arch/arm/boards/mioa701/env/bin/sdcard_override b/arch/arm/boards/mioa701/env/bin/sdcard_override
index ab83534..7003fa9 100644
--- a/arch/arm/boards/mioa701/env/bin/sdcard_override
+++ b/arch/arm/boards/mioa701/env/bin/sdcard_override
@@ -12,5 +12,8 @@ if [ $mci0.probe = 1 ]; then
 	if [ -f /sdcard/barebox.env ]; then
 		loadenv /sdcard/barebox.env /env.sd
 		/env.sd/bin/init
+		exit
 	fi
 fi
+trigger_error_return_code
+exit
diff --git a/arch/arm/boards/mioa701/env/config b/arch/arm/boards/mioa701/env/config
index 2cc44fd..9201451 100644
--- a/arch/arm/boards/mioa701/env/config
+++ b/arch/arm/boards/mioa701/env/config
@@ -2,4 +2,5 @@
 
 autoboot_timeout=3
 
-mtdparts="256k@3456k(barebox)ro,256k(barebox-logo),128k(barebox-env),4M(kernel),-(root)"
+mtdparts="2048k@384k(barebox)ro,256k(barebox-logo),256k(barebox-logo2),128k(barebox-env),5120k(kernel),-(root)"
+bootargs="$bootargs mtdparts=docg3.0:$mtdparts ubi.mtd=5 rootfstype=ubifs root=ubi0:linux_root ro"
diff --git a/arch/arm/boards/mioa701/env/data/dps1.raw.gz b/arch/arm/boards/mioa701/env/data/dps1.raw.gz
index 93112bfca14762534de50443d4e0b4c9333d0936..9857c83e0718d0268dd8c2082193063cd3dfbc72 100644
GIT binary patch
literal 1324
zcmV+{1=IQ;iwFo+Y|>Hy17vV>F)ngpcL42GacEUl82`?__vvdcy>1KV9D1A!%r?54
zujjVx?YVHIDc)LT!~!*=OvAMd!UEskb4xU8If)^`PMCj1U=)Nx@$8LJ{t?;=B>dyu
zd$_0#WYixLNVng)?@dQE{|fr&{NUp|=eytezH`p^o!>R-L27ATn|L_6uC0cMwyyc{
z^s_hL3^g<~G)&D88X6iJ8vg?Qf6&m-m<yU8H13AeM8EwNhX0hhnK4m}w(i-_H>`77
z_$GG?Z{|<!-}O@e0ls->|H0Sx>_tzVaK?fY_E<n%$XYuWyoYf;^bu$deHglSaW2R}
zH)6i3UdYwZ2QY7f?o)Pr-v?dEbAb)pZj5W7cPJaa^+G?5Z_jZx&IN0h3b}(Tzg+MN
z^gc)*#Nk<=C3C)o@$&E?kEoa?BZFNUCUGk^kMIgI&G!<0AE(MAY~ZtoFzmeb!O)_Q
znHw9Xs<lEgTS%4rtMZxZ5sO3OutocWSTquh;`=Bc3z$tsgAaHrr^QDCcK>%W8rvhm
zJNRxa9gtS}yaa7K#{+YH&bMu7deXZUh8-2HLRPI3lCb8k;wU*DFefL;$p($M`!uwr
zY{{IoFjnWj+&q1VhTpofgiKB((myY->{e=^IQ-*?VNMILRNn}!qe(PeK6VAe>2%!L
z=C8-T*Aw<jyNV`diV3VUFA9$wA)8d))Va_*lpncj=CfBVC+D;Li$$Vd`DYkjP<yc8
zu-Zh#(Cpo9MtOQI73WUwUXHngJ6k|i67F?sZ$?FrWJE`=gyGchkY6BbU*s(ERyYMY
ziL;y24|sOx;v4TjT97f=SVvA8u-l#N#ulekx5u$hRfjmF22#&I49w(XzRk0!=|FS_
zbr#FcqNcc$rYvfL{N<V)Lf$8C=f9Ya_CU@CGF<wBXsTA#zC*}!D+^v1pA4qC;m=3x
zE?$Ug&}9=f&hlx4&pe#7hL6P<iE7wb7fr^{ordyngTGos<vT*oQ>ri2xZW<sQRg~S
zQ}9yAF<aF7MJK~>#z)yqTSR_FzNFhwqg4KUaIWRN*G88DMz#!zeAKH#t%=r_`{Cf;
z_9Yuzj*;dE%@3L%G(Tv5(EOnJLGy#=2h9(fA2dJwSNt#&o7W1Dj|*=meweTHL!0?(
zz4A#CBoDFg>__>w!k$pJvM77|?Oce1x7G&#KhO_->E`R7xWemnV?Ol^7Fk+&3rW2R
zA*WD-9ne*nU&A;?*vqRzURHMWWWt#U(lqF&pq2atdx$s=zNOrWAW^m}Ijh#g&eAph
zY`gM%+bLEj(-SeaS;(X_abL<E4?c(g3a5x1<M1m<U*?-@(HSyAR%8l+>J=u0tn3pq
zzH=;S$J?;JKp(ougIF&N7iAtkDA7~{a^HhHXyxNU3^hs&j|cN{o)ol_*?Cf#l6;MI
z1CXN-;}P^z%Xst_jb-Que#!fi4|(W+f91j+_5SLjx=?BD&ZvK%k;c9ue|bjbqB?Ru
z0&l7}+~a`^>nzN}L_sdVoP@w@b>ZJ#HPa8<U(SAdc(j+8yRk~WQ`3q0jC!Qu4jRlI
z^baBag)scp=zG_1R6OTA?=weKGup29Ss?g+i+yb?y`@v#-QCo+$=w#3ihKn45_g9_
zuy|4SLsx*u)jU?7pKB?2XPimTsO*s&!f@HCD2~Se1a|V~8`saazpnW~^F!1RnjbV~
iLGy#=2h9%}b3yZi<_FCW8gt<`Kl}}u?I7TQF#rH>#-j-U

literal 1239
zcmV;|1StC-iwFqP5SLE?17vV>F)ngpcL42GPiS0482{ex+hmijd6T#{>2_^iLe#A$
zxW+Z6Aju=GQZ>@G4bnpnE9B5a)%fSolbPK_@lVlh=}D9w1SOz{5PIrCv#p3ot1VLF
z!Q#Fh$3sGwC?XXD>u)yMHZ6%>JjwjvW9IwKH{YB2X6E;TG(->dKbU%G;Nih25w-ns
z^~>nT{Z#`41B0N^2Ll5G1A|Rq{tpHQ23x`CgTX(6N{-)I`bK_NdPlab?DnG;Eq_n6
zoC+3HI}@^pam5O(;^dpkJ>Xg$r^1}J3X$;bl>_BtBqVdJn>e(x-3eFPoyN+0FwNhv
z65@lE9|HvyXL-e3Ap<Py$MK!7z$Haq*%Xtws<B3*rBAyHijpVQ+(-fZAwK|q_BU|r
z`2^-1-!7!LJu7>WV+8B>J`+-W0q#yA`LK|kc_A%N$cTGMg<RbhRlqIzFQGltTJ-1K
zOFnlF$`RylW<|9J>mQ_|qDdjE86jUrJ*Hqo;F`dF2=00K-Dsaf%ahaP$IuQ=X3J+@
zEMi@Ys)3lSRI4%0g?tKQtIrnHJT3b3?xMd7-_W_V1;QNh&-hmn8|H};_PsQNIsKS3
ztaCf4FY)qx8gtX<O94uk|3d7>97KmDY8A6EZ-lT0ORwRg;#h-4)XcvfEn9qlnJtW#
zb?h(IYV$T4^TQaUHCR`E9X#~&9hWJ9z1Y-Lvb-6@rsWlU%S-Mpe_pLF>2uZVvvhr|
zf{Nn&c)Td1sQU!^Z^Vjn0{t-hn;DO^N?f^S@w<>MLijDHC836$*k>F18T8}m*E#L)
zK<lC1iMDwKb1*Ln|91GhV4;kz4=oRH)B;w5AAujxwR=@aeI9yVK2uP06GeY0gScC)
z1>^mbMU}dRYoKX=0QGfkaZ{^nuE*>3uiM7+=gyqJioNPMnsdcoSC@Ika{wYH@D99@
z$I}O#w}@KO!tbC?6^Er*r*hpB%1R0uq=SA4XEfecP%i4K?>UdH-E$k~un)ZU>tmWv
zf$Kn<#Jh>RT=k;u=;A5?UccqzeL^O{$HDi2?*JbGABE4r*Y87M_Y3<5Ui+GiJ{Wy4
z`e5|I=!4M*qYp+Oj6N8BF#2Hh;lI)c)~3&ys|dy;h{w|97<|GzI*j;htpzo{?q}f7
z#zgH7X#a@27JqczpM<}PJton&(YM{a3h6V2o$kW-@y-{9r^}3;R6%-L*Y62|{QLI_
z8D=xML#JwaBJPZexTk8l8F&WX0v`qc3gQ#sjv`+#{0aC;_~Y<X@W<c}!XJhI2z;Hx
zg>NHY_uaw|z*2~@V#4o&S#Hj^5y$&-((64d`CU1=a1Yu<PTK49<CtFp=iQf+T-&{8
zYhya6m$=dAy}9fCx_+H!1r=mPxv;Y+ZI+dUT(j=xwK#@7viq%yh~nL_tom1TbzO3j
z@XaImj;HsT#G3X@OFKDJyTfB%p;lA9t}sm3uy$u%J469a_4_c@^}*Xu{`nEQfnWpS
zmGZvZD8j94jTbItKk2SkhgaWy-Fe?ihw_LK-Vc2%Qzy<@)SmI^@-|}q)D8ZkM+W}~
zSmz=;Qjfm*lhFsG54HPX^ub^Qj6N8BF#2Gy6^uR@eK7i9uobTB!{4r^9LIn$0011R
Bg!KRb

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
