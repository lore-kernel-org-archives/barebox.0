Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLI-0008TD-Fj
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:49:03 +0000
Received: by mail-pl0-x243.google.com with SMTP id n10-v6so5602plp.0
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:48:00 -0700
Message-Id: <20180612184800.4940-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/14] VFxxx: DCD: Remove read leveling and gate training
 delays
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Read leveling delays are being specified as zero, so they are as good
as disabled and can be safely dropped.

Gate training delay is specified as 4/128 tCK for both data
slices. This setting, when applied to Data Byte 1, makes that slice
unusable* during POR startup which is somehow is mitigated by
double-reset hack in DCD.

Dropping gate training delays allows both VF610 Tower board and ZII
VF610 Dev board to sucessfully PoR-boot without the need for double
resetting of the DDRMC.

* The board fails to boot. When examined via JTAG in such a state
  only even bytes of DDR memory are functional.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             | 32 -------------------
 .../flash-header-zii-vf610-dev.imxcfg         |  9 ------
 .../flash-header/vf610-ddr-cr-default.imxcfg  |  4 ---
 3 files changed, 45 deletions(-)

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 553eae25d..71150802b 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -13,35 +13,3 @@ dcdofs 0x400
 wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
 check 32 until_any_bit_set 0x400ae140 0x100
-
-/*
- * Cargo cult DDR controller initialization here we come!
- *
- * Experemintation with VF610 Tower Board shows that without the
- * following code the board would not boot off of SD card when
- * power-cycled. It will however happily boot when reset via SW3/Reset
- * button. For whatever reason the following actions appear to be
- * necessary:
- *
- *          - Initialize DDRMC as usual
- *	    - Issue a read to location in DDR address space
- *	    - Disable DDRMC
- *	    - Enable DDRMC and wait for it to finish initializing
- *
- * I am sure this is all going to be extrememly embarrassing to read
- * if/when the real problem and real solution is found.
- */
-
-/*
- * Because there's no standalone read command what we do here instead
- * is write a pattern to memory and then checking that memory address
- * against that pattern
- */
-wm 32 0x80000000 0xa5a5a5a5
-check 32 until_any_bit_set 0x80000000 0xa5a5a5a5
-
-wm 32 0x400ae000 0x00000600
-wm 32 0x400ae000 0x00000601
-
-check 32 until_any_bit_set 0x400ae140 0x100
-
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index e03bd9b74..7076a6431 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -25,13 +25,4 @@ wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
 check 32 until_any_bit_set 0x400ae140 0x100
 
-wm 32 0x80000000 0xa5a5a5a5
-check 32 until_any_bit_set 0x80000000 0xa5a5a5a5
-
-wm 32 0x400ae000 0x00000600
-wm 32 0x400ae000 0x00000601
-
-check 32 until_any_bit_set 0x400ae140 0x100
-
-
 
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
index 956cc5c58..8c411ddc7 100644
--- a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -107,10 +107,6 @@ wm 32 DDRMC_CR88 0x00040000
 wm 32 DDRMC_CR89 0x00000002
 wm 32 DDRMC_CR91 0x00020000
 wm 32 DDRMC_CR96 0x00002819
-wm 32 DDRMC_CR102 0x00010100
-wm 32 DDRMC_CR105 0x00000000
-wm 32 DDRMC_CR106 0x00000004
-wm 32 DDRMC_CR110 0x00040000
 wm 32 DDRMC_CR117 0x00000000
 wm 32 DDRMC_CR118 0x01010000
 wm 32 DDRMC_CR120 0x02020000
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
