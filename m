Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUdV-0003i3-DZ
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:39 +0200
Message-Id: <1373363682-24449-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
References: <1373363682-24449-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: i.MX: External Nand boot: move pagesize detection
 into SoC specific code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 90 ++++++++++++++++++----------------
 1 file changed, 47 insertions(+), 43 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 1f35e72..2e4e4d0 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -121,40 +121,6 @@ static void __bare_init __memcpy32(void *trg, const void *src, int size)
 		*t++ = *s++;
 }
 
-static int __maybe_unused is_pagesize_2k(void)
-{
-#ifdef CONFIG_ARCH_IMX21
-	if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-		return 1;
-	else
-		return 0;
-#endif
-#if defined(CONFIG_ARCH_IMX25)
-	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
-		return 1;
-	else
-		return 0;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-		return 1;
-	else
-		return 0;
-#endif
-#ifdef CONFIG_ARCH_IMX31
-	if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
-		return 1;
-	else
-		return 0;
-#endif
-#if defined(CONFIG_ARCH_IMX35)
-	if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
-		return 1;
-	else
-		return 0;
-#endif
-}
-
 static noinline void __bare_init imx_nandboot_get_page(void *regs,
 		u32 offs, int pagesize_2k)
 {
@@ -163,14 +129,12 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs,
 	imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
 }
 
-void __bare_init imx_nand_load_image(void *dest, int size)
+void __bare_init imx_nand_load_image(void *dest, int size, int pagesize_2k)
 {
 	u32 tmp, page, block, blocksize, pagesize, badblocks;
-	int pagesize_2k = 1, bbt = 0;
+	int bbt = 0;
 	void *regs, *base, *spare0;
 
-	pagesize_2k = is_pagesize_2k();
-
 	if (pagesize_2k) {
 		pagesize = 2048;
 		blocksize = 128 * 1024;
@@ -336,11 +300,19 @@ int __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
+	int pagesize_2k;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
+
+		if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
+			pagesize_2k = 1;
+		else
+			pagesize_2k = 0;
+
 		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(barebox_image_size));
+				ld_var(barebox_image_size),
+				pagesize_2k);
 	}
 
 	imx21_barebox_entry(0);
@@ -351,11 +323,19 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
+	int pagesize_2k;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
+
+		if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
+			pagesize_2k = 1;
+		else
+			pagesize_2k = 0;
+
 		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size));
+				ld_var(_barebox_image_size),
+				pagesize_2k);
 	}
 
 	imx25_barebox_entry(0);
@@ -366,11 +346,19 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
+	int pagesize_2k;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
+
+		if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
+			pagesize_2k = 1;
+		else
+			pagesize_2k = 0;
+
 		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size));
+				ld_var(_barebox_image_size),
+				pagesize_2k);
 	}
 
 	imx27_barebox_entry(0);
@@ -381,11 +369,19 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
+	int pagesize_2k;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
+
+		if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
+			pagesize_2k = 1;
+		else
+			pagesize_2k = 0;
+
 		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size));
+				ld_var(_barebox_image_size),
+				pagesize_2k);
 	}
 
 	imx31_barebox_entry(0);
@@ -396,11 +392,19 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 {
 	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
+	int pagesize_2k;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
+
+		if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
+			pagesize_2k = 1;
+		else
+			pagesize_2k = 0;
+
 		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size));
+				ld_var(_barebox_image_size),
+				pagesize_2k);
 	}
 
 	imx35_barebox_entry(0);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
