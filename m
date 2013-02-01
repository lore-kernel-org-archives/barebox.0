Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXL-00045A-W9
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 07:59:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:18 +0100
Message-Id: <1359705587-9762-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/34] ARM i.MX: prepare external nand boot for SoC specific
 entry
To: barebox@lists.infradead.org

i.MX will get SoC specific entry points for barebox. To find the
correct one we have to call these from the SoC specific
imx*_barebox_boot_nand_external functions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c    |   73 +++++++++++++++++++++--------
 arch/arm/mach-imx/include/mach/imx-nand.h |    1 -
 2 files changed, 53 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 39ffb94..c97fec9 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -259,14 +259,19 @@ void __bare_init imx_nand_load_image(void *dest, int size)
 }
 
 /*
- * We are now running at the address we are linked at. Now load the image from
- * NAND to SDRAM and continue booting.
+ * This function assumes the currently running binary has been
+ * copied from its current position to an offset. It returns
+ * to the calling function - offset.
+ * NOTE: The calling function may not return itself since it still
+ * works on the old content of the lr register. Only call this
+ * from a __noreturn function.
  */
-static void __bare_init __naked insdram(void)
+static __bare_init __naked void jump_sdram(unsigned long offset)
 {
-	imx_nand_load_image((void *)_text, barebox_image_size);
-
-	board_init_lowlevel_return();
+	__asm__ __volatile__ (
+			"sub lr, lr, %0;"
+			"mov pc, lr;" : : "r"(offset)
+			);
 }
 
 /*
@@ -274,7 +279,7 @@ static void __bare_init __naked insdram(void)
  * running inside the NFC address space. If not, barebox is started from the
  * currently running address without loading anything from NAND.
  */
-void __bare_init __noreturn imx_barebox_boot_nand_external(unsigned long nfc_base)
+void __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 {
 	u32 r;
 	u32 *src, *trg;
@@ -283,7 +288,7 @@ void __bare_init __noreturn imx_barebox_boot_nand_external(unsigned long nfc_bas
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < nfc_base || r > nfc_base + 0x800)
-		board_init_lowlevel_return();
+		return;
 
 	src = (unsigned int *)nfc_base;
 	trg = (unsigned int *)_text;
@@ -291,13 +296,6 @@ void __bare_init __noreturn imx_barebox_boot_nand_external(unsigned long nfc_bas
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
 		*trg++ = *src++;
-
-	/* Jump to SDRAM */
-	r = (unsigned int)&insdram;
-	__asm__ __volatile__("mov pc, %0" : : "r"(r));
-
-	/* not reached */
-	while (1);
 }
 
 /*
@@ -306,30 +304,65 @@ void __bare_init __noreturn imx_barebox_boot_nand_external(unsigned long nfc_bas
  * NAND. In this case the booting is continued without loading an image from
  * NAND. This function needs a stack to be set up.
  */
+#ifdef CONFIG_ARCH_IMX21
 void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 {
-	imx_barebox_boot_nand_external(MX21_NFC_BASE_ADDR);
+	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
+
+	imx_barebox_boot_nand_external(nfc_base);
+	jump_sdram(nfc_base - (unsigned long)_text);
+	imx_nand_load_image((void *)_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
+#endif
 
+#ifdef CONFIG_ARCH_IMX25
 void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 {
-	imx_barebox_boot_nand_external(MX25_NFC_BASE_ADDR);
+	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
+
+	imx_barebox_boot_nand_external(nfc_base);
+	jump_sdram(nfc_base - (unsigned long)_text);
+	imx_nand_load_image((void *)_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
+#endif
 
+#ifdef CONFIG_ARCH_IMX27
 void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 {
-	imx_barebox_boot_nand_external(MX27_NFC_BASE_ADDR);
+	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
+
+	imx_barebox_boot_nand_external(nfc_base);
+	jump_sdram(nfc_base - (unsigned long)_text);
+	imx_nand_load_image((void *)_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
+#endif
 
+#ifdef CONFIG_ARCH_IMX31
 void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 {
-	imx_barebox_boot_nand_external(MX31_NFC_BASE_ADDR);
+	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
+
+	imx_barebox_boot_nand_external(nfc_base);
+	jump_sdram(nfc_base - (unsigned long)_text);
+	imx_nand_load_image((void *)_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
+#endif
 
+#ifdef CONFIG_ARCH_IMX35
 void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 {
-	imx_barebox_boot_nand_external(MX35_NFC_BASE_ADDR);
+	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
+
+	imx_barebox_boot_nand_external(nfc_base);
+	jump_sdram(nfc_base - (unsigned long)_text);
+	imx_nand_load_image((void *)_text, barebox_image_size);
+	board_init_lowlevel_return();
 }
+#endif
 
 #define CONFIG_NAND_IMX_BOOT_DEBUG
 #ifdef CONFIG_NAND_IMX_BOOT_DEBUG
diff --git a/arch/arm/mach-imx/include/mach/imx-nand.h b/arch/arm/mach-imx/include/mach/imx-nand.h
index a1f209e..8352d79 100644
--- a/arch/arm/mach-imx/include/mach/imx-nand.h
+++ b/arch/arm/mach-imx/include/mach/imx-nand.h
@@ -3,7 +3,6 @@
 
 #include <linux/mtd/mtd.h>
 
-void imx_nand_load_image(void *dest, int size);
 void imx21_barebox_boot_nand_external(void);
 void imx25_barebox_boot_nand_external(void);
 void imx27_barebox_boot_nand_external(void);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
