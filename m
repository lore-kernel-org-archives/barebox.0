Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027N-Ru
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:04:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:15 +0200
Message-Id: <1350507817-7819-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/28] ARM i.MX boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Most i.MX boards can use the imx*_barebox_entry functions. The remaining
(i.MX21, i.MX6) use hardcoded base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ccxmx51/Makefile                       |    2 ++
 arch/arm/boards/ccxmx51/lowlevel.c                     |    9 +++++++++
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c             |   10 +++++-----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c      |    2 +-
 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |    4 ++--
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c             |   11 +++++------
 arch/arm/boards/eukrea_cpuimx51/Makefile               |    2 ++
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c             |    9 +++++++++
 arch/arm/boards/freescale-mx25-3-stack/3stack.c        |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    4 ++--
 arch/arm/boards/freescale-mx35-3-stack/3stack.c        |    7 ++++---
 arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    4 ++--
 arch/arm/boards/freescale-mx51-pdk/Makefile            |    2 ++
 arch/arm/boards/freescale-mx51-pdk/lowlevel.c          |    9 +++++++++
 arch/arm/boards/freescale-mx53-loco/Makefile           |    2 ++
 arch/arm/boards/freescale-mx53-loco/lowlevel.c         |    9 +++++++++
 arch/arm/boards/freescale-mx53-smd/Makefile            |    2 ++
 arch/arm/boards/freescale-mx53-smd/lowlevel.c          |    9 +++++++++
 arch/arm/boards/freescale-mx6-arm2/Makefile            |    2 ++
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c          |   10 ++++++++++
 arch/arm/boards/freescale-mx6-sabrelite/Makefile       |    2 ++
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c     |   10 ++++++++++
 arch/arm/boards/guf-cupid/lowlevel.c                   |   11 +++++------
 arch/arm/boards/guf-neso/lowlevel.c                    |   11 +++++------
 arch/arm/boards/imx21ads/imx21ads.c                    |    5 +++--
 arch/arm/boards/imx21ads/lowlevel_init.S               |    8 ++++++--
 arch/arm/boards/imx27ads/lowlevel_init.S               |    4 ++--
 arch/arm/boards/karo-tx25/lowlevel.c                   |   10 +++++-----
 arch/arm/boards/karo-tx28/Makefile                     |    2 ++
 arch/arm/boards/karo-tx51/Makefile                     |    2 ++
 arch/arm/boards/karo-tx51/lowlevel.c                   |    9 +++++++++
 arch/arm/boards/karo-tx53/lowlevel.c                   |    3 ++-
 arch/arm/boards/pcm037/lowlevel_init.S                 |    4 ++--
 arch/arm/boards/pcm037/pcm037.c                        |    2 +-
 arch/arm/boards/pcm038/lowlevel.c                      |   10 +++++-----
 arch/arm/boards/pcm043/lowlevel.c                      |   11 +++++------
 arch/arm/boards/phycard-i.MX27/lowlevel_init.S         |    5 ++---
 arch/arm/boards/scb9328/lowlevel_init.S                |    4 ++--
 arch/arm/boards/tqma53/Makefile                        |    2 ++
 arch/arm/boards/tqma53/lowlevel.c                      |    9 +++++++++
 40 files changed, 170 insertions(+), 65 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/lowlevel.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx51-pdk/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-loco/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/lowlevel.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
 create mode 100644 arch/arm/boards/karo-tx51/lowlevel.c
 create mode 100644 arch/arm/boards/tqma53/lowlevel.c

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
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index 36ce98b..d08e494 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -40,7 +40,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx25_barebox_entry(0);
 }
 #endif
 
@@ -125,7 +125,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Init Mobile DDR */
 	writel(0x0000000E, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
@@ -149,7 +149,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX25_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -161,7 +161,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx25_barebox_entry(0);
 }
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index c89ce8a..d85acb9 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -267,7 +267,7 @@ late_initcall(eukrea_cpuimx27_late_init);
 void __bare_init nand_boot(void)
 {
 	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx27_barebox_entry();
 }
 #endif
 
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
index 4ee6efb..08659e0 100644
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
@@ -119,7 +119,7 @@ reset:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
 1:
 	sdram_init
 
@@ -151,4 +151,4 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index 0523335..f95459a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -51,7 +51,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx35_barebox_entry(0);
 }
 #endif
 
@@ -134,7 +134,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Init Mobile DDR */
 	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
@@ -158,7 +158,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX35_NFC_BASE_ADDR || r > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX35_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -170,8 +170,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
-
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
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 5ce2f8e..05b4924 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -292,7 +292,7 @@ console_initcall(imx25_console_init);
 void __bare_init nand_boot(void)
 {
 	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx25_barebox_entry();
 }
 #endif
 
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
index fb98099..425cf99 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
@@ -77,7 +77,7 @@ reset:
 	cmp	pc, #0x90000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx25_barebox_entry
 
 1:
 	ldr r0, ESDCTL_BASE_W
@@ -125,7 +125,7 @@ copy_loop:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
 ret:
-	b	board_init_lowlevel_return
+	b	imx25_barebox_entry
 
 /*
  * r0: control base, r1: ram bank base
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 7da031a..e508612 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -30,6 +30,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <sizes.h>
 #include <partition.h>
 
 #include <asm/armlinux.h>
@@ -130,8 +131,8 @@ static void set_board_rev(int rev)
 
 static int f3s_mem_init(void)
 {
-	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, 128 * 1024 * 1024);
-	arm_add_mem_device("ram1", MX35_CSD1_BASE_ADDR, 128 * 1024 * 1024);
+	arm_add_mem_device("ram0", MX35_CSD0_BASE_ADDR, SZ_128M);
+	arm_add_mem_device("ram1", MX35_CSD1_BASE_ADDR, SZ_128M);
 
 	return 0;
 }
@@ -445,6 +446,6 @@ void __bare_init nand_boot(void)
 	 * fuses or external pull ups. But not the blocksize...
 	 */
 	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx35_barebox_entry(MX35_CSD0_BASE_ADDR, SZ_128M);
 }
 #endif
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
index dada5f3..f36a44a 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
+++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
@@ -126,7 +126,7 @@ reset:
 	cmp	pc, #CSD1_BASE_ADDR
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx35_barebox_entry
 
 1:
 	ldr	r0, =ESDCTL_BASE_ADDR
@@ -181,7 +181,7 @@ copy_loop:
 ret:
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
index f2e44af..e8ac9a3 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -58,7 +58,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx35_barebox_entry();
 }
 #endif
 
@@ -257,7 +257,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r0 = get_pc();
 	if (r0 > 0x80000000 && r0 < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Configure drive strength */
 
@@ -333,7 +333,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r0 = get_pc();
 	if (r0 < MX35_NFC_BASE_ADDR || r0 > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX35_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -345,8 +345,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r0 = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r0));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
-
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index ad414d9..55f0475 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -38,7 +38,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx27_barebox_entry(0);
 }
 #endif
 
@@ -63,7 +63,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0xa0000000 && r < 0xb0000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/*
 	 * DDR on CSD0
@@ -105,7 +105,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX27_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -117,8 +117,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx27_barebox_entry(0);
 }
-
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index ca566c8..9ca5d14 100644
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
@@ -194,7 +195,7 @@ console_initcall(mx21ads_console_init);
 void __bare_init nand_boot(void)
 {
 	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
+	barebox_arm_entry(0xc0000000, SZ_64M, 0);
 }
 #endif
 
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
index e52cac1..a46dafe 100644
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
@@ -145,7 +146,10 @@ copy_loop:
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
index 9c5cc5c..9223a82 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -38,7 +38,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx25_barebox_entry(0);
 }
 #endif
 
@@ -131,7 +131,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* set to 3.3v SDRAM */
 	writel(0x800, MX25_IOMUXC_BASE_ADDR + 0x454);
@@ -153,7 +153,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX25_NFC_BASE_ADDR || r > MX25_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX25_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -165,7 +165,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx25_barebox_entry(0);
 }
diff --git a/arch/arm/boards/karo-tx28/Makefile b/arch/arm/boards/karo-tx28/Makefile
index d80ba17..c90bf36 100644
--- a/arch/arm/boards/karo-tx28/Makefile
+++ b/arch/arm/boards/karo-tx28/Makefile
@@ -1,2 +1,4 @@
 obj-y += tx28.o
 obj-$(CONFIG_MACH_TX28STK5) += tx28-stk5.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
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
index 6b7314c..fe9dac1 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -2,6 +2,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
+#include <mach/esdctl.h>
 
 void __naked reset(void)
 {
@@ -15,5 +16,5 @@ void __naked reset(void)
 	if (IS_ENABLED(CONFIG_TX53_REV_XX30))
 		imx53_init_lowlevel(800);
 
-	board_init_lowlevel_return();
+	imx53_barebox_entry(0);
 }
diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
index f9ecce1..6912bc1 100644
--- a/arch/arm/boards/pcm037/lowlevel_init.S
+++ b/arch/arm/boards/pcm037/lowlevel_init.S
@@ -95,7 +95,7 @@ clear_iomux:
 	cmp	pc, #0x90000000
 	bhs	1f
 
-	b	board_init_lowlevel_return
+	b	imx31_barebox_entry
 1:
 
 #if defined CONFIG_PCM037_SDRAM_BANK0_128MB
@@ -164,5 +164,5 @@ copy_loop:
 ret:
 #endif /* CONFIG_NAND_IMX_BOOT */
 
-	b	board_init_lowlevel_return
+	b	imx31_barebox_entry
 
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index ff4089a..3b7afa8 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -238,6 +238,6 @@ console_initcall(imx31_console_init);
 void __bare_init nand_boot(void)
 {
 	imx_nand_load_image(_text, barebox_image_size);
-	board_init_lowlevel_return();
+	imx31_barebox_entry();
 }
 #endif
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 2f93c31..b2a47ac 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -39,7 +39,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx27_barebox_entry(0);
 }
 #endif
 
@@ -63,7 +63,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0xa0000000 && r < 0xb0000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* re-program the PLL prior(!) starting the SDRAM controller */
 	writel(MPCTL0_VAL, MX27_CCM_BASE_ADDR + MX27_MPCTL0);
@@ -111,7 +111,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX27_NFC_BASE_ADDR || r > MX27_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX27_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -123,8 +123,8 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx27_barebox_entry(0);
 }
 
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 06f05ab..a99fe74 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -56,7 +56,7 @@ static void __bare_init __naked insdram(void)
 
 	imx_nand_load_image(_text, barebox_image_size);
 
-	board_init_lowlevel_return();
+	imx35_barebox_entry(0);
 }
 #endif
 
@@ -140,7 +140,7 @@ void __bare_init __naked reset(void)
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
 	if (r > 0x80000000 && r < 0x90000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	/* Set DDR Type to SDRAM, drive strength workaround	*
 	 * 0x00000000	MDDR					*
@@ -209,7 +209,7 @@ void __bare_init __naked reset(void)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < MX35_NFC_BASE_ADDR || r > MX35_NFC_BASE_ADDR + 0x800)
-		board_init_lowlevel_return();
+		goto out;
 
 	src = (unsigned int *)MX35_NFC_BASE_ADDR;
 	trg = (unsigned int *)_text;
@@ -221,8 +221,7 @@ void __bare_init __naked reset(void)
 	/* Jump to SDRAM */
 	r = (unsigned int)&insdram;
 	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-#else
-	board_init_lowlevel_return();
 #endif
+out:
+	imx35_barebox_entry(0);
 }
-
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
index 8f0000f..95bc024 100644
--- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
+++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
@@ -81,7 +81,7 @@ reset:
 	cmp	pc, #0xc0000000
 	bhi	1f
 
-	b	board_init_lowlevel_return
+	b	imx27_barebox_entry
 
 1:
 	/* 399 MHz */
@@ -133,10 +133,9 @@ copy_loop:
 	ldr	r0,=_text
 	ldr	r1,=_barebox_image_size
 	bl	imx_nand_load_image
-	b	board_init_lowlevel_return
 
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
