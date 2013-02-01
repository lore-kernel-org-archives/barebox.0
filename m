Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXM-00045M-Hg
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:19 +0100
Message-Id: <1359705587-9762-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/34] ARM i.MX boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Most i.MX boards can use the imx*_barebox_entry functions. The remaining
(i.MX21, i.MX6) use hardcoded base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                      |    2 ++
 arch/arm/boards/ccxmx51/Makefile                      |    2 ++
 arch/arm/boards/ccxmx51/lowlevel.c                    |    9 +++++++++
 arch/arm/boards/efika-mx-smartbook/Makefile           |    2 ++
 arch/arm/boards/efika-mx-smartbook/lowlevel.c         |    9 +++++++++
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c            |    6 +++---
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S       |    4 ++--
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c            |    6 +++---
 arch/arm/boards/eukrea_cpuimx51/Makefile              |    2 ++
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c            |    9 +++++++++
 .../arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    4 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c       |    1 +
 .../arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    4 ++--
 arch/arm/boards/freescale-mx51-pdk/Makefile           |    2 ++
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c         |    9 +++++++++
 arch/arm/boards/freescale-mx53-loco/Makefile          |    2 ++
 arch/arm/boards/freescale-mx53-loco/lowlevel.c        |    9 +++++++++
 arch/arm/boards/freescale-mx53-smd/Makefile           |    2 ++
 arch/arm/boards/freescale-mx53-smd/lowlevel.c         |    9 +++++++++
 arch/arm/boards/freescale-mx6-arm2/Makefile           |    2 ++
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c         |   10 ++++++++++
 arch/arm/boards/freescale-mx6-sabrelite/Makefile      |    2 ++
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c    |   10 ++++++++++
 arch/arm/boards/guf-cupid/lowlevel.c                  |    6 +++---
 arch/arm/boards/guf-neso/lowlevel.c                   |    6 +++---
 arch/arm/boards/guf-vincell/lowlevel.c                |    5 +++--
 arch/arm/boards/imx21ads/imx21ads.c                   |    3 ++-
 arch/arm/boards/imx21ads/lowlevel_init.S              |    8 ++++++--
 arch/arm/boards/imx27ads/lowlevel_init.S              |    4 ++--
 arch/arm/boards/karo-tx25/lowlevel.c                  |    7 ++++---
 arch/arm/boards/karo-tx51/Makefile                    |    2 ++
 arch/arm/boards/karo-tx51/lowlevel.c                  |    9 +++++++++
 arch/arm/boards/karo-tx53/lowlevel.c                  |    6 ++----
 arch/arm/boards/pcm037/lowlevel.c                     |    4 ++--
 arch/arm/boards/pcm038/lowlevel.c                     |    6 ++++--
 arch/arm/boards/pcm043/lowlevel.c                     |    6 +++---
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S        |    4 ++--
 arch/arm/boards/scb9328/lowlevel_init.S               |    4 ++--
 arch/arm/boards/tqma53/Makefile                       |    2 ++
 arch/arm/boards/tqma53/lowlevel.c                     |    9 +++++++++
 arch/arm/mach-imx/Kconfig                             |   17 -----------------
 arch/arm/mach-imx/Makefile                            |    5 ++++-
 arch/arm/mach-imx/external-nand-boot.c                |   11 ++++++-----
 43 files changed, 175 insertions(+), 66 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/lowlevel.c
 create mode 100644 arch/arm/boards/efika-mx-smartbook/lowlevel.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx51/lowlevel.c
 create mode 100644 arch/arm/boards/tqma53/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6f7a71f..cac3360 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -58,6 +58,8 @@ config ARCH_IMX
 	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_MXS
 	bool "Freescale i.MX23/28 (mxs) based"
diff --git a/arch/arm/boards/ccxmx51/Makefile b/arch/arm/boards/ccxmx51/Makefile
index f9eb2db..d392533 100644
--- a/arch/arm/boards/ccxmx51/Makefile
+++ b/arch/arm/boards/ccxmx51/Makefile
@@ -1,3 +1,5 @@
 obj-y					+= flash_header.o ccxmx51.o
 pbl-y					+= flash_header.o
 obj-$(CONFIG_MACH_CCMX51_BASEBOARD)	+= ccxmx51js.o
+obj-y					+= lowlevel.o
+pbl-y					+= lowlevel.o
diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
new file mode 100644
index 0000000..282024e
--- /dev/null
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx51_barebox_entry(0);
+}
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index d08bb68..6ca1c06 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,3 +1,5 @@
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
new file mode 100644
index 0000000..282024e
--- /dev/null
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx51_barebox_entry(0);
+}
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 3c1b50c..6afdd17 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -107,7 +107,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Init Mobile DDR */
 	writel(0x0000000E, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
@@ -132,7 +132,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx25_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx25_barebox_entry(0);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 287b513..c37d271 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -119,7 +119,7 @@ reset:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
 1:
 	sdram_init
 
@@ -131,4 +131,4 @@ reset:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index c43f7fe..0533c1d 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -110,7 +110,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Init Mobile DDR */
 	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
@@ -141,7 +141,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
index ce81ffa..1a23797 100644
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ b/arch/arm/boards/eukrea_cpuimx51/Makefile
@@ -1,3 +1,5 @@
 obj-y += eukrea_cpuimx51.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
new file mode 100644
index 0000000..282024e
--- /dev/null
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx51_barebox_entry(0);
+}
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index 2e49e6e..a55508e 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -77,7 +77,7 @@ reset:
 	cmp	pc, #0x90000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx25_barebox_entry
 
 1:
 	ldr r0, ESDCTL_BASE_W
@@ -105,7 +105,7 @@ reset:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	b	imx25_barebox_entry
 
 /*
  * r0: control base, r1: ram bank base
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 02844c5..e1cb73c 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <sizes.h>
 #include <partition.h>
 
 #include <asm/armlinux.h>
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index c63c953..7b0a32b 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -126,7 +126,7 @@ reset:
 	cmp	pc, #CSD1_BASE_ADDR
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx35_barebox_entry
 
 1:
 	ldr	r0, =ESDCTL_BASE_ADDR
@@ -161,7 +161,7 @@ reset:
 	b	imx35_barebox_boot_nand_external
 #endif /* CONFIG_NAND_IMX_BOOT */
 
-	b	board_init_lowlevel_return
+	b	imx35_barebox_entry
 
 /*
  * r0: ESDCTL control base, r1: sdram slot base
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index d08bb68..2f45976 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,3 +1,5 @@
 obj-y += board.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
new file mode 100644
index 0000000..282024e
--- /dev/null
+++ b/arch/arm/boards/freescale-mx51-pdk/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx51_barebox_entry(0);
+}
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
index d08bb68..2f45976 100644
--- a/arch/arm/boards/freescale-mx53-loco/Makefile
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -1,3 +1,5 @@
 obj-y += board.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
new file mode 100644
index 0000000..c6f79ca
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-loco/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx53_barebox_entry(0);
+}
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
index d08bb68..2f45976 100644
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ b/arch/arm/boards/freescale-mx53-smd/Makefile
@@ -1,3 +1,5 @@
 obj-y += board.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
new file mode 100644
index 0000000..c6f79ca
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx53_barebox_entry(0);
+}
diff --git a/arch/arm/boards/freescale-mx6-arm2/Makefile b/arch/arm/boards/freescale-mx6-arm2/Makefile
index 11199d2..21fb7d9 100644
--- a/arch/arm/boards/freescale-mx6-arm2/Makefile
+++ b/arch/arm/boards/freescale-mx6-arm2/Makefile
@@ -1,2 +1,4 @@
 obj-y += board.o flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
new file mode 100644
index 0000000..810b890
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0x10000000, SZ_2G, 0);
+}
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/Makefile b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
index 11199d2..21fb7d9 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabrelite/Makefile
@@ -1,2 +1,4 @@
 obj-y += board.o flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
new file mode 100644
index 0000000..8f995ee
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(0x10000000, SZ_1G, 0);
+}
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index c141b54..9620abd 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -234,7 +234,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r0 = get_pc();
 	if (r0 > 0x80000000 && r0 < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Configure drive strength */
 
@@ -317,7 +317,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index ca44607..ebb8d56 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -48,7 +48,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0xa0000000 && r < 0xb0000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/*
 	 * DDR on CSD0
@@ -91,7 +91,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx27_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx27_barebox_entry(0);
 }
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 8003c67..1243b9a 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -5,6 +5,7 @@
 #include <mach/imx5.h>
 #include <mach/iomux-v3.h>
 #include <mach/esdctl-v4.h>
+#include <mach/esdctl.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <io.h>
@@ -131,7 +132,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x70000000 && r < 0xf0000000)
-		board_init_lowlevel_return();
+		imx51_barebox_entry(0);
 
 	/* Setup a preliminary stack */
 	r = 0xf8000000 + 0x60000 - 16;
@@ -145,5 +146,5 @@ void __bare_init __naked reset(void)
 
 	imx_esdctlv4_init();
 
-	board_init_lowlevel_return();
+	imx51_barebox_entry(0);
 }
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 3d07633..6087ad4 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -30,6 +30,7 @@
 #include <mach/weim.h>
 #include <partition.h>
 #include <fs.h>
+#include <sizes.h>
 #include <fcntl.h>
 #include <generated/mach-types.h>
 #include <mach/imx-nand.h>
@@ -107,7 +108,7 @@ core_initcall(imx21ads_timing_init);
 
 static int mx21ads_mem_init(void)
 {
-	arm_add_mem_device("ram0", 0xc0000000, 64 * 1024 * 1024);
+	arm_add_mem_device("ram0", 0xc0000000, SZ_64M);
 
 	return 0;
 }
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index 5be4995..5c6d3f7 100644
--- a/arch/arm/boards/imx21ads/lowlevel_init.S
+++ b/arch/arm/boards/imx21ads/lowlevel_init.S
@@ -14,6 +14,7 @@
  */
 
 #include <config.h>
+#include <sizes.h>
 #include <asm-generic/memory_layout.h>
 #include <mach/imx21-regs.h>
 #include <asm/barebox-arm-head.h>
@@ -75,7 +76,7 @@ reset:
 	cmp	pc, #0xc8000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	ret
 1:
 
 	/* Precharge */
@@ -125,7 +126,10 @@ reset:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	mov	r0, #0xc0000000
+	mov	r1, #SZ_64M
+	mov	r2, #0
+	b	barebox_arm_entry
 
 /*
  *  spin for a while.  we need to wait at least 200 usecs.
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
index 2dc34b5..8939f6a 100644
--- a/arch/arm/boards/imx27ads/lowlevel_init.S
+++ b/arch/arm/boards/imx27ads/lowlevel_init.S
@@ -167,9 +167,9 @@ reset:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	b board_init_lowlevel_return
+	b imx27_barebox_entry
 1:
 	sdram_init_sha
 
-	b board_init_lowlevel_return
+	b imx27_barebox_entry
 
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 9e96e39..45fa17f 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -23,6 +23,7 @@
 #include <io.h>
 #include <sizes.h>
 #include <mach/imx-nand.h>
+#include <mach/esdctl.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/system.h>
@@ -115,7 +116,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* set to 3.3v SDRAM */
 	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
@@ -138,7 +139,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 8);
 
 	imx25_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx25_barebox_entry(0);
 }
diff --git a/arch/arm/boards/karo-tx51/Makefile b/arch/arm/boards/karo-tx51/Makefile
index 6f51586..00f2b05 100644
--- a/arch/arm/boards/karo-tx51/Makefile
+++ b/arch/arm/boards/karo-tx51/Makefile
@@ -1,3 +1,5 @@
 obj-y += tx51.o
 obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
 pbl-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
new file mode 100644
index 0000000..282024e
--- /dev/null
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx51_barebox_entry(0);
+}
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 0ca164b..fe9dac1 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -2,8 +2,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
-
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+#include <mach/esdctl.h>
 
 void __naked reset(void)
 {
@@ -17,6 +16,5 @@ void __naked reset(void)
 	if (IS_ENABLED(CONFIG_TX53_REV_XX30))
 		imx53_init_lowlevel(800);
 
-	board_init_lowlevel_return();
+	imx53_barebox_entry(0);
 }
-#endif
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/pcm037/lowlevel.c
index b531615..176c968 100644
--- a/arch/arm/boards/pcm037/lowlevel.c
+++ b/arch/arm/boards/pcm037/lowlevel.c
@@ -84,7 +84,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0xa0000000)
-		board_init_lowlevel_return();
+		imx31_barebox_entry(0);
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
 #define ROWS0	ESDCTL0_ROW13
@@ -131,6 +131,6 @@ void __bare_init __naked reset(void)
 
 	imx31_barebox_boot_nand_external();
 #else
-	board_init_lowlevel_return();
+	imx31_barebox_entry(0);
 #endif
 }
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index aecdbf3..c00b3b4 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -49,7 +49,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0xa0000000 && r < 0xb0000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* re-program the PLL prior(!) starting the SDRAM controller */
 	writel(MPCTL0_VAL, MX27_CCM_BASE_ADDR + MX27_MPCTL0);
@@ -99,6 +99,8 @@ void __bare_init __naked reset(void)
 
 	imx27_barebox_boot_nand_external();
 #else
-	board_init_lowlevel_return();
+	imx27_barebox_entry(0);
 #endif
+out:
+	imx27_barebox_entry(0);
 }
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index a9832e2..d19d5b5 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -117,7 +117,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Set DDR Type to SDRAM, drive strength workaround	*
 	 * 0x00000000	MDDR					*
@@ -193,7 +193,7 @@ void __bare_init __naked reset(void)
 	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 8);
 
 	imx35_barebox_boot_nand_external();
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index cb5d83d..d81066e 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -82,7 +82,7 @@ reset:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
 
 1:
 	/* 399 MHz */
@@ -115,5 +115,5 @@ reset:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
 
diff --git a/arch/arm/boards/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
index cefac84..f8197bd 100644
--- a/arch/arm/boards/scb9328/lowlevel_init.S
+++ b/arch/arm/boards/scb9328/lowlevel_init.S
@@ -151,7 +151,7 @@ reset:
 	cmp	pc, #0x09000000
 	bhi	1f
 
-	b board_init_lowlevel_return
+	b imx1_barebox_entry
 
 1:
 
@@ -181,4 +181,4 @@ reset:
 	/* Set to Normal Mode CAS 2 */
 	writel(0x810a8200, MX1_SDRAMC_BASE_ADDR + MX1_SDCTL0)
 
-	b board_init_lowlevel_return
+	b imx1_barebox_entry
diff --git a/arch/arm/boards/tqma53/Makefile b/arch/arm/boards/tqma53/Makefile
index d08bb68..2f45976 100644
--- a/arch/arm/boards/tqma53/Makefile
+++ b/arch/arm/boards/tqma53/Makefile
@@ -1,3 +1,5 @@
 obj-y += board.o
 obj-y += flash_header.o
 pbl-y += flash_header.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
new file mode 100644
index 0000000..c6f79ca
--- /dev/null
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -0,0 +1,9 @@
+#include <common.h>
+#include <mach/esdctl.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	imx53_barebox_entry(0);
+}
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3cb35a0..4115d35 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -206,7 +206,6 @@ choice
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select HAS_DM9000
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Synertronixx scb9328 board
 
@@ -223,7 +222,6 @@ choice
 
 config MACH_IMX21ADS
 	bool "Freescale i.MX21ADS"
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAS_CS8900
 	help
 	  Say Y here if you are using the Freescale i.MX21ads board equipped
@@ -242,14 +240,12 @@ choice
 
 config MACH_EUKREA_CPUIMX25
 	bool "Eukrea CPUIMX25"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
 	  equipped with a Freescale i.MX25 Processor
 
 config MACH_FREESCALE_MX25_3STACK
 	bool "Freescale MX25 3stack"
-	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_MC34704
 	help
@@ -258,7 +254,6 @@ config MACH_FREESCALE_MX25_3STACK
 
 config MACH_TX25
 	bool "Ka-Ro TX25"
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Say Y here if you are using the Ka-Ro tx25 board
@@ -276,28 +271,24 @@ choice
 
 config MACH_EUKREA_CPUIMX27
 	bool "EUKREA CPUIMX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Eukrea's CPUIMX27 equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_IMX27ADS
 	bool "Freescale i.MX27ADS"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Freescale i.MX27ads board equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCA100
 	bool "phyCard-i.MX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Phytec's phyCard-i.MX27 (pca100) equipped
 	  with a Freescale i.MX27 Processor
 
 config MACH_PCM038
 	bool "phyCORE-i.MX27"
-	select MACH_HAS_LOWLEVEL_INIT
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
@@ -316,7 +307,6 @@ config MACH_PCM970_BASEBOARD
 
 config MACH_NESO
 	bool "Garz+Fricke Neso"
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
 	  with a Freescale i.MX27 Processor
@@ -334,7 +324,6 @@ choice
 
 config MACH_PCM037
 	bool "phyCORE-i.MX31"
-	select MACH_HAS_LOWLEVEL_INIT
 	select USB_ULPI if USB
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	select ARCH_HAS_L2X0
@@ -355,7 +344,6 @@ choice
 
 config MACH_EUKREA_CPUIMX35
 	bool "EUKREA CPUIMX35"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Eukrea's CPUIMX35 equipped
@@ -363,7 +351,6 @@ config MACH_EUKREA_CPUIMX35
 
 config MACH_FREESCALE_MX35_3STACK
 	bool "Freescale MX35 3stack"
-	select MACH_HAS_LOWLEVEL_INIT
 	select I2C
 	select I2C_IMX
 	select MFD_MC13XXX
@@ -374,7 +361,6 @@ config MACH_FREESCALE_MX35_3STACK
 
 config MACH_PCM043
 	bool "phyCORE-i.MX35"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
@@ -382,7 +368,6 @@ config MACH_PCM043
 
 config MACH_GUF_CUPID
 	bool "Garz+Fricke Cupid"
-	select MACH_HAS_LOWLEVEL_INIT
 	select ARCH_HAS_L2X0
 	help
 	  Say Y here if you are using the Garz+Fricke Neso board equipped
@@ -469,13 +454,11 @@ config MACH_TQMA53_1GB_RAM
 config MACH_TX53
 	bool "Ka-Ro TX53"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using the Ka-Ro tx53 board
 
 config MACH_GUF_VINCELL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select MACH_HAS_LOWLEVEL_INIT
 	bool "Garz-Fricke Vincell"
 
 endchoice
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 104ab21..1c28035 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -11,8 +11,11 @@ pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
 obj-$(CONFIG_ARCH_IMX6) += imx6.o iomux-v3.o usb-imx6.o clk-imx6.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
-obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
+ifdef CONFIG_PBL_IMAGE
 pbl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
+else
+obj-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
+endif
 obj-$(CONFIG_COMMON_CLK) += clk-pllv1.o clk-pllv2.o clk-pllv3.o clk-pfd.o
 obj-y += devices.o imx.o esdctl.o
 obj-y += boot.o
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index c97fec9..2c353d7 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -18,6 +18,7 @@
 #include <asm/sections.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx-nand.h>
+#include <mach/esdctl.h>
 #include <mach/generic.h>
 #include <mach/imx21-regs.h>
 #include <mach/imx25-regs.h>
@@ -312,7 +313,7 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 	imx_barebox_boot_nand_external(nfc_base);
 	jump_sdram(nfc_base - (unsigned long)_text);
 	imx_nand_load_image((void *)_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx21_barebox_entry(0);
 }
 #endif
 
@@ -324,7 +325,7 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 	imx_barebox_boot_nand_external(nfc_base);
 	jump_sdram(nfc_base - (unsigned long)_text);
 	imx_nand_load_image((void *)_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx25_barebox_entry(0);
 }
 #endif
 
@@ -336,7 +337,7 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 	imx_barebox_boot_nand_external(nfc_base);
 	jump_sdram(nfc_base - (unsigned long)_text);
 	imx_nand_load_image((void *)_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx27_barebox_entry(0);
 }
 #endif
 
@@ -348,7 +349,7 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 	imx_barebox_boot_nand_external(nfc_base);
 	jump_sdram(nfc_base - (unsigned long)_text);
 	imx_nand_load_image((void *)_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx31_barebox_entry(0);
 }
 #endif
 
@@ -360,7 +361,7 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 	imx_barebox_boot_nand_external(nfc_base);
 	jump_sdram(nfc_base - (unsigned long)_text);
 	imx_nand_load_image((void *)_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx35_barebox_entry(0);
 }
 #endif
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
