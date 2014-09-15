Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTVqA-00081d-CU
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 12:57:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A83BEA00468
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:56:45 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Mon, 15 Sep 2014 14:56:31 +0200
Message-Id: <1410785791-27053-4-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
References: <1410785791-27053-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 4/4] ARM:phyFLEX-iMX6 New Ram Timings for Q/DL
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

From: Maik Otto <m.otto@phytec.de>

Signed-off-by: Maik Otto <m.otto@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../flash-header-phytec-pfla02-1gib.imxcfg         |    2 +
 .../flash-header-phytec-pfla02-2gib.imxcfg         |    2 +
 .../flash-header-phytec-pfla02-4gib.imxcfg         |    7 +-
 .../flash-header-phytec-pfla02.h                   |  138 ++++++++++----------
 .../flash-header-phytec-pfla02dl-1gib.imxcfg       |    2 +
 .../flash-header-phytec-pfla02dl.h                 |  125 +++++++++---------
 .../flash-header-phytec-pfla02s-512mb.imxcfg       |    2 +
 7 files changed, 148 insertions(+), 130 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index d73207c..f6061f2 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -1,3 +1,5 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x3c409b85
 
 #define SETUP_1GIB_2GIB_4GIB		\
 	wm 32 0x021b0040 0x00000017;	\
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index 2291b71..2bfa836 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -1,3 +1,5 @@
+#define SETUP_MDCFG0                    \
+	wm 32 0x021b000c 0x565c9b85
 
 #define SETUP_1GIB_2GIB_4GIB		\
 	wm 32 0x021b0040 0x00000027;	\
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
index c6dc775..4121018 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -1,6 +1,9 @@
+#define SETUP_MDCFG0                    \
+	wm 32 0x021b000c 0x8c929b85
 
 #define SETUP_1GIB_2GIB_4GIB             \
-        wm 32 0x021b0040 0x00000047;    \
-        wm 32 0x021b0000 0xC41A0000
+	wm 32 0x021b0040 0x00000047;	\
+	wm 32 0x021b0000 0xC41A0000
 
 #include "flash-header-phytec-pfla02.h"
+
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
index 138ae36..900fbaa 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
@@ -2,46 +2,60 @@ soc imx6
 loadaddr 0x20000000
 dcdofs 0x400
 
-wm 32 0x020e05a8 0x00000030
-wm 32 0x020e05b0 0x00000030
-wm 32 0x020e0524 0x00000030
-wm 32 0x020e051c 0x00000030
-wm 32 0x020e0518 0x00000030
-wm 32 0x020e050c 0x00000030
-wm 32 0x020e05b8 0x00000030
-wm 32 0x020e05c0 0x00000030
-wm 32 0x020e05ac 0x00020030
-wm 32 0x020e05b4 0x00020030
-wm 32 0x020e0528 0x00020030
-wm 32 0x020e0520 0x00020030
-wm 32 0x020e0514 0x00020030
-wm 32 0x020e0510 0x00020030
-wm 32 0x020e05bc 0x00020030
-wm 32 0x020e05c4 0x00020030
-wm 32 0x020e056c 0x00020030
-wm 32 0x020e0578 0x00020030
-wm 32 0x020e0588 0x00020030
-wm 32 0x020e0594 0x00020030
-wm 32 0x020e057c 0x00020030
+wm 32 0x020e0798 0x000C0000
+wm 32 0x020e0758 0x00000000
+wm 32 0x020e0588 0x00000030
+wm 32 0x020e0594 0x00000030
+wm 32 0x020e056c 0x00000030
+wm 32 0x020e0578 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e057c 0x00000030
+wm 32 0x020e058c 0x00000000
+wm 32 0x020e059c 0x00000030
+wm 32 0x020e05a0 0x00000030
 wm 32 0x020e0590 0x00003000
 wm 32 0x020e0598 0x00003000
-wm 32 0x020e058c 0x00000000
-wm 32 0x020e059c 0x00003030
-wm 32 0x020e05a0 0x00003030
-wm 32 0x020e0784 0x00000030
-wm 32 0x020e0788 0x00000030
-wm 32 0x020e0794 0x00000030
-wm 32 0x020e079c 0x00000030
-wm 32 0x020e07a0 0x00000030
-wm 32 0x020e07a4 0x00000030
-wm 32 0x020e07a8 0x00000030
-wm 32 0x020e0748 0x00000030
-wm 32 0x020e074c 0x00000030
+wm 32 0x020e078c 0x00000030
 wm 32 0x020e0750 0x00020000
-wm 32 0x020e0758 0x00000000
+wm 32 0x020e05a8 0x00000028
+wm 32 0x020e05b0 0x00000028
+wm 32 0x020e0524 0x00000028
+wm 32 0x020e051c 0x00000028
+wm 32 0x020e0518 0x00000028
+wm 32 0x020e050c 0x00000028
+wm 32 0x020e05b8 0x00000028
+wm 32 0x020e05c0 0x00000028
 wm 32 0x020e0774 0x00020000
-wm 32 0x020e078c 0x00000030
-wm 32 0x020e0798 0x000c0000
+wm 32 0x020e0784 0x00000028
+wm 32 0x020e0788 0x00000028
+wm 32 0x020e0794 0x00000028
+wm 32 0x020e079c 0x00000028
+wm 32 0x020e07a0 0x00000028
+wm 32 0x020e07a4 0x00000028
+wm 32 0x020e07a8 0x00000028
+wm 32 0x020e0748 0x00000028
+wm 32 0x020e05ac 0x00000028
+wm 32 0x020e05b4 0x00000028
+wm 32 0x020e0528 0x00000028
+wm 32 0x020e0520 0x00000028
+wm 32 0x020e0514 0x00000028
+wm 32 0x020e0510 0x00000028
+wm 32 0x020e05bc 0x00000028
+wm 32 0x020e05c4 0x00000028
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b080c 0x00110011
+wm 32 0x021b0810 0x00240024
+wm 32 0x021b480c 0x00260038
+wm 32 0x021b4810 0x002C0038
+wm 32 0x021b083c 0x03400350
+wm 32 0x021b0840 0x03440340
+wm 32 0x021b483c 0x034C0354
+wm 32 0x021b4840 0x035C033C
+wm 32 0x021b0848 0x322A2A2A
+wm 32 0x021b4848 0x302C2834
+wm 32 0x021b0850 0x34303834
+wm 32 0x021b4850 0x422A3E36
 wm 32 0x021b081c 0x33333333
 wm 32 0x021b0820 0x33333333
 wm 32 0x021b0824 0x33333333
@@ -50,15 +64,19 @@ wm 32 0x021b481c 0x33333333
 wm 32 0x021b4820 0x33333333
 wm 32 0x021b4824 0x33333333
 wm 32 0x021b4828 0x33333333
-wm 32 0x021b0018 0x00081740
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0008 0x09444040
+
+SETUP_MDCFG0
+
+wm 32 0x021b0010 0xff538f64
+wm 32 0x021b0014 0x01ff0124
+wm 32 0x021b0018 0x00091740
 wm 32 0x021b001c 0x00008000
-wm 32 0x021b000c 0x555a7975
-wm 32 0x021b0010 0xff538e64
-wm 32 0x021b0014 0x01ff00db
 wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x005b0e21
-wm 32 0x021b0008 0x09444040
-wm 32 0x021b0004 0x00025576
+wm 32 0x021b0030 0x003F1023
 
 SETUP_1GIB_2GIB_4GIB
 
@@ -66,34 +84,20 @@ wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x0408803a
 wm 32 0x021b001c 0x00008033
 wm 32 0x021b001c 0x0000803b
-wm 32 0x021b001c 0x00428031
-wm 32 0x021b001c 0x00428039
+wm 32 0x021b001c 0x00048031
+wm 32 0x021b001c 0x00048039
 wm 32 0x021b001c 0x09408030
 wm 32 0x021b001c 0x09408038
 wm 32 0x021b001c 0x04008040
 wm 32 0x021b001c 0x04008048
-wm 32 0x021b0800 0xa1380003
-wm 32 0x021b4800 0xa1380003
-wm 32 0x021b0020 0x00005800
-wm 32 0x021b0818 0x00022227
-wm 32 0x021b4818 0x00022227
-wm 32 0x021b083c 0x433c033f
-wm 32 0x021b0840 0x033e033d
-wm 32 0x021b483c 0x43490351
-wm 32 0x021b4840 0x0344032f
-wm 32 0x021b0848 0x4a434146
-wm 32 0x021b4848 0x4745434b
-wm 32 0x021b0850 0x3d3d433a
-wm 32 0x021b4850 0x48334b3e
-wm 32 0x021b080c 0x000f0011
-wm 32 0x021b0810 0x00200022
-wm 32 0x021b480c 0x0033002e
-wm 32 0x021b4810 0x003e003b
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-wm 32 0x021b001c 0x00000000
+wm 32 0x021b0020 0x00007800
+wm 32 0x021b0818 0x00011117
+wm 32 0x021b4818 0x00011117
+wm 32 0x021b0004 0x00025576
 wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
 wm 32 0x020e0010 0xf00000ff
-wm 32 0x020e0018 0x007f007f
-wm 32 0x020e001c 0x007f007f
+wm 32 0x020e0018 0x007F007F
+wm 32 0x020e001c 0x007F007F
 wm 32 0x020c8000 0x80002021
+
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index e5a7292..dfd4336 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -1,3 +1,5 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x8c929b85
 
 #define SETUP_S_DL_512MB_1GB		\
 	wm 32 0x021b0040 0x00000017;	\
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
index 0f83bc9..8fbd661 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
@@ -2,46 +2,60 @@ soc imx6
 loadaddr 0x20000000
 dcdofs 0x400
 
-wm 32 0x020e04bc 0x00000030
-wm 32 0x020e04c0 0x00000030
-wm 32 0x020e04c4 0x00000030
-wm 32 0x020e04c8 0x00000030
-wm 32 0x020e04cc 0x00000030
-wm 32 0x020e04d0 0x00000030
-wm 32 0x020e04d4 0x00000030
-wm 32 0x020e04d8 0x00000030
-wm 32 0x020e0470 0x00020030
-wm 32 0x020e0474 0x00020030
-wm 32 0x020e0478 0x00020030
-wm 32 0x020e047c 0x00020030
-wm 32 0x020e0480 0x00020030
-wm 32 0x020e0484 0x00020030
-wm 32 0x020e0488 0x00020030
-wm 32 0x020e048c 0x00020030
-wm 32 0x020e0464 0x00020030
-wm 32 0x020e0490 0x00020030
-wm 32 0x020e04ac 0x00020030
-wm 32 0x020e04b0 0x00020030
-wm 32 0x020e0494 0x00020030
+wm 32 0x020e0774 0x000C0000
+wm 32 0x020e0754 0x00000000
+wm 32 0x020e04ac 0x00000030
+wm 32 0x020e04b0 0x00000030
+wm 32 0x020e0464 0x00000030
+wm 32 0x020e0490 0x00000030
+wm 32 0x020e074c 0x00000030
+wm 32 0x020e0494 0x00000030
+wm 32 0x020e04a0 0x00000000
+wm 32 0x020e04b4 0x00000030
+wm 32 0x020e04b8 0x00000030
 wm 32 0x020e04a4 0x00003000
 wm 32 0x020e04a8 0x00003000
-wm 32 0x020e04a0 0x00000000
-wm 32 0x020e04b4 0x00003030
-wm 32 0x020e04b8 0x00003030
-wm 32 0x020e0764 0x00000030
-wm 32 0x020e0770 0x00000030
-wm 32 0x020e0778 0x00000030
-wm 32 0x020e077c 0x00000030
-wm 32 0x020e0780 0x00000030
-wm 32 0x020e0784 0x00000030
-wm 32 0x020e078c 0x00000030
-wm 32 0x020e0748 0x00000030
-wm 32 0x020e074c 0x00000030
+wm 32 0x020e076c 0x00000030
 wm 32 0x020e0750 0x00020000
-wm 32 0x020e0754 0x00000000
+wm 32 0x020e04bc 0x00000028
+wm 32 0x020e04c0 0x00000028
+wm 32 0x020e04c4 0x00000028
+wm 32 0x020e04c8 0x00000028
+wm 32 0x020e04cc 0x00000028
+wm 32 0x020e04d0 0x00000028
+wm 32 0x020e04d4 0x00000028
+wm 32 0x020e04d8 0x00000028
 wm 32 0x020e0760 0x00020000
-wm 32 0x020e076c 0x00000030
-wm 32 0x020e0774 0x000c0000
+wm 32 0x020e0764 0x00000028
+wm 32 0x020e0770 0x00000028
+wm 32 0x020e0778 0x00000028
+wm 32 0x020e077c 0x00000028
+wm 32 0x020e0780 0x00000028
+wm 32 0x020e0784 0x00000028
+wm 32 0x020e078c 0x00000028
+wm 32 0x020e0748 0x00000028
+wm 32 0x020e0470 0x00000028
+wm 32 0x020e0474 0x00000028
+wm 32 0x020e0478 0x00000028
+wm 32 0x020e047c 0x00000028
+wm 32 0x020e0480 0x00000028
+wm 32 0x020e0484 0x00000028
+wm 32 0x020e0488 0x00000028
+wm 32 0x020e048c 0x00000028
+wm 32 0x021b0800 0xa1390003
+wm 32 0x021b4800 0xa1380003
+wm 32 0x021b080c 0x00110011
+wm 32 0x021b0810 0x00240024
+wm 32 0x021b480c 0x00260038
+wm 32 0x021b4810 0x002C0038
+wm 32 0x021b083c 0x02480248
+wm 32 0x021b0840 0x022f022d
+wm 32 0x021b483c 0x02540258
+wm 32 0x021b4840 0x0236021e
+wm 32 0x021b0848 0x332f3033
+wm 32 0x021b4848 0x302d2c35
+wm 32 0x021b0850 0x3030362a
+wm 32 0x021b4850 0x3423372d
 wm 32 0x021b081c 0x33333333
 wm 32 0x021b0820 0x33333333
 wm 32 0x021b0824 0x33333333
@@ -50,15 +64,19 @@ wm 32 0x021b481c 0x33333333
 wm 32 0x021b4820 0x33333333
 wm 32 0x021b4824 0x33333333
 wm 32 0x021b4828 0x33333333
-wm 32 0x021b0018 0x00081740
+wm 32 0x021b08b8 0x00000800
+wm 32 0x021b48b8 0x00000800
+wm 32 0x021b0004 0x00025576
+wm 32 0x021b0008 0x09444040
+
+SETUP_MDCFG0
+
+wm 32 0x021b0010 0xff538f64
+wm 32 0x021b0014 0x01ff0124
+wm 32 0x021b0018 0x00091740
 wm 32 0x021b001c 0x00008000
-wm 32 0x021b000c 0x555a7975
-wm 32 0x021b0010 0xff538e64
-wm 32 0x021b0014 0x01ff00db
 wm 32 0x021b002c 0x000026d2
-wm 32 0x021b0030 0x005b0e21
-wm 32 0x021b0008 0x09444040
-wm 32 0x021b0004 0x00025576
+wm 32 0x021b0030 0x003F1023
 
 SETUP_S_DL_512MB_1GB
 
@@ -72,24 +90,9 @@ wm 32 0x021b001c 0x09408030
 wm 32 0x021b001c 0x09408038
 wm 32 0x021b001c 0x04008040
 wm 32 0x021b001c 0x04008048
-wm 32 0x021b0800 0xa1380003
-wm 32 0x021b4800 0xa1380003
-wm 32 0x021b0020 0x00005800
+wm 32 0x021b0020 0x00007800
 wm 32 0x021b0818 0x00011117
 wm 32 0x021b4818 0x00011117
-wm 32 0x021b083c 0x422D0230
-wm 32 0x021b0840 0x022F022E
-wm 32 0x021b483c 0x4237023D
-wm 32 0x021b4840 0x02340224
-wm 32 0x021b0848 0x38333135
-wm 32 0x021b4848 0x36353338
-wm 32 0x021b0850 0x2E2E332C
-wm 32 0x021b4850 0x3727382F
-wm 32 0x021b080c 0x000C000D
-wm 32 0x021b0810 0x0018001A
-wm 32 0x021b480c 0x00270023
-wm 32 0x021b4810 0x002F002D
-wm 32 0x021b08b8 0x00000800
-wm 32 0x021b48b8 0x00000800
-wm 32 0x021b001c 0x00000000
+wm 32 0x021b0004 0x00025576
 wm 32 0x021b0404 0x00011006
+wm 32 0x021b001c 0x00000000
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
index 3116e36..2e428f9 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
@@ -1,3 +1,5 @@
+#define SETUP_MDCFG0			\
+	wm 32 0x021b000c 0x565c9b85
 
 #define SETUP_S_DL_512MB_1GB		\
 	wm 32 0x021b0040 0x00000017;	\
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
