Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLC-0008QS-1U
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:50 +0000
Received: by mail-pl0-x22d.google.com with SMTP id n10-v6so5402plp.0
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:53 -0700
Message-Id: <20180612184800.4940-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/14] VFxxx: Reconcile shared DDR DCD with memory datasheet
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Some of the settings for VFxxx boards appear to be in violation of the
parameters specified by DDR chip's datasheet, so fix the code to
reconcile the differences. The changes are:

In vf610-ddr-cr-default.imxcfg:

   - CR31: t_XSDLL is 468, should be 512
   - CR161 t_ODTH8 (R & W) is 2, should be 6

In flash-header-zii-vf610-dev.imxcfg:

   - CR12: WRLAT is 5, CL is 3,should be 5 and 6
   - CR13: t_RC is 6, should be 21
   - CR14: use default, more conservative t_FAW of 20

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-zii-vf610-dev.imxcfg         |  3 -
 .../flash-header/vf610-ddr-cr-default.imxcfg  | 68 ++++++++++++++++++-
 2 files changed, 66 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 6445cbe9d..d45aa2740 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -9,9 +9,6 @@ dcdofs 0x400
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
 #include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
 
-wm 32 DDRMC_CR12 0x00000506
-wm 32 DDRMC_CR13 0x06040400
-wm 32 DDRMC_CR14 0x1006040e
 wm 32 DDRMC_CR26 0x0c300068
 wm 32 DDRMC_CR31 0x006c0200
 wm 32 DDRMC_CR49 0x00000000
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index 3563494cc..ac85bd59f 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -1,3 +1,67 @@
+/*
+
+ The following table contains DDR3 memory timing parameters derived
+ form memory module (Samsung K4B4G1646E) datasheet:
+
+| CL         |                                  6 | @400Mhz          |
+| WRLAT      |                                  5 |                  |
+| t_RC       |                                 21 |                  |
+| t_RRD      |                                  4 | [5]              |
+| t_CCD      |                                  4 |                  |
+| t_FAW      |          16(1KB page)/20(2KB page) |                  |
+| t_RP       |                                  6 |                  |
+| t_WTR      |                                  4 | [6]              |
+| t_RAS(MIN) |                                 15 |                  |
+| t_MRD      |                                  4 |                  |
+| t_RTP      |                                  4 | [1]              |
+| t_MOD      |                                 12 | [7]              |
+| t_RAS(MAX) |                              28080 | [8]              |
+| t_CKESR    |                                  4 | [9]              |
+| t_CKE      |                                  3 | [10]             |
+| t_RCD      |                                  6 |                  |
+| t_DAL      |                                 12 | [11]             |
+| t_DDLK     |                                512 |                  |
+| t_RP(AB)   |                                  6 | n/a in datasheet |
+| t_REFI     |                               3120 |                  |
+| t_RFC      | 44 @ 1Gb, 64@2Gb, 104@4Gb, 140@8Gb |                  |
+| t_XP       |                                  3 | [4]              |
+| t_XPDLL    |                                 10 | [12]             |
+| t_XS       | 48 @ 1Gb, 68@2Gb, 108@4Gb, 148@8Gb | [2]              |
+| t_XSDLL    |                                512 |                  |
+| t_CKSRX    |                                  5 | [3]              |
+| t_CKSRE    |                                  5 | [3]              |
+| MR0        |                                    |                  |
+| MR1        |                                    |                  |
+| MR2        |                                    |                  |
+| MR3        |                                    |                  |
+| t_ZQoper   |                                256 |                  |
+| t_ZQinit   |                                512 |                  |
+| t_ZQCS     |                                 64 |                  |
+| ODTL_off   |                                  3 | [14]             |
+| t_WLMRD    |                                 40 |                  |
+| t_WLDQSEN  |                                 25 |                  |
+| t_WR       |                                  6 |                  |
+| t_ODTH8(R) |                                  6 | n/a in datasheet |
+| t_ODTH8(W) |                                  6 |                  |
+
+
+[1]  t_RTP      = max(4nCK, 7.5ns) = max(10ns, 7.5ns)@400Mhz = 4nCK
+[2]  t_XS       = max(5nCK, t_RFC + 10ns)
+[3]  t_CKSRX    = t_CKSRE = max(5nCK, 10ns) = max(12.5ns, 7.5ns)@400Mhz = 5nCK
+[4]  t_XP       = max(3nCK, 7.5ns) = max(7.5ns, 7.5ns)@400Mhz = 3nCK
+[5]  t_RRD      = max(4nCK, 10ns) = max(10ns, 10ns)@400Mhz = 4nCK
+[6]  t_WTR      = max(4nCK, 7.5ns) = 4nCK (see [1] for calculation)
+[7]  t_MOD      = max(12nCK, 15ns) = max(30ns, 15ns)@400Mhz = 12nCK
+[8]  t_RAS(MAX) = 9 * t_REFI = 9 * 7.8us = 28080nCK
+[9]  t_CKESR    = t_CKE(min) + 1tCK = 4nCK
+[10] t_CKE      = max(3nCK, 7.5ns) = 3nCK (see [4])
+[11] t_DAL      = t_WR + roundup(t_RP/t_CK(AVG)) = 6nCK + 6nCK = 12nCK
+[12] t_XPDLL    = max(10nCK, 24ns) = max(25ns, 25ns)@400Mhz = 10nCK
+[13] WRLAT      = AL + CWL = 0 (not supported by controller) + 5nCK = 5nCK
+[14] ODTL_off   = WRLAT - 2 = 3nCK
+
+*/
+
 wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3
 wm 32 DDRMC_CR02 0x00000005
 wm 32 DDRMC_CR10 0x00013880
@@ -18,7 +82,7 @@ wm 32 DDRMC_CR26 0x0c30002c
 wm 32 DDRMC_CR28 0x00000000
 wm 32 DDRMC_CR29 0x00000003
 wm 32 DDRMC_CR30 0x0000000a
-wm 32 DDRMC_CR31 0x003001d4
+wm 32 DDRMC_CR31 0x00300200
 wm 32 DDRMC_CR33 0x00010000
 wm 32 DDRMC_CR34 0x00050500
 wm 32 DDRMC_CR38 0x00000000
@@ -80,4 +144,4 @@ wm 32 DDRMC_CR151 0x00000101
 wm 32 DDRMC_CR154 0x682c4000
 wm 32 DDRMC_CR155 0x00000009
 wm 32 DDRMC_CR158 0x00000006
-wm 32 DDRMC_CR161 0x00010202
\ No newline at end of file
+wm 32 DDRMC_CR161 0x00010606
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
