Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoLA-0008QM-KB
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:49 +0000
Received: by mail-pl0-x244.google.com with SMTP id z9-v6so14864185plk.11
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:51 -0700
Message-Id: <20180612184800.4940-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/14] VFxxx: Add common DCD header for common DDR
 configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A number of VFxxx boards copy DDR layout/design of vf610-twr board and
they all share DDR settings. Move those settings to a common file to
avoid code duplication.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             |  83 +-------------
 .../flash-header-zii-vf610-dev.imxcfg         | 107 ++++--------------
 .../flash-header/vf610-ddr-cr-default.imxcfg  |  85 ++++++++++++++
 .../mach-imx/include/mach/vf610-ddrmc-regs.h  |  85 ++++++++++++++
 4 files changed, 196 insertions(+), 164 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index d32896c66..553eae25d 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -7,89 +7,10 @@ dcdofs 0x400
 
 #include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
-
-wm 32 0x400ae000 0x00000600
-wm 32 0x400ae008 0x00000020
-wm 32 0x400ae028 0x00013880
-wm 32 0x400ae02c 0x00030d40
-wm 32 0x400ae030 0x0000050c
-wm 32 0x400ae034 0x15040400
-wm 32 0x400ae038 0x1406040f
-wm 32 0x400ae040 0x04040000
-wm 32 0x400ae044 0x006db00c
-wm 32 0x400ae048 0x00000403
-wm 32 0x400ae050 0x01000000
-wm 32 0x400ae054 0x00060001
-wm 32 0x400ae058 0x000c0000
-wm 32 0x400ae05c 0x03000200
-wm 32 0x400ae060 0x00000006
-wm 32 0x400ae064 0x00010000
-wm 32 0x400ae068 0x0c30002c
-wm 32 0x400ae070 0x00000000
-wm 32 0x400ae074 0x00000003
-wm 32 0x400ae078 0x0000000a
-wm 32 0x400ae07c 0x003001d4
-wm 32 0x400ae084 0x00010000
-wm 32 0x400ae088 0x00050500
-wm 32 0x400ae098 0x00000000
-wm 32 0x400ae09c 0x04001002
-wm 32 0x400ae0a4 0x00000001
-wm 32 0x400ae0c0 0x00460420
-wm 32 0x400ae108 0x01000200
-wm 32 0x400ae10c 0x00000040
-wm 32 0x400ae114 0x00000200
-wm 32 0x400ae118 0x00000040
-wm 32 0x400ae120 0x00000000
-wm 32 0x400ae124 0x0a010300
-wm 32 0x400ae128 0x01014040
-wm 32 0x400ae12c 0x01010101
-wm 32 0x400ae130 0x03030100
-wm 32 0x400ae134 0x01000101
-wm 32 0x400ae138 0x0700000c
-wm 32 0x400ae13c 0x00000000
-wm 32 0x400ae148 0x10000000
-wm 32 0x400ae15c 0x01000000
-wm 32 0x400ae160 0x00040000
-wm 32 0x400ae164 0x00000002
-wm 32 0x400ae16c 0x00020000
-wm 32 0x400ae180 0x00002819
-wm 32 0x400ae184 0x01000000
-wm 32 0x400ae188 0x00000000
-wm 32 0x400ae18c 0x00000000
-wm 32 0x400ae198 0x00010100
-wm 32 0x400ae1a4 0x00000000
-wm 32 0x400ae1a8 0x00000004
-wm 32 0x400ae1b8 0x00040000
-wm 32 0x400ae1c8 0x00000000
-wm 32 0x400ae1cc 0x00000000
-wm 32 0x400ae1d4 0x00000000
-wm 32 0x400ae1d8 0x01010000
-wm 32 0x400ae1e0 0x02020000
-wm 32 0x400ae1e4 0x00000202
-wm 32 0x400ae1e8 0x01010064
-wm 32 0x400ae1ec 0x00010101
-wm 32 0x400ae1f0 0x00000064
-wm 32 0x400ae1f8 0x00000800
-wm 32 0x400ae210 0x00000506
-wm 32 0x400ae224 0x00020000
-wm 32 0x400ae228 0x01000000
-wm 32 0x400ae22c 0x04070303
-wm 32 0x400ae230 0x00000040
-wm 32 0x400ae23c 0x06000080
-wm 32 0x400ae240 0x04070303
-wm 32 0x400ae244 0x00000040
-wm 32 0x400ae248 0x00000040
-wm 32 0x400ae24c 0x000f0000
-wm 32 0x400ae250 0x000f0000
-wm 32 0x400ae25c 0x00000101
-wm 32 0x400ae268 0x682c4000
-wm 32 0x400ae26c 0x00000012
-wm 32 0x400ae278 0x00000006
-wm 32 0x400ae284 0x00010202
-
+#include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
 #include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
 
-wm 32 0x400ae000 0x00000601
+wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
 check 32 until_any_bit_set 0x400ae140 0x100
 
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index 2086ae85d..7bb7e8ac6 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -7,92 +7,33 @@ dcdofs 0x400
 
 #include <mach/flash-header/vf610-ddr-pll2-400mhz.imxcfg>
 #include <mach/flash-header/vf610-iomux-ddr-default.imxcfg>
-
-wm 32 0x400ae000 0x00000600
-wm 32 0x400ae008 0x00000005
-wm 32 0x400ae028 0x00013880
-wm 32 0x400ae02c 0x00030d40
-wm 32 0x400ae030 0x00000506
-wm 32 0x400ae034 0x06040400
-wm 32 0x400ae038 0x1006040e
-wm 32 0x400ae040 0x04040000
-wm 32 0x400ae044 0x006db00c
-wm 32 0x400ae048 0x00000403
-wm 32 0x400ae050 0x01000000
-wm 32 0x400ae054 0x00060001
-wm 32 0x400ae058 0x000c0000
-wm 32 0x400ae05c 0x03000200
-wm 32 0x400ae060 0x00000006
-wm 32 0x400ae064 0x00010000
-wm 32 0x400ae068 0x0c300068
-wm 32 0x400ae070 0x00000000
-wm 32 0x400ae074 0x00000003
-wm 32 0x400ae078 0x0000000a
-wm 32 0x400ae07c 0x006c0200
-wm 32 0x400ae084 0x00010000
-wm 32 0x400ae088 0x00050500
-wm 32 0x400ae098 0x00000000
-wm 32 0x400ae09c 0x04001002
-wm 32 0x400ae0a4 0x00000001
-wm 32 0x400ae0c0 0x00460420
-wm 32 0x400ae0c4 0x00000000
-wm 32 0x400ae0cc 0x00000000
-wm 32 0x400ae0e4 0x02000000
-wm 32 0x400ae108 0x01000200
-wm 32 0x400ae10c 0x00000040
-wm 32 0x400ae114 0x00000200
-wm 32 0x400ae118 0x00000040
-wm 32 0x400ae120 0x00000000
-wm 32 0x400ae124 0x0a010100
-wm 32 0x400ae128 0x01014040
-wm 32 0x400ae12c 0x01010101
-wm 32 0x400ae130 0x03030000
-wm 32 0x400ae134 0x01000101
-wm 32 0x400ae138 0x0700000c
-wm 32 0x400ae13c 0x00000000
-wm 32 0x400ae148 0x10000000
-wm 32 0x400ae15c 0x01000000
-wm 32 0x400ae160 0x00040000
-wm 32 0x400ae164 0x00000002
-wm 32 0x400ae16c 0x00020000
-wm 32 0x400ae180 0x00002819
-wm 32 0x400ae184 0x01000000
-wm 32 0x400ae188 0x00000000
-wm 32 0x400ae18c 0x00000000
-wm 32 0x400ae198 0x00000000
-wm 32 0x400ae1a4 0x00000c00
-wm 32 0x400ae1a8 0x00000000
-wm 32 0x400ae1b8 0x0000000c
-wm 32 0x400ae1c8 0x00000000
-wm 32 0x400ae1cc 0x00000000
-wm 32 0x400ae1d4 0x00000000
-wm 32 0x400ae1d8 0x01010000
-wm 32 0x400ae1e0 0x02020000
-wm 32 0x400ae1e4 0x00000202
-wm 32 0x400ae1e8 0x01010064
-wm 32 0x400ae1ec 0x00010101
-wm 32 0x400ae1f0 0x00000064
-wm 32 0x400ae1f8 0x00000800
-wm 32 0x400ae210 0x00000506
-wm 32 0x400ae224 0x00020000
-wm 32 0x400ae228 0x01000000
-wm 32 0x400ae22c 0x04070303
-wm 32 0x400ae230 0x00000040
-wm 32 0x400ae23c 0x06000080
-wm 32 0x400ae240 0x04070303
-wm 32 0x400ae244 0x00000040
-wm 32 0x400ae248 0x00000040
-wm 32 0x400ae24c 0x000f0000
-wm 32 0x400ae250 0x000f0000
-wm 32 0x400ae25c 0x00000101
-wm 32 0x400ae268 0x682c4000
-wm 32 0x400ae26c 0x00000012
-wm 32 0x400ae278 0x00000006
-wm 32 0x400ae284 0x00010202
+#include <mach/flash-header/vf610-ddr-cr-default.imxcfg>
+
+wm 32 DDRMC_CR02 0x00000005
+wm 32 DDRMC_CR12 0x00000506
+wm 32 DDRMC_CR13 0x06040400
+wm 32 DDRMC_CR14 0x1006040e
+wm 32 DDRMC_CR26 0x0c300068
+wm 32 DDRMC_CR31 0x006c0200
+wm 32 DDRMC_CR49 0x00000000
+wm 32 DDRMC_CR51 0x00000000
+wm 32 DDRMC_CR57 0x02000000
+wm 32 DDRMC_CR73 0x0a010100
+wm 32 DDRMC_CR76 0x03030000
+wm 32 DDRMC_CR102 0x00000000
+wm 32 DDRMC_CR105 0x00000c00
+wm 32 DDRMC_CR106 0x00000000
+wm 32 DDRMC_CR110 0x0000000c
+
+/*
+ * zii-vf610-dev derivatives come with 512MiB of RAM, so we need to
+ * adjust, DDR chip's capacity.
+ */
+wm 32 DDRMC_CR73 0x0a010100
 
 #include <mach/flash-header/vf610-ddr-phy-default.imxcfg>
 
-wm 32 0x400ae000 0x00000601
+wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3_START
 
 check 32 until_any_bit_set 0x400ae140 0x100
 
diff --git a/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
new file mode 100644
index 000000000..e64f4838e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/flash-header/vf610-ddr-cr-default.imxcfg
@@ -0,0 +1,85 @@
+wm 32 DDRMC_CR00 DDRMC_CR00_DRAM_CLASS_DDR3
+wm 32 DDRMC_CR02 0x00000020
+wm 32 DDRMC_CR10 0x00013880
+wm 32 DDRMC_CR11 0x00030d40
+wm 32 DDRMC_CR12 0x0000050c
+wm 32 DDRMC_CR13 0x15040400
+wm 32 DDRMC_CR14 0x1406040f
+wm 32 DDRMC_CR16 0x04040000
+wm 32 DDRMC_CR17 0x006db00c
+wm 32 DDRMC_CR18 0x00000403
+wm 32 DDRMC_CR20 0x01000000
+wm 32 DDRMC_CR21 0x00060001
+wm 32 DDRMC_CR22 0x000c0000
+wm 32 DDRMC_CR23 0x03000200
+wm 32 DDRMC_CR24 0x00000006
+wm 32 DDRMC_CR25 0x00010000
+wm 32 DDRMC_CR26 0x0c30002c
+wm 32 DDRMC_CR28 0x00000000
+wm 32 DDRMC_CR29 0x00000003
+wm 32 DDRMC_CR30 0x0000000a
+wm 32 DDRMC_CR31 0x003001d4
+wm 32 DDRMC_CR33 0x00010000
+wm 32 DDRMC_CR34 0x00050500
+wm 32 DDRMC_CR38 0x00000000
+wm 32 DDRMC_CR39 0x04001002
+wm 32 DDRMC_CR41 0x00000001
+wm 32 DDRMC_CR48 0x00460420
+wm 32 DDRMC_CR66 0x01000200
+wm 32 DDRMC_CR67 0x00000040
+wm 32 DDRMC_CR69 0x00000200
+wm 32 DDRMC_CR70 0x00000040
+wm 32 DDRMC_CR72 0x00000000
+wm 32 DDRMC_CR73 0x0a010300
+wm 32 DDRMC_CR74 0x01014040
+wm 32 DDRMC_CR75 0x01010101
+wm 32 DDRMC_CR76 0x03030100
+wm 32 DDRMC_CR77 0x01000101
+wm 32 DDRMC_CR78 0x0700000c
+wm 32 DDRMC_CR79 0x00000000
+wm 32 DDRMC_CR82 0x10000000
+wm 32 DDRMC_CR87 0x01000000
+wm 32 DDRMC_CR88 0x00040000
+wm 32 DDRMC_CR89 0x00000002
+wm 32 DDRMC_CR91 0x00020000
+wm 32 DDRMC_CR96 0x00002819
+wm 32 DDRMC_CR97 0x01000000
+wm 32 DDRMC_CR98 0x00000000
+wm 32 DDRMC_CR99 0x00000000
+wm 32 DDRMC_CR102 0x00010100
+wm 32 DDRMC_CR105 0x00000000
+wm 32 DDRMC_CR106 0x00000004
+wm 32 DDRMC_CR110 0x00040000
+wm 32 DDRMC_CR114 0x00000000
+wm 32 DDRMC_CR115 0x00000000
+wm 32 DDRMC_CR117 0x00000000
+wm 32 DDRMC_CR118 0x01010000
+wm 32 DDRMC_CR120 0x02020000
+wm 32 DDRMC_CR121 0x00000202
+wm 32 DDRMC_CR122 0x01010064
+wm 32 DDRMC_CR123 0x00010101
+wm 32 DDRMC_CR124 0x00000064
+wm 32 DDRMC_CR126 0x00000800
+/*
+ * Despite the RM insisting on setting RDLAT_ADJ to CASLAT_LIN - 1 in
+ * two places: p 1459 (section 10.1.5.133 "Control Register 132
+ * (DDRMC_CR132)") and p. 1587 (section 10.1.6.15.10 "Configure the
+ * 'output enable' of I/O Control") changing it from current 6 to
+ * recommended 5 results in non-working DDR.
+ */
+wm 32 DDRMC_CR132 0x00000506
+wm 32 DDRMC_CR137 0x00020000
+wm 32 DDRMC_CR138 0x01000000
+wm 32 DDRMC_CR139 0x04070303
+wm 32 DDRMC_CR140 0x00000040
+wm 32 DDRMC_CR143 0x06000080
+wm 32 DDRMC_CR144 0x04070303
+wm 32 DDRMC_CR145 0x00000040
+wm 32 DDRMC_CR146 0x00000040
+wm 32 DDRMC_CR147 0x000f0000
+wm 32 DDRMC_CR148 0x000f0000
+wm 32 DDRMC_CR151 0x00000101
+wm 32 DDRMC_CR154 0x682c4000
+wm 32 DDRMC_CR155 0x00000012
+wm 32 DDRMC_CR158 0x00000006
+wm 32 DDRMC_CR161 0x00010202
\ No newline at end of file
diff --git a/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h b/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
index ac2e4a4f4..33c1aaddf 100644
--- a/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
+++ b/arch/arm/mach-imx/include/mach/vf610-ddrmc-regs.h
@@ -5,6 +5,91 @@
  * Copyright (C) 2018 Zodiac Inflight Innovations
  */
 
+#define DDRMC_CR00	0x400ae000
+#define DDRMC_CR02	0x400ae008
+#define DDRMC_CR10	0x400ae028
+#define DDRMC_CR11	0x400ae02c
+#define DDRMC_CR12	0x400ae030
+#define DDRMC_CR13	0x400ae034
+#define DDRMC_CR14	0x400ae038
+#define DDRMC_CR16	0x400ae040
+#define DDRMC_CR17	0x400ae044
+#define DDRMC_CR18	0x400ae048
+#define DDRMC_CR20	0x400ae050
+#define DDRMC_CR21	0x400ae054
+#define DDRMC_CR22	0x400ae058
+#define DDRMC_CR23	0x400ae05c
+#define DDRMC_CR24	0x400ae060
+#define DDRMC_CR25	0x400ae064
+#define DDRMC_CR26	0x400ae068
+#define DDRMC_CR28	0x400ae070
+#define DDRMC_CR29	0x400ae074
+#define DDRMC_CR30	0x400ae078
+#define DDRMC_CR31	0x400ae07c
+#define DDRMC_CR33	0x400ae084
+#define DDRMC_CR34	0x400ae088
+#define DDRMC_CR38	0x400ae098
+#define DDRMC_CR39	0x400ae09c
+#define DDRMC_CR41	0x400ae0a4
+#define DDRMC_CR48	0x400ae0c0
+#define DDRMC_CR49	0x400ae0c4
+#define DDRMC_CR51	0x400ae0cc
+#define DDRMC_CR57	0x400ae0e4
+#define DDRMC_CR66	0x400ae108
+#define DDRMC_CR67	0x400ae10c
+#define DDRMC_CR69	0x400ae114
+#define DDRMC_CR70	0x400ae118
+#define DDRMC_CR72	0x400ae120
+#define DDRMC_CR73	0x400ae124
+#define DDRMC_CR74	0x400ae128
+#define DDRMC_CR75	0x400ae12c
+#define DDRMC_CR76	0x400ae130
+#define DDRMC_CR77	0x400ae134
+#define DDRMC_CR78	0x400ae138
+#define DDRMC_CR79	0x400ae13c
+#define DDRMC_CR82	0x400ae148
+#define DDRMC_CR87	0x400ae15c
+#define DDRMC_CR88	0x400ae160
+#define DDRMC_CR89	0x400ae164
+#define DDRMC_CR91	0x400ae16c
+#define DDRMC_CR96	0x400ae180
+#define DDRMC_CR97	0x400ae184
+#define DDRMC_CR98	0x400ae188
+#define DDRMC_CR99	0x400ae18c
+#define DDRMC_CR102	0x400ae198
+#define DDRMC_CR105	0x400ae1a4
+#define DDRMC_CR106	0x400ae1a8
+#define DDRMC_CR110	0x400ae1b8
+#define DDRMC_CR114	0x400ae1c8
+#define DDRMC_CR115	0x400ae1cc
+#define DDRMC_CR117	0x400ae1d4
+#define DDRMC_CR118	0x400ae1d8
+#define DDRMC_CR120	0x400ae1e0
+#define DDRMC_CR121	0x400ae1e4
+#define DDRMC_CR122	0x400ae1e8
+#define DDRMC_CR123	0x400ae1ec
+#define DDRMC_CR124	0x400ae1f0
+#define DDRMC_CR126	0x400ae1f8
+#define DDRMC_CR132	0x400ae210
+#define DDRMC_CR137	0x400ae224
+#define DDRMC_CR138	0x400ae228
+#define DDRMC_CR139	0x400ae22c
+#define DDRMC_CR140	0x400ae230
+#define DDRMC_CR143	0x400ae23c
+#define DDRMC_CR144	0x400ae240
+#define DDRMC_CR145	0x400ae244
+#define DDRMC_CR146	0x400ae248
+#define DDRMC_CR147	0x400ae24c
+#define DDRMC_CR148	0x400ae250
+#define DDRMC_CR151	0x400ae25c
+#define DDRMC_CR154	0x400ae268
+#define DDRMC_CR155	0x400ae26c
+#define DDRMC_CR158	0x400ae278
+#define DDRMC_CR161	0x400ae284
+
+#define DDRMC_CR00_DRAM_CLASS_DDR3		0x00000600
+#define DDRMC_CR00_DRAM_CLASS_DDR3_START	0x00000601
+
 #define DDRMC_PHY00 0x400ae400
 #define DDRMC_PHY01 0x400ae404
 #define DDRMC_PHY02 0x400ae408
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
