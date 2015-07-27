Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJhPB-0005i8-TI
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 12:21:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 39F97A0041E
 for <barebox@lists.infradead.org>; Mon, 27 Jul 2015 14:22:40 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 27 Jul 2015 14:20:53 +0200
Message-Id: <1437999653-15630-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] ARM: [phyFLEX,phyCARD]-i.MX6: rename define in flash-headers
To: barebox@lists.infradead.org

The files flash-header-*.imxfg contains two defines which are use in
include files flash-header-phytec-*.h. The first define is SETUP_MDCFG0.
In the second define name some RAM size value were used, e.g.
SETUP_S_DL_512MB_1GB or SETUP_1GIB_2GIB_4GIB.

It's better to name also the second define after the register names,
here MMDC1_MDCTL and MMDC1_MDASP, because these values changes for every
RAM configurations and it's consistent with the first define.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg                    | 4 +++-
 .../phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg      | 4 +++-
 .../phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg      | 5 +++--
 arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h    | 3 ++-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg | 2 +-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg       | 2 +-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg       | 2 +-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg       | 2 +-
 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h     | 2 +-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg     | 2 +-
 arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h   | 2 +-
 .../phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg     | 2 +-
 12 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
index 481e085..62a24ed 100644
--- a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib-1bank.imxcfg
@@ -1,5 +1,7 @@
-#define SETUP_1GIB_2GIB			\
+#define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x54597955;	\
+
+#define SETUP_MDOR_MDASP_MDCTL		\
 	wm 32 0x021b0030 0x00591023;	\
 	wm 32 0x021b0040 0x00000027;	\
 	wm 32 0x021b0000 0x831a0000
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
index b21bd89..bab726d 100644
--- a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-1gib.imxcfg
@@ -1,5 +1,7 @@
-#define SETUP_1GIB_2GIB			\
+#define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3a3f7975;	\
+
+#define SETUP_MDOR_MDASP_MDCTL		\
 	wm 32 0x021b0030 0x003f1023;	\
 	wm 32 0x021b0040 0x00000017;	\
 	wm 32 0x021b0000 0xc21a0000
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
index 858b6d7..512f6cb 100644
--- a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
+++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3-2gib.imxcfg
@@ -1,6 +1,7 @@
-
-#define SETUP_1GIB_2GIB			\
+#define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x54597955;	\
+
+#define SETUP_MDOR_MDASP_MDCTL		\
 	wm 32 0x021b0030 0x00591023;	\
 	wm 32 0x021b0040 0x00000027;	\
 	wm 32 0x021b0000 0xc31a0000
diff --git a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
index aecaf16..a03b8dc 100644
--- a/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
+++ b/arch/arm/boards/phytec-phycard-imx6/flash-header-phytec-pcaaxl3.h
@@ -58,7 +58,8 @@ wm 32 0x021b002c 0x000026d2
 wm 32 0x021b0008 0x09444040
 wm 32 0x021b0004 0x00025576
 
-SETUP_1GIB_2GIB
+SETUP_MDCFG0
+SETUP_MDOR_MDASP_MDCTL
 
 wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x0408803a
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
index e414b6e..75dc982 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib-1bank.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x565c9b85
 
-#define SETUP_1GIB_2GIB_4GIB		\
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000027;	\
 	wm 32 0x021b0000 0x831a0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
index f6061f2..1f1fbe5 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x3c409b85
 
-#define SETUP_1GIB_2GIB_4GIB		\
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000017;	\
 	wm 32 0x021b0000 0xc21a0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
index 2bfa836..aa01c05 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x565c9b85
 
-#define SETUP_1GIB_2GIB_4GIB		\
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000027;	\
 	wm 32 0x021b0000 0xC31A0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
index 491f893..c8d33cf 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-4gib.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0                    \
 	wm 32 0x021b000c 0x8c929b85
 
-#define SETUP_1GIB_2GIB_4GIB             \
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000047;	\
 	wm 32 0x021b0000 0xC41A0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
index 98b3c18..93291e9 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
@@ -78,7 +78,7 @@ wm 32 0x021b001c 0x00008000
 wm 32 0x021b002c 0x000026d2
 wm 32 0x021b0030 0x003F1023
 
-SETUP_1GIB_2GIB_4GIB
+SETUP_MDASP_MDCTL
 
 wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x0408803a
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index dfd4336..e768670 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x8c929b85
 
-#define SETUP_S_DL_512MB_1GB		\
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000017;	\
 	wm 32 0x021b0000 0xc21a0000
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
index 8fbd661..337488b 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02dl.h
@@ -78,7 +78,7 @@ wm 32 0x021b001c 0x00008000
 wm 32 0x021b002c 0x000026d2
 wm 32 0x021b0030 0x003F1023
 
-SETUP_S_DL_512MB_1GB
+SETUP_MDASP_MDCTL
 
 wm 32 0x021b001c 0x04088032
 wm 32 0x021b001c 0x0408803a
diff --git a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
index 2e428f9..6a46cd9 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
+++ b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02s-512mb.imxcfg
@@ -1,7 +1,7 @@
 #define SETUP_MDCFG0			\
 	wm 32 0x021b000c 0x565c9b85
 
-#define SETUP_S_DL_512MB_1GB		\
+#define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000017;	\
 	wm 32 0x021b0000 0x83190000
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
