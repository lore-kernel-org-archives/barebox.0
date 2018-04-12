Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wx-Ux
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:09 +0200
Message-Id: <20180412073017.6750-9-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] ARM: i.MX: phyFLEX: Change Ram Timing for i.MX6
 DualLite\Solo (400 MHz)
To: Barebox List <barebox@lists.infradead.org>
Cc: michael grassmann <michael.grassmann@phytec.de>, Stefan Riedmueller <s.riedmueller@phytec.de>

From: michael grassmann <michael.grassmann@phytec.de>

The actual RAM timings in the phyFLEX BSP are generated for 528 MHz RAM clock
frequency, but the i.MX 6Solo/DualLite has only a 400 MHz RAM clock. These new
timings are accompanied by a speed increase of approx 10%.

Signed-off-by: michael grassmann <michael.grassmann@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 .../phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg      | 2 +-
 .../arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg | 2 +-
 arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h          | 2 +-
 .../phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg      | 2 +-
 .../phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg      | 2 +-
 .../phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg      | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
index 156eea971e..7b64e5d2fd 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib-1bank.imxcfg
@@ -1,5 +1,5 @@
 #define SETUP_MDCFG0                    \
-	wm 32 0x021b000c 0x565c9b85
+	wm 32 0x021b000c 0x41447525
 
 #define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000027;	\
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
index e76867004a..04c489d7e8 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl-1gib.imxcfg
@@ -1,5 +1,5 @@
 #define SETUP_MDCFG0			\
-	wm 32 0x021b000c 0x8c929b85
+	wm 32 0x021b000c 0x2d307525
 
 #define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000017;	\
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
index 405529ddf8..b0f3faa0b7 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02dl.h
@@ -74,7 +74,7 @@ wm 32 MX6_MMDC_P0_MDOTC 0x09444040
 
 SETUP_MDCFG0
 
-wm 32 MX6_MMDC_P0_MDCFG1 0xff538f64
+wm 32 MX6_MMDC_P0_MDCFG1 0xb66e8b64
 wm 32 MX6_MMDC_P0_MDCFG2 0x01ff0124
 wm 32 MX6_MMDC_P0_MDMISC 0x00091740
 wm 32 MX6_MMDC_P0_MDSCR 0x00008000
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
index 26fe2b2f7d..ebe5a968b1 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-128mb-1bank.imxcfg
@@ -1,5 +1,5 @@
 #define SETUP_MDCFG0                    \
-        wm 32 0x021b000c 0x3c409b85
+        wm 32 0x021b000c 0x2D307525
 
 #define SETUP_MDASP_MDCTL		\
         wm 32 0x021b0040 0x0000000B;    \
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
index babb0dfe24..5f1585a40b 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-256mb-1bank.imxcfg
@@ -1,5 +1,5 @@
 #define SETUP_MDCFG0                    \
-        wm 32 0x021b000c 0x3c409b85
+        wm 32 0x021b000c 0x2D307525
 
 #define SETUP_MDASP_MDCTL		\
         wm 32 0x021b0040 0x0000000F;    \
diff --git a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
index 6a46cd958f..5ff3ec69d7 100644
--- a/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
+++ b/arch/arm/boards/phytec-som-imx6/flash-header-phytec-pfla02s-512mb-1bank.imxcfg
@@ -1,5 +1,5 @@
 #define SETUP_MDCFG0			\
-	wm 32 0x021b000c 0x565c9b85
+	wm 32 0x021b000c 0x41447525
 
 #define SETUP_MDASP_MDCTL		\
 	wm 32 0x021b0040 0x00000017;	\
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
