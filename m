Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21EX-0000Xg-Gg
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:11:57 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 88027104EA00
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:21:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:04 +0100
Message-Id: <1359904236-11622-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/36] ARM i.MX: Add i.MX specific entry point for barebox
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Additionally to the generic entry point the i.MX specific ones
calculate the SDRAM size automatically so the boards do not have
to care.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c                |   12 +++
 arch/arm/mach-imx/esdctl.c              |  136 ++++++++++++++++++++++++++-----
 arch/arm/mach-imx/include/mach/esdctl.h |   11 +++
 3 files changed, 138 insertions(+), 21 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index da62111..11ab025 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -190,6 +190,18 @@ void __naked __noreturn board_init_lowlevel_return(void)
  * full SDRAM. The currently running binary can be inside or outside of this
  * region. TEXT_BASE can be inside or outside of this region. boarddata will
  * be preserved and can be accessed later with barebox_arm_boarddata().
+ *
+ * -> membase + memsize
+ *   ARM_RESERVE_MEM_SIZE    - reserved for board usage. Will not be touched
+ *                             by barebox
+ *   STACK_SIZE              - stack
+ *   16KiB, aligned to 16KiB - First level page table if early MMU support
+ *                             is enabled
+ *   128KiB                  - early memory space
+ * -> maximum end of barebox binary
+ *
+ * Usually a TEXT_BASE of 1MiB below your lowest possible end of memory should
+ * be fine.
  */
 void __naked __noreturn barebox_arm_entry(uint32_t membase, uint32_t memsize,
 		uint32_t boarddata)
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 841a9ed..3585e27 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -127,32 +127,18 @@ static inline unsigned long imx_v4_sdram_size(void __iomem *esdctlbase, int cs)
 		return 0;
 	if (cs == 1 && !(ctlval & ESDCTL_V4_ESDCTLx_SDE1))
 		return 0;
-
 	/* one 2GiB cs, memory is returned for cs0 only */
 	if (cs == 1 && (esdmisc & ESDCTL_V4_ESDMISC_ONE_CS))
-		return 9;
-
+		return 0;
 	rows = ((ctlval >> 24) & 0x7) + 11;
-	switch ((ctlval >> 20) & 0x7) {
-	case 0:
-		cols = 9;
-		break;
-	case 1:
-		cols = 10;
-		break;
-	case 2:
-		cols = 11;
-		break;
-	case 3:
+
+	cols = (ctlval >> 20) & 0x7;
+	if (cols == 3)
 		cols = 8;
-		break;
-	case 4:
+	else if (cols == 4)
 		cols = 12;
-		break;
-	default:
-		cols = 0;
-		break;
-	}
+	else
+		cols += 9;
 
 	if (ctlval & ESDCTL_V4_ESDCTLx_DSIZ_32B)
 		width = 4;
@@ -353,3 +339,111 @@ static int imx_esdctl_init(void)
 }
 
 mem_initcall(imx_esdctl_init);
+
+/*
+ * The i.MX SoCs usually have two SDRAM chipselects. The following
+ * SoC specific functions return:
+ *
+ * - cs0 disabled, cs1 disabled: 0
+ * - cs0 enabled, cs1 disabled: SDRAM size for cs0
+ * - cs0 disabled, c1 enabled: 0 (currently assumed that no hardware does this)
+ * - cs0 enabled, cs1 enabled: The largest continuous region, that is, cs0 + cs1
+ *                             if cs0 is taking the whole address space.
+ */
+void __naked __noreturn imx1_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = 0x08000000;
+
+	size = imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 0);
+	if (size == SZ_64M)
+		size += imx_v1_sdram_size((void *)MX1_SDRAMC_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx25_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX25_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX25_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx27_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX27_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX27_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx31_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX31_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX31_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx35_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX35_CSD0_BASE_ADDR;
+
+	size = imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v2_sdram_size((void *)MX35_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx51_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX51_CSD0_BASE_ADDR;
+
+	size = imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_256M)
+		size += imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
+
+void __naked __noreturn imx53_barebox_entry(uint32_t boarddata)
+{
+	unsigned long base;
+	unsigned long size;
+
+	base = MX53_CSD0_BASE_ADDR;
+
+	size = imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0);
+	if (size == SZ_1G)
+		size += imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1);
+
+	barebox_arm_entry(base, size, boarddata);
+}
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 1a265c8..26436d9 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -127,4 +127,15 @@
 //#define ESDCFGx_tRC_14		0x0000000e	// 15 seems to not exist
 #define ESDCFGx_tRC_16			0x0000000f
 
+#ifndef __ASSEMBLY__
+void __naked __noreturn imx1_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx25_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx27_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx31_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx35_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx51_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx53_barebox_entry(uint32_t boarddata);
+void __naked __noreturn imx6_barebox_entry(uint32_t boarddata);
+#endif
+
 #endif /* __MACH_ESDCTL_V2_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
