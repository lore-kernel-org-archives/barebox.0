Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwxHJ-0004xH-7z
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:57:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:57:45 +0100
Message-Id: <1358697466-26941-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358697466-26941-1-git-send-email-s.hauer@pengutronix.de>
References: <1358697466-26941-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX: Add a common NAND entry for external boot mode
To: barebox@lists.infradead.org

The pattern for i.MX boards starting in external NAND boot mode is always
the same:

- Check if we are running in NFC address space, if not call
  board_init_lowlevel_return()
- copy binary to link address
- execute relocated binary
- call imx_nand_load_image()

Add a common function for this to make the board code easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c    |   75 +++++++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/imx-nand.h |    5 ++
 2 files changed, 80 insertions(+)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 2e9e475..39ffb94 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -15,6 +15,8 @@
 #include <init.h>
 #include <io.h>
 #include <linux/mtd/nand.h>
+#include <asm/sections.h>
+#include <asm/barebox-arm.h>
 #include <mach/imx-nand.h>
 #include <mach/generic.h>
 #include <mach/imx21-regs.h>
@@ -256,6 +258,79 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 	}
 }
 
+/*
+ * We are now running at the address we are linked at. Now load the image from
+ * NAND to SDRAM and continue booting.
+ */
+static void __bare_init __naked insdram(void)
+{
+	imx_nand_load_image((void *)_text, barebox_image_size);
+
+	board_init_lowlevel_return();
+}
+
+/*
+ * Load and start barebox from NAND. This function also checks if we are really
+ * running inside the NFC address space. If not, barebox is started from the
+ * currently running address without loading anything from NAND.
+ */
+void __bare_init __noreturn imx_barebox_boot_nand_external(unsigned long nfc_base)
+{
+	u32 r;
+	u32 *src, *trg;
+	int i;
+
+	/* skip NAND boot if not running from NFC space */
+	r = get_pc();
+	if (r < nfc_base || r > nfc_base + 0x800)
+		board_init_lowlevel_return();
+
+	src = (unsigned int *)nfc_base;
+	trg = (unsigned int *)_text;
+
+	/* Move ourselves out of NFC SRAM */
+	for (i = 0; i < 0x800 / sizeof(int); i++)
+		*trg++ = *src++;
+
+	/* Jump to SDRAM */
+	r = (unsigned int)&insdram;
+	__asm__ __volatile__("mov pc, %0" : : "r"(r));
+
+	/* not reached */
+	while (1);
+}
+
+/*
+ * SoC specific entries for booting in external NAND mode. To be called from
+ * the board specific entry code. This is safe to call even if not booting from
+ * NAND. In this case the booting is continued without loading an image from
+ * NAND. This function needs a stack to be set up.
+ */
+void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
+{
+	imx_barebox_boot_nand_external(MX21_NFC_BASE_ADDR);
+}
+
+void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
+{
+	imx_barebox_boot_nand_external(MX25_NFC_BASE_ADDR);
+}
+
+void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
+{
+	imx_barebox_boot_nand_external(MX27_NFC_BASE_ADDR);
+}
+
+void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
+{
+	imx_barebox_boot_nand_external(MX31_NFC_BASE_ADDR);
+}
+
+void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
+{
+	imx_barebox_boot_nand_external(MX35_NFC_BASE_ADDR);
+}
+
 #define CONFIG_NAND_IMX_BOOT_DEBUG
 #ifdef CONFIG_NAND_IMX_BOOT_DEBUG
 #include <command.h>
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index fb753cf..a1f209e 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -4,6 +4,11 @@
 #include <linux/mtd/mtd.h>
 
 void imx_nand_load_image(void *dest, int size);
+void imx21_barebox_boot_nand_external(void);
+void imx25_barebox_boot_nand_external(void);
+void imx27_barebox_boot_nand_external(void);
+void imx31_barebox_boot_nand_external(void);
+void imx35_barebox_boot_nand_external(void);
 void imx_nand_set_layout(int writesize, int datawidth);
 
 struct imx_nand_platform_data {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
