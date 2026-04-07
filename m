Delivery-date: Tue, 07 Apr 2026 13:02:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA4CH-009XMy-1a
	for lore@lore.pengutronix.de;
	Tue, 07 Apr 2026 13:02:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wA4CF-0004FC-U0
	for lore@pengutronix.de; Tue, 07 Apr 2026 13:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o93WxfLGWmXyGiQdzftEmJi7kCRhGydeEcztYxkID1I=; b=eI4/S+p/fM9j9miZBOKOIJfdwR
	HLIkC9cGOMx3fALQVi295RnVSmPHllBD7FZFB1RyJX7+Lwf0uyeIWEZMkHOvF/826uNcSSKCIa1Oc
	XPOrLDcCXVmwYrJJZFCBjOGxw6P7T4RdlK06FKub3RXYGS6dwR6DK0iOZgA62ttmOoewdDdj0Vc9T
	Pv7XTG/SBvoULKcntnJ4zLpOfgUdlM839+tPzNvyT8W+nBTPnhwA/+TgA9VihsrWU/aIfMxQ0aPw0
	+jheXw7omROrN0/M/8oJURx20aCouAfSgM7BQQwdoiaBMx4tK7idcmsXab+fCfrUTN9lDFrhb1xUl
	pZhFwnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4BS-00000006LiH-3oRB;
	Tue, 07 Apr 2026 11:01:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4BO-00000006Lhh-3SG3
	for barebox@lists.infradead.org;
	Tue, 07 Apr 2026 11:01:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wA4BM-000466-Lv; Tue, 07 Apr 2026 13:01:20 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 07 Apr 2026 13:01:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260407-v2026-03-1-topic-arkona-at300-v1-1-e06b73050326@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPzj1GkC/yXMTQqDMBBA4avIrB2Y+FPRq0gXMY7tVEgkSUUQ7
 27U3fs2b4fAXjhAl+3geZUgziaoPAPz1fbDKGMyFFS8qKIG16uQSlQY3SIGtZ+d1ahjSYSKh6q
 tR1VPTQvpsXieZLv//ftx+A8/NvGawnGc0S9W34EAAAA=
X-Change-ID: 20260407-v2026-03-1-topic-arkona-at300-1eb495d15f79
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_040123_193304_FA597EAD 
X-CRM114-Status: GOOD (  16.91  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: tqmls1046a: Add Arkona AT300 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

The Arkona AT300 is a variant of the Layerscape 1046a-based tqmls1046a
system-on-module.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/Makefile             |   2 +
 arch/arm/boards/tqmls1046a/arkona_at300_rcw.cfg |  86 ++++++
 arch/arm/boards/tqmls1046a/board.c              |   6 +-
 arch/arm/boards/tqmls1046a/lowlevel.c           |  23 +-
 arch/arm/boards/tqmls1046a/rcwtool-at300.c      | 221 ++++++++++++++++
 arch/arm/boards/tqmls1046a/start.S              |  13 +
 arch/arm/dts/Makefile                           |   1 +
 arch/arm/dts/fsl-tqmls1046a-arkona-at300.dts    | 338 ++++++++++++++++++++++++
 images/Makefile.layerscape                      |  14 +-
 9 files changed, 696 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/Makefile b/arch/arm/boards/tqmls1046a/Makefile
index 4af7fc3602..d9c835b4a4 100644
--- a/arch/arm/boards/tqmls1046a/Makefile
+++ b/arch/arm/boards/tqmls1046a/Makefile
@@ -3,3 +3,5 @@
 lwl-y += lowlevel.o start.o
 obj-y += board.o
 bbenv-y += defaultenv-tqmls1046a
+
+hostprogs-always-$(CONFIG_MACH_TQMLS1046A) += rcwtool-at300
diff --git a/arch/arm/boards/tqmls1046a/arkona_at300_rcw.cfg b/arch/arm/boards/tqmls1046a/arkona_at300_rcw.cfg
new file mode 100644
index 0000000000..564b7c1b39
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/arkona_at300_rcw.cfg
@@ -0,0 +1,86 @@
+# RCW values:
+
+# (  0:  1) SYS_PLL_CFG                 : 0x0
+# (  2:  6) SYS_PLL_RAT                 : 0x6
+# (  8:  9) MEM_PLL_CFG                 : 0x0
+# ( 10: 15) MEM_PLL_RAT                 : 0x14
+# ( 24: 25) CGA_PLL1_CFG                : 0x0
+# ( 26: 31) CGA_PLL1_RAT                : 0x10
+# ( 32: 33) CGA_PLL2_CFG                : 0x0
+# ( 34: 39) CGA_PLL2_RAT                : 0xe
+# ( 96: 99) C1_PLL_SEL                  : 0x0
+# (128:143) SRDS_PRTCL_S1               : 0x1133
+# (144:159) SRDS_PRTCL_S2               : 0x8888
+# (160:160) SRDS_PLL_REF_CLK_SEL_S1_PLL1: 0x0
+# (161:161) SRDS_PLL_REF_CLK_SEL_S1_PLL2: 0x1
+# (162:162) SRDS_PLL_REF_CLK_SEL_S2_PLL1: 0x0
+# (163:163) SRDS_PLL_REF_CLK_SEL_S2_PLL2: 0x0
+# (168:169) SRDS_PLL_PD_S1              : 0x0
+# (170:171) SRDS_PLL_PD_S2              : 0x0
+# (176:177) SRDS_DIV_PEX_S1             : 0x0
+# (178:179) SRDS_DIV_PEX_S2             : 0x0
+# (186:187) DDR_REFCLK_SEL              : 0x0
+# (188:188) SRDS_REFCLK_SEL_S1          : 0x0
+# (189:189) SRDS_REFCLK_SEL_S2          : 0x1
+# (190:191) DDR_FDBK_MULT               : 0x2
+# (192:195) PBI_SRC                     : 0x4
+# (201:201) BOOT_HO                     : 0x0
+# (202:202) SB_EN                       : 0x0
+# (203:211) IFC_MODE                    : 0x25
+# (224:226) HWA_CGA_M1_CLK_SEL          : 0x6
+# (230:231) DRAM_LAT                    : 0x1
+# (232:232) DDR_RATE                    : 0x0
+# (234:234) DDR_RSV0                    : 0x0
+# (242:242) SYS_PLL_SPD                 : 0x0
+# (243:243) MEM_PLL_SPD                 : 0x0
+# (244:244) CGA_PLL1_SPD                : 0x0
+# (245:245) CGA_PLL2_SPD                : 0x0
+# (264:266) HOST_AGT_PEX                : 0x0
+# (288:295) GP_INFO1                    : 0x0
+# (299:319) GP_INFO2                    : 0x0
+# (354:356) UART_EXT                    : 0x0
+# (357:359) IRQ_EXT                     : 0x0
+# (360:362) SPI_EXT                     : 0x0
+# (363:365) SDHC_EXT                    : 0x0
+# (366:368) UART_BASE                   : 0x6
+# (369:369) ASLEEP                      : 0x1
+# (370:370) RTC                         : 0x1
+# (371:371) SDHC_BASE                   : 0x0
+# (372:372) IRQ_OUT                     : 0x1
+# (373:381) IRQ_BASE                    : 0x1fe
+# (382:383) SPI_BASE                    : 0x0
+# (384:386) IFC_GRP_A_EXT               : 0x1
+# (393:395) IFC_GRP_D_EXT               : 0x0
+# (396:398) IFC_GRP_E1_EXT              : 0x0
+# (399:401) IFC_GRP_F_EXT               : 0x1
+# (405:405) IFC_GRP_E1_BASE             : 0x1
+# (407:407) IFC_GRP_D_BASE              : 0x1
+# (412:413) IFC_GRP_A_BASE              : 0x1
+# (415:415) IFC_A_22_24                 : 0x0
+# (416:418) EC1                         : 0x1
+# (419:421) EC2                         : 0x1
+# (422:423) LVDD_VSEL                   : 0x0
+# (424:424) I2C_IPGCLK_SEL              : 0x0
+# (425:425) EM1                         : 0x1
+# (426:426) EM2                         : 0x1
+# (427:427) EMI2_DMODE                  : 0x1
+# (428:428) EMI2_CMODE                  : 0x1
+# (429:429) USB_DRVVBUS                 : 0x0
+# (430:430) USB_PWRFAULT                : 0x0
+# (433:434) TVDD_VSEL                   : 0x0
+# (435:436) DVDD_VSEL                   : 0x0
+# (438:438) EMI1_DMODE                  : 0x1
+# (439:440) EVDD_VSEL                   : 0x0
+# (441:443) IIC2_BASE                   : 0x0
+# (444:444) EMI1_CMODE                  : 0x1
+# (445:447) IIC2_EXT                    : 0x0
+# (472:481) SYSCLK_FREQ                 : 0x258
+# (509:511) HWA_CGA_M2_CLK_SEL          : 0x1
+
+# PBL preamble and RCW header
+aa55aa55 01ee0100
+# RCW
+0c140010 0e000000 00000000 00000000
+11338888 40000006 40025000 c1000000
+00000000 00000000 00000000 00036ff8
+20004504 24780208 00000096 00000001
diff --git a/arch/arm/boards/tqmls1046a/board.c b/arch/arm/boards/tqmls1046a/board.c
index bce1838dbc..3c09bcdbf7 100644
--- a/arch/arm/boards/tqmls1046a/board.c
+++ b/arch/arm/boards/tqmls1046a/board.c
@@ -81,7 +81,11 @@ static int tqmls1046a_postcore_init(void)
 	}
 
 	ls1046a_bbu_mmc_register_handler("sd", "/dev/mmc0.barebox", sd_bbu_flags);
-	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox", qspi_bbu_flags);
+	ls1046a_bbu_qspi_register_handler("qspi", "/dev/qspiflash0.barebox",
+					  qspi_bbu_flags);
+	ls1046a_bbu_qspi_register_handler("qspi-alternate",
+					  "/dev/qspiflash1.barebox-alternate",
+					  0);
 
 	return 0;
 }
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index e139fe19a1..9a75b1f295 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -284,7 +284,7 @@ static int tqmls1046a_get_variant(void)
 
 	pr_debug("Board Variant: %s\n", buf);
 
-	if (!strcmp(buf, "TQMLS1046A-CA.0202")) {
+	if (!strcmp(buf, "TQMLS1046A-CA.0202") || !strcmp(buf, "TQMLS1046A-CA.0203")) {
 		variant = TQ_VARIANT_TQMLS1046A_CA;
 		goto out;
 	}
@@ -327,15 +327,14 @@ static struct dram_regions_info dram_info_8g = {
 
 extern char __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start[];
 
-static noinline __noreturn void tqmls1046a_r_entry(bool is_8g)
+static noinline __noreturn void tqmls1046a_r_entry(void *boarddata, bool is_8g)
 {
 	unsigned long membase = LS1046A_DDR_SDRAM_BASE;
 	int board_variant = 0;
 	struct dram_regions_info *dram_info;
 
 	if (get_pc() >= membase)
-		barebox_arm_entry(membase, 0x80000000 - SZ_128M,
-				  __dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start);
+		barebox_arm_entry(membase, 0x80000000 - SZ_128M, boarddata);
 
 	arm_cpu_lowlevel_init();
 	ls1046a_init_lowlevel();
@@ -373,7 +372,7 @@ __noreturn void tqmls1046a_entry(void)
 	relocate_to_current_adr();
 	setup_c();
 
-	tqmls1046a_r_entry(false);
+	tqmls1046a_r_entry(__dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start, false);
 }
 
 void tqmls1046a_8g_entry(void);
@@ -383,5 +382,17 @@ __noreturn void tqmls1046a_8g_entry(void)
 	relocate_to_current_adr();
 	setup_c();
 
-	tqmls1046a_r_entry(true);
+	tqmls1046a_r_entry(__dtb_z_fsl_ls1046a_tqmls1046a_mbls10xxa_start, true);
+}
+
+extern char __dtb_z_fsl_tqmls1046a_arkona_at300_start[];
+
+void arkona_at300_entry(void);
+
+__noreturn void arkona_at300_entry(void)
+{
+	relocate_to_current_adr();
+	setup_c();
+
+	tqmls1046a_r_entry(__dtb_z_fsl_tqmls1046a_arkona_at300_start, true);
 }
diff --git a/arch/arm/boards/tqmls1046a/rcwtool-at300.c b/arch/arm/boards/tqmls1046a/rcwtool-at300.c
new file mode 100644
index 0000000000..a68023b612
--- /dev/null
+++ b/arch/arm/boards/tqmls1046a/rcwtool-at300.c
@@ -0,0 +1,221 @@
+
+#include <stdio.h>
+#include <stdint.h>
+
+#define BITS_PER_LONG	(sizeof(uint32_t) * 8)
+#define BIT_MASK(nr)	(1UL << (31 - ((nr) % BITS_PER_LONG)))
+#define BIT_WORD(nr)	((nr) / BITS_PER_LONG)
+
+static void set_bit(int nr, uint32_t *addr)
+{
+	uint32_t mask = BIT_MASK(nr);
+	uint32_t *p = ((uint32_t *)addr) + BIT_WORD(nr);
+
+	*p  |= mask;
+}
+
+static void clear_bit(int nr, uint32_t *addr)
+{
+	uint32_t mask = BIT_MASK(nr);
+	uint32_t *p = ((uint32_t *)addr) + BIT_WORD(nr);
+
+	*p &= ~mask;
+}
+
+static uint32_t rcw[16];
+
+static void set_val(const char *name, int start, int end, int val)
+{
+	int i;
+	int width = end - start + 1;
+	uint32_t *addr = rcw;
+
+	printf("# (%3d:%3d) %s: 0x%x\n", start, end, name, val);
+
+	for (i = 0; i < width; i++) {
+		if (val & (1 << ((width - 1) - i)))
+			set_bit(i + start, addr);
+		else
+			clear_bit(i + start, addr);
+	}
+}
+
+static void print_rcw(uint32_t *rcw)
+{
+	int i;
+
+	printf("\n");
+	printf("# PBL preamble and RCW header\n");
+	printf("aa55aa55 01ee0100\n");
+	printf("# RCW\n");
+
+	for (i = 0; i < 16; i++) {
+		printf("%08x ", rcw[i]);
+		if (!((i + 1) % 4))
+			printf("\n");
+	}
+}
+
+#define SYS_PLL_CFG                  "SYS_PLL_CFG                 ",   0,  1
+#define SYS_PLL_RAT                  "SYS_PLL_RAT                 ",   2,  6
+#define MEM_PLL_CFG                  "MEM_PLL_CFG                 ",   8,  9
+#define MEM_PLL_RAT                  "MEM_PLL_RAT                 ",  10, 15
+#define CGA_PLL1_CFG                 "CGA_PLL1_CFG                ",  24, 25
+#define CGA_PLL1_RAT                 "CGA_PLL1_RAT                ",  26, 31
+#define CGA_PLL2_CFG                 "CGA_PLL2_CFG                ",  32, 33
+#define CGA_PLL2_RAT                 "CGA_PLL2_RAT                ",  34, 39
+#define C1_PLL_SEL                   "C1_PLL_SEL                  ",  96, 99
+#define SRDS_PRTCL_S1                "SRDS_PRTCL_S1               ", 128,143
+#define SRDS_PRTCL_S2                "SRDS_PRTCL_S2               ", 144,159
+#define SRDS_PLL_REF_CLK_SEL_S1_PLL1 "SRDS_PLL_REF_CLK_SEL_S1_PLL1", 160,160
+#define SRDS_PLL_REF_CLK_SEL_S1_PLL2 "SRDS_PLL_REF_CLK_SEL_S1_PLL2", 161,161
+#define SRDS_PLL_REF_CLK_SEL_S2_PLL1 "SRDS_PLL_REF_CLK_SEL_S2_PLL1", 162,162
+#define SRDS_PLL_REF_CLK_SEL_S2_PLL2 "SRDS_PLL_REF_CLK_SEL_S2_PLL2", 163,163
+#define SRDS_PLL_PD_S1               "SRDS_PLL_PD_S1              ", 168,169
+#define SRDS_PLL_PD_S2               "SRDS_PLL_PD_S2              ", 170,171
+#define SRDS_DIV_PEX_S1              "SRDS_DIV_PEX_S1             ", 176,177
+#define SRDS_DIV_PEX_S2              "SRDS_DIV_PEX_S2             ", 178,179
+#define DDR_REFCLK_SEL               "DDR_REFCLK_SEL              ", 186,187
+#define SRDS_REFCLK_SEL_S1           "SRDS_REFCLK_SEL_S1          ", 188,188
+#define SRDS_REFCLK_SEL_S2           "SRDS_REFCLK_SEL_S2          ", 189,189
+#define DDR_FDBK_MULT                "DDR_FDBK_MULT               ", 190,191
+#define PBI_SRC                      "PBI_SRC                     ", 192,195
+#define BOOT_HO                      "BOOT_HO                     ", 201,201
+#define SB_EN                        "SB_EN                       ", 202,202
+#define IFC_MODE                     "IFC_MODE                    ", 203,211
+#define HWA_CGA_M1_CLK_SEL           "HWA_CGA_M1_CLK_SEL          ", 224,226
+#define DRAM_LAT                     "DRAM_LAT                    ", 230,231
+#define DDR_RATE                     "DDR_RATE                    ", 232,232
+#define DDR_RSV0                     "DDR_RSV0                    ", 234,234
+#define SYS_PLL_SPD                  "SYS_PLL_SPD                 ", 242,242
+#define MEM_PLL_SPD                  "MEM_PLL_SPD                 ", 243,243
+#define CGA_PLL1_SPD                 "CGA_PLL1_SPD                ", 244,244
+#define CGA_PLL2_SPD                 "CGA_PLL2_SPD                ", 245,245
+#define HOST_AGT_PEX                 "HOST_AGT_PEX                ", 264,266
+#define GP_INFO1                     "GP_INFO1                    ", 288,295
+#define GP_INFO2                     "GP_INFO2                    ", 299,319
+#define UART_EXT                     "UART_EXT                    ", 354,356
+#define IRQ_EXT                      "IRQ_EXT                     ", 357,359
+#define SPI_EXT                      "SPI_EXT                     ", 360,362
+#define SDHC_EXT                     "SDHC_EXT                    ", 363,365
+#define UART_BASE                    "UART_BASE                   ", 366,368
+#define ASLEEP                       "ASLEEP                      ", 369,369
+#define RTC                          "RTC                         ", 370,370
+#define SDHC_BASE                    "SDHC_BASE                   ", 371,371
+#define IRQ_OUT                      "IRQ_OUT                     ", 372,372
+#define IRQ_BASE                     "IRQ_BASE                    ", 373,381
+#define SPI_BASE                     "SPI_BASE                    ", 382,383
+#define IFC_GRP_A_EXT                "IFC_GRP_A_EXT               ", 384,386
+#define IFC_GRP_D_EXT                "IFC_GRP_D_EXT               ", 393,395
+#define IFC_GRP_E1_EXT               "IFC_GRP_E1_EXT              ", 396,398
+#define IFC_GRP_F_EXT                "IFC_GRP_F_EXT               ", 399,401
+#define IFC_GRP_E1_BASE              "IFC_GRP_E1_BASE             ", 405,405
+#define IFC_GRP_D_BASE               "IFC_GRP_D_BASE              ", 407,407
+#define IFC_GRP_A_BASE               "IFC_GRP_A_BASE              ", 412,413
+#define IFC_A_22_24                  "IFC_A_22_24                 ", 415,415
+#define EC1                          "EC1                         ", 416,418
+#define EC2                          "EC2                         ", 419,421
+#define LVDD_VSEL                    "LVDD_VSEL                   ", 422,423
+#define I2C_IPGCLK_SEL               "I2C_IPGCLK_SEL              ", 424,424
+#define EM1                          "EM1                         ", 425,425
+#define EM2                          "EM2                         ", 426,426
+#define EMI2_DMODE                   "EMI2_DMODE                  ", 427,427
+#define EMI2_CMODE                   "EMI2_CMODE                  ", 428,428
+#define USB_DRVVBUS                  "USB_DRVVBUS                 ", 429,429
+#define USB_PWRFAULT                 "USB_PWRFAULT                ", 430,430
+#define TVDD_VSEL                    "TVDD_VSEL                   ", 433,434
+#define DVDD_VSEL                    "DVDD_VSEL                   ", 435,436
+#define EMI1_DMODE                   "EMI1_DMODE                  ", 438,438
+#define EVDD_VSEL                    "EVDD_VSEL                   ", 439,440
+#define IIC2_BASE                    "IIC2_BASE                   ", 441,443
+#define EMI1_CMODE                   "EMI1_CMODE                  ", 444,444
+#define IIC2_EXT                     "IIC2_EXT                    ", 445,447
+#define SYSCLK_FREQ                  "SYSCLK_FREQ                 ", 472,481
+#define HWA_CGA_M2_CLK_SEL           "HWA_CGA_M2_CLK_SEL          ", 509,511
+
+int main(void)
+{
+	printf("# RCW values:\n");
+	printf("\n");
+
+	set_val(SYS_PLL_CFG              ,       0);
+	set_val(SYS_PLL_RAT              ,       6);
+	set_val(MEM_PLL_CFG              ,       0);
+	set_val(MEM_PLL_RAT              ,      20);
+	set_val(CGA_PLL1_CFG             ,       0);
+	set_val(CGA_PLL1_RAT             ,      16);
+	set_val(CGA_PLL2_CFG             ,       0);
+	set_val(CGA_PLL2_RAT             ,      14);
+	set_val(C1_PLL_SEL               ,       0);
+	set_val(SRDS_PRTCL_S1            ,  0x1133); /* XFI9 (10G): BASE-FPGA, XFI10 (10G): BASE-FPGA, SGMII5 (1G): Unused, SGMII6 (1G): Midplane/MGMT-Module */
+	set_val(SRDS_PRTCL_S2            ,  0x8888); /* PCIe1 Gen3 x4 */
+	set_val(SRDS_PLL_REF_CLK_SEL_S1_PLL1  ,  0); /* SGMII: 100MHz */
+	set_val(SRDS_PLL_REF_CLK_SEL_S1_PLL2  ,  1); /* XFI: 156.25MHz */
+	set_val(SRDS_PLL_REF_CLK_SEL_S2_PLL1  ,  0); /* PCIe: 100MHz */
+	set_val(SRDS_PLL_REF_CLK_SEL_S2_PLL2  ,  0); /* unused: not connected */
+	set_val(SRDS_PLL_PD_S1           ,       0);
+	set_val(SRDS_PLL_PD_S2           ,       0); /* Note: PLL1 needed for single reference clock */
+	set_val(SRDS_DIV_PEX_S1          ,       0); /* PCIe: train up to a max rate of 8G (unused) */
+	set_val(SRDS_DIV_PEX_S2          ,       0); /* PCIe: train up to a max rate of 8G (used for PCIe1 Gen3 x4) */
+	set_val(DDR_REFCLK_SEL           ,       0);
+	set_val(SRDS_REFCLK_SEL_S1       ,       0); /* Separate reference clocks to both PLLs */
+	set_val(SRDS_REFCLK_SEL_S2       ,       1); /* Single reference clock (SD2_REF_CLK1) to both PLLs */
+	set_val(DDR_FDBK_MULT            ,       2);
+	set_val(PBI_SRC                  ,       4); /* QSPI */
+	set_val(BOOT_HO                  ,       0);
+	set_val(SB_EN                    ,       0);
+	set_val(IFC_MODE                 ,      37);
+	set_val(HWA_CGA_M1_CLK_SEL       ,       6);
+	set_val(DRAM_LAT                 ,       1);
+	set_val(DDR_RATE                 ,       0);
+	set_val(DDR_RSV0                 ,       0);
+	set_val(SYS_PLL_SPD              ,       0);
+	set_val(MEM_PLL_SPD              ,       0);
+	set_val(CGA_PLL1_SPD             ,       0);
+	set_val(CGA_PLL2_SPD             ,       0);
+	set_val(HOST_AGT_PEX             ,       0);
+	set_val(GP_INFO1                 ,       0);
+	set_val(GP_INFO2                 ,       0);
+	set_val(UART_EXT                 ,       0); /* see UART_BASE field definition */
+	set_val(IRQ_EXT                  ,       0); /* 0 => GPIO => see IRQ_BASE field definition */
+	set_val(SPI_EXT                  ,       0); /* see SPI_BASE field definition */
+	set_val(SDHC_EXT                 ,       0); /* see SDHC_BASE field definition */
+	set_val(UART_BASE                ,       6); /* 6 => UART1/2 including RTX/CTS */
+	set_val(ASLEEP                   ,       1); /* GPIO1_13 */
+	set_val(RTC                      ,       1); /* GPIO1_14 */
+	set_val(SDHC_BASE                ,       0); /* internal eMMC */
+	set_val(IRQ_OUT                  ,       1); /* reserved, must be 1 */
+	set_val(IRQ_BASE                 ,   0x1FE); /* GPIO1[23:30] */
+	set_val(SPI_BASE                 ,       0); /* SPI mode -> FRAM */
+	set_val(IFC_GRP_A_EXT            ,       1); /* 1 => QSPI_A_DATA[3], needed for boot flash? */
+	set_val(IFC_GRP_D_EXT            ,       0);
+	set_val(IFC_GRP_E1_EXT           ,       0);
+	set_val(IFC_GRP_F_EXT            ,       1); /* 1 = QSPI needed for boot flash? */
+	set_val(IFC_GRP_E1_BASE          ,       1); /* GPIO2[10:12] */
+	set_val(IFC_GRP_D_BASE           ,       1); /* GPIO2[13:15] */
+	set_val(IFC_GRP_A_BASE           ,       1); /* GPIO2[25:27] */
+	set_val(IFC_A_22_24              ,       0);
+	set_val(EC1                      ,       1); /* GPIO3 (No RGMII) */
+	set_val(EC2                      ,       1); /* GPIO3 (No RGMII) */
+	set_val(LVDD_VSEL                ,       0); /* 1.8V */
+	set_val(I2C_IPGCLK_SEL           ,       0);
+	set_val(EM1                      ,       1); /* GPIO3 (No RGMII) */
+	set_val(EM2                      ,       1); /* GPIO3 (No RGMII) */
+	set_val(EMI2_DMODE               ,       1);
+	set_val(EMI2_CMODE               ,       1);
+	set_val(USB_DRVVBUS              ,       0);
+	set_val(USB_PWRFAULT             ,       0);
+	set_val(TVDD_VSEL                ,       0); /* 1.8V */
+	set_val(DVDD_VSEL                ,       0); /* 1.8V */
+	set_val(EMI1_DMODE               ,       1);
+	set_val(EVDD_VSEL                ,       0);
+	set_val(IIC2_BASE                ,       0); /* must be 0b000 */
+	set_val(EMI1_CMODE               ,       1);
+	set_val(IIC2_EXT                 ,       0); /* 0 => I2C2, i2c_clkgen_cpu */
+	set_val(SYSCLK_FREQ              ,     600);
+	set_val(HWA_CGA_M2_CLK_SEL       ,       1);
+
+	print_rcw(rcw);
+
+	return 0;
+}
diff --git a/arch/arm/boards/tqmls1046a/start.S b/arch/arm/boards/tqmls1046a/start.S
index c812a35768..ad1cd516a7 100644
--- a/arch/arm/boards/tqmls1046a/start.S
+++ b/arch/arm/boards/tqmls1046a/start.S
@@ -27,3 +27,16 @@ ENTRY_PROC(start_tqmls1046a_8g)
 	mov sp, x3
 	b tqmls1046a_8g_entry
 ENTRY_PROC_END(start_tqmls1046a_8g)
+
+ENTRY_PROC(start_arkona_at300)
+	switch_el x3, 3f, 2f, 1f
+3:
+	mov x3, #STACK_TOP
+	mov sp, x3
+	b arkona_at300_entry
+2:
+1:
+	mov x3, STACK_TOP_TMP_SDRAM
+	mov sp, x3
+	b arkona_at300_entry
+ENTRY_PROC_END(start_arkona_at300)
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 7a846e878b..8033708432 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -257,6 +257,7 @@ lwl-$(CONFIG_MACH_WAGO_PFC_AM35XX) += am35xx-pfc-750_820x.dtb.o
 lwl-$(CONFIG_MACH_LS1028ARDB) += fsl-ls1028a-rdb.dtb.o
 lwl-$(CONFIG_MACH_LS1046ARDB) += fsl-ls1046a-rdb.dtb.o
 lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-ls1046a-tqmls1046a-mbls10xxa.dtb.o
+lwl-$(CONFIG_MACH_TQMLS1046A) += fsl-tqmls1046a-arkona-at300.dtb.o
 lwl-$(CONFIG_MACH_LS1021AIOT) += fsl-ls1021a-iot.dtb.o
 lwl-$(CONFIG_MACH_ZEDBOARD) += zynq-zed.dtb.o
 lwl-$(CONFIG_MACH_MNT_REFORM) += imx8mq-mnt-reform2.dtb.o
diff --git a/arch/arm/dts/fsl-tqmls1046a-arkona-at300.dts b/arch/arm/dts/fsl-tqmls1046a-arkona-at300.dts
new file mode 100644
index 0000000000..4147cef3d9
--- /dev/null
+++ b/arch/arm/dts/fsl-tqmls1046a-arkona-at300.dts
@@ -0,0 +1,338 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree Include file for TQMLS1046A SoM on MBLS10xxA from TQ
+ *
+ * Copyright 2018 TQ-Systems GmbH
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+
+#include <arm64/freescale/fsl-ls1046a-tqmls1046a.dtsi>
+#include "fsl-ls1046a.dtsi"
+
+/ {
+	model = "TQ TQMLS1046A SoM on Arkona AT300 board";
+	compatible = "arkona,at300", "tq,ls1046a-tqmls1046a", "fsl,ls1046a";
+
+	barebox,disable-deep-probe;
+
+	aliases {
+		serial0 = &duart0;
+		serial1 = &duart1;
+		mmc0 = &esdhc;
+		qspiflash0 = &qflash0;
+		qspiflash1 = &qflash1;
+		state = &state;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+
+		environment-qspi {
+			compatible = "barebox,environment";
+			device-path = &environment_qspi;
+			status = "disabled";
+		};
+	};
+
+	clk_156m25: clk_156m25 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <156250000>;
+	};
+
+	state: state {
+		magic = <0x52410a4b>;
+		compatible = "barebox,state";
+		backend-type = "raw";
+		backend-storage-type = "direct";
+		backend-stridesize = <0x80>;
+		backend = <&state_part>;
+
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system0 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x0 0x4>;
+					type = "uint32";
+				};
+
+				priority {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts {
+					reg = <0x10 0x4>;
+					type = "uint32";
+				};
+
+				priority {
+					reg = <0x14 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen {
+				reg = <0x20 0x04>;
+				type = "uint32";
+			};
+		};
+
+		fpga_prefix {
+			reg = <0x30 0x30>;
+			type = "string";
+		};
+	};
+};
+
+&dspi {
+	status = "okay";
+	fram@0 {
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			state_part: partition@0 {
+				label = "state";
+				reg = <0x00000 0x00200>;
+			};
+
+			partition@200 {
+				label = "pcbinfo";
+				reg = <0x00200 0x00080>;
+			};
+
+			partition@280 {
+				label = "general";
+				reg = <0x00280 0x7fd80>;
+			};
+		};
+	};
+};
+
+&duart0 {
+	status = "okay";
+};
+
+&duart1 {
+	status = "okay";
+};
+
+&gpio0 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "ps1_present", "ps2_present", "io_presentn", "io_pwr_goodn",
+			  "module_slot_id2", "module_slot_id1", "module_slot_id0", "";
+};
+
+&gpio2 {
+	gpio-line-names = "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "", "", "",
+			  "", "hsc_wpn", "", "usb_fifo_reset",
+			  "", "", "", "";
+};
+
+&i2c1 {
+	status = "okay";
+	si5341: clock-generator@74 {
+		compatible = "silabs,si5341";
+		reg = <0x74>;
+		#clock-cells = <2>;
+		clocks = <&clk_156m25>;
+		clock-names = "in0";
+	};
+};
+
+&i2c3 {
+	status = "okay";
+
+	rtc@32 {
+		compatible = "microcrystal,rv8803";
+		reg = <0x32>;
+	};
+};
+
+&usb0 {
+	dr_mode = "otg";
+};
+
+&usb1 {
+	status = "disabled";
+};
+
+#include <arm64/freescale/fsl-ls1046-post.dtsi>
+#include <dt-bindings/net/ti-dp83867.h>
+
+&fman0 {
+	status = "okay";
+
+	ethernet@e0000 { /* EMAC.1 */
+		status = "disabled";
+	};
+
+	ethernet@e2000 { /* EMAC.2 */
+		status = "disabled";
+	};
+
+	ethernet@e4000 { /* EMAC.3 */
+		status = "disabled";
+	};
+
+	ethernet@e6000 { /* EMAC.4 */
+		status = "disabled";
+	};
+
+	ethernet@e8000 { /* EMAC.5 */
+		status = "disabled";
+	};
+
+	ethernet@ea000 { /* EMAC.6 */
+		phy-connection-type = "sgmii";
+		fixed-link {
+			speed = <1000>;
+			full-duplex;
+		};
+	};
+
+	ethernet@f0000 { /* EMAC.9 */
+		phy-connection-type = "xgmii";
+		fixed-link {
+			speed = <1000>;
+			full-duplex;
+		};
+	};
+
+	ethernet@f2000 { /* EMAC.10 */
+		phy-connection-type = "xgmii";
+		fixed-link {
+			speed = <1000>;
+			full-duplex;
+		};
+	};
+
+	mdio@e1000 {
+		status = "disabled";
+	};
+
+	mdio@e3000 {
+		status = "disabled";
+	};
+
+	mdio@e5000 {
+		status = "disabled";
+	};
+
+	mdio@e7000 {
+		status = "disabled";
+	};
+
+	mdio@e9000 {
+		status = "disabled";
+	};
+
+	mdio@eb000 {
+		status = "disabled";
+	};
+
+	mdio@f1000 {
+		status = "disabled";
+	};
+
+	mdio@f3000 {
+		status = "disabled";
+	};
+
+	mdio@fc000 {
+		status = "disabled";
+	};
+
+	mdio@fd000 {
+		status = "disabled";
+	};
+};
+
+&qflash0 {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x200000>;
+		};
+
+		environment_qspi: partition@200000 {
+			label = "barebox-environment";
+			reg = <0x200000 0x80000>;
+		};
+
+		partition@280000 {
+			label = "data";
+			reg = <0x280000 0x0>;
+		};
+	};
+};
+
+&qflash1 {
+	partitions {
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		compatible = "fixed-partitions";
+
+		partition@0 {
+			label = "barebox-alternate";
+			reg = <0x0 0x200000>;
+		};
+
+		partition@200000 {
+			label = "barebox-environment-alternate";
+			reg = <0x200000 0x80000>;
+		};
+
+		partition@280000 {
+			label = "data-alternate";
+			reg = <0x280000 0x0>;
+		};
+	};
+};
+
+&soc {
+	pcie1: pcie@3400000 {
+		status = "okay";
+	};
+};
diff --git a/images/Makefile.layerscape b/images/Makefile.layerscape
index f62d8fe826..c4f77bc31d 100644
--- a/images/Makefile.layerscape
+++ b/images/Makefile.layerscape
@@ -72,10 +72,22 @@ $(obj)/barebox-tqmls1046a-8g-qspi.image: $(obj)/start_tqmls1046a_8g.pblb \
 		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
 	$(call if_changed,lspbl_spi_image,ls1046a)
 
+$(obj)/barebox-arkona-at300-qspi.image: $(obj)/start_arkona_at300.pblb \
+		$(board)/tqmls1046a/arkona_at300_rcw.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
+	$(call if_changed,lspbl_spi_image,ls1046a)
+
+$(obj)/barebox-arkona-at300-sd.image: $(obj)/start_arkona_at300.pblb \
+		$(board)/tqmls1046a/tqmls1046a_rcw_sd_3333_5559.cfg \
+		$(board)/tqmls1046a/tqmls1046a_pbi.cfg FORCE
+	$(call if_changed,lspbl_image,ls1046a)
+
 image-$(CONFIG_MACH_TQMLS1046A) += barebox-tqmls1046a-sd.image \
 	barebox-tqmls1046a-qspi.image \
 	barebox-tqmls1046a-8g-sd.image \
-	barebox-tqmls1046a-8g-qspi.image
+	barebox-tqmls1046a-8g-qspi.image \
+	barebox-arkona-at300-qspi.image \
+	barebox-arkona-at300-sd.image
 
 pblb-$(CONFIG_MACH_LS1021AIOT) += start_ls1021aiot
 

---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260407-v2026-03-1-topic-arkona-at300-1eb495d15f79

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>



