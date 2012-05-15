Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SUPBc-0003pv-Qx
 for barebox@lists.infradead.org; Tue, 15 May 2012 21:21:41 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 15 May 2012 23:21:15 +0200
Message-Id: <1337116877-17657-4-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
References: <1337116877-17657-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] arch/arm: mioa701 add IPL and DPS1 updater
To: barebox@lists.infradead.org

In order for barebox to be functional, the docg3 DPS1 has to
protect barebox from writes, and have its embedded IPL coded
to load barebox (as barebox is the SPL).

Add a raw DPS1, which :
 - protects the area from block 6 to block 123
   This is DPS1 + barebox + barebox-logo
 - encodes the 2048 bytes IPL

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 arch/arm/boards/mioa701/env/bin/dps1_unlock  |   12 ++++++++++++
 arch/arm/boards/mioa701/env/bin/dps1_update  |   12 ++++++++++++
 arch/arm/boards/mioa701/env/data/dps1.raw.gz |  Bin 0 -> 1239 bytes
 3 files changed, 24 insertions(+)
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
 create mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
 create mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz

diff --git a/arch/arm/boards/mioa701/env/bin/dps1_unlock b/arch/arm/boards/mioa701/env/bin/dps1_unlock
new file mode 100644
index 0000000..2d7dab8
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/dps1_unlock
@@ -0,0 +1,12 @@
+#!/bin/sh
+#
+# Shell to unlock the DPS1 with "12345678" key.
+
+mw -b 0x105e 0x31
+mw -b 0x105e 0x32
+mw -b 0x105e 0x33
+mw -b 0x105e 0x34
+mw -b 0x105e 0x35
+mw -b 0x105e 0x36
+mw -b 0x105e 0x37
+mw -b 0x105e 0x38
diff --git a/arch/arm/boards/mioa701/env/bin/dps1_update b/arch/arm/boards/mioa701/env/bin/dps1_update
new file mode 100644
index 0000000..a9d72da
--- /dev/null
+++ b/arch/arm/boards/mioa701/env/bin/dps1_update
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+# Page+OOB specific partitions
+addpart /dev/mtdraw0 67584@202752(dps1)
+uncompress /env/data/dps1.raw.gz /dps1.raw
+
+if [ -r /dps1.raw ]; then
+	dps1_unlock
+	erase /dev/mtdraw0.dps1
+	cp -v /dps1.raw /dev/mtdraw0.dps1
+	dps1_unlock
+fi
diff --git a/arch/arm/boards/mioa701/env/data/dps1.raw.gz b/arch/arm/boards/mioa701/env/data/dps1.raw.gz
new file mode 100644
index 0000000000000000000000000000000000000000..93112bfca14762534de50443d4e0b4c9333d0936
GIT binary patch
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

literal 0
HcmV?d00001

-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
