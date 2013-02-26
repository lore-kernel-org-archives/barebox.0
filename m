Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAHL5-0007Xu-Va
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 10:00:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 11:00:41 +0100
Message-Id: <1361872842-2336-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM i.MX: Fix booting from NOR when external nand boot is
 enabled
To: barebox@lists.infradead.org

We cannot jump to SDRAM unconditionally in imx*_barebox_boot_nand_external.
When we really boot from NOR flash the binary is not yet copied to SDRAM.
Instead, let the return value of imx_barebox_boot_nand_external() indicate
whether we really boot from NAND and only jump to SDRAM in this case.
Otherwise just continue to the normal SoC specific entry.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c |   46 ++++++++++++++++++++------------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 2c353d7..73c4ccd 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -280,7 +280,7 @@ static __bare_init __naked void jump_sdram(unsigned long offset)
  * running inside the NFC address space. If not, barebox is started from the
  * currently running address without loading anything from NAND.
  */
-void __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
+int __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 {
 	u32 r;
 	u32 *src, *trg;
@@ -289,7 +289,7 @@ void __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 	/* skip NAND boot if not running from NFC space */
 	r = get_pc();
 	if (r < nfc_base || r > nfc_base + 0x800)
-		return;
+		return 0;
 
 	src = (unsigned int *)nfc_base;
 	trg = (unsigned int *)_text;
@@ -297,6 +297,8 @@ void __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
 		*trg++ = *src++;
+
+	return 1;
 }
 
 /*
@@ -310,9 +312,11 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
 
-	imx_barebox_boot_nand_external(nfc_base);
-	jump_sdram(nfc_base - (unsigned long)_text);
-	imx_nand_load_image((void *)_text, barebox_image_size);
+	if (imx_barebox_boot_nand_external(nfc_base)) {
+		jump_sdram(nfc_base - (unsigned long)_text);
+		imx_nand_load_image((void *)_text, barebox_image_size);
+	}
+
 	imx21_barebox_entry(0);
 }
 #endif
@@ -322,9 +326,11 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
 
-	imx_barebox_boot_nand_external(nfc_base);
-	jump_sdram(nfc_base - (unsigned long)_text);
-	imx_nand_load_image((void *)_text, barebox_image_size);
+	if (imx_barebox_boot_nand_external(nfc_base)) {
+		jump_sdram(nfc_base - (unsigned long)_text);
+		imx_nand_load_image((void *)_text, barebox_image_size);
+	}
+
 	imx25_barebox_entry(0);
 }
 #endif
@@ -334,9 +340,11 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
 
-	imx_barebox_boot_nand_external(nfc_base);
-	jump_sdram(nfc_base - (unsigned long)_text);
-	imx_nand_load_image((void *)_text, barebox_image_size);
+	if (imx_barebox_boot_nand_external(nfc_base)) {
+		jump_sdram(nfc_base - (unsigned long)_text);
+		imx_nand_load_image((void *)_text, barebox_image_size);
+	}
+
 	imx27_barebox_entry(0);
 }
 #endif
@@ -346,9 +354,11 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
 
-	imx_barebox_boot_nand_external(nfc_base);
-	jump_sdram(nfc_base - (unsigned long)_text);
-	imx_nand_load_image((void *)_text, barebox_image_size);
+	if (imx_barebox_boot_nand_external(nfc_base)) {
+		jump_sdram(nfc_base - (unsigned long)_text);
+		imx_nand_load_image((void *)_text, barebox_image_size);
+	}
+
 	imx31_barebox_entry(0);
 }
 #endif
@@ -358,9 +368,11 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
 
-	imx_barebox_boot_nand_external(nfc_base);
-	jump_sdram(nfc_base - (unsigned long)_text);
-	imx_nand_load_image((void *)_text, barebox_image_size);
+	if (imx_barebox_boot_nand_external(nfc_base)) {
+		jump_sdram(nfc_base - (unsigned long)_text);
+		imx_nand_load_image((void *)_text, barebox_image_size);
+	}
+
 	imx35_barebox_entry(0);
 }
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
