Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwUdV-0003i4-Dd
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:55:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jul 2013 11:54:41 +0200
Message-Id: <1373363682-24449-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: i.MX: External Nand boot: remove ifdefs
To: barebox@lists.infradead.org

Instead of ifdeffing out the correct NFC base address just pass
it to imx_nand_load_image which is called from SoC specific
context anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 30 ++++++++----------------------
 1 file changed, 8 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index c91ed2e..7280b5b 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -129,11 +129,12 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs,
 	imx_nandboot_send_page(regs, NFC_OUTPUT, pagesize_2k);
 }
 
-void __bare_init imx_nand_load_image(void *dest, int size, int pagesize_2k)
+void __bare_init imx_nand_load_image(void *dest, int size, void __iomem *base,
+		int pagesize_2k)
 {
 	u32 tmp, page, block, blocksize, pagesize, badblocks;
 	int bbt = 0;
-	void *regs, *base, *spare0;
+	void *regs, *spare0;
 
 	if (pagesize_2k) {
 		pagesize = 2048;
@@ -143,21 +144,6 @@ void __bare_init imx_nand_load_image(void *dest, int size, int pagesize_2k)
 		blocksize = 16 * 1024;
 	}
 
-#ifdef CONFIG_ARCH_IMX21
-	base = (void __iomem *)MX21_NFC_BASE_ADDR;
-#endif
-#ifdef CONFIG_ARCH_IMX25
-	base = (void __iomem *)MX25_NFC_BASE_ADDR;
-#endif
-#ifdef CONFIG_ARCH_IMX27
-	base = (void __iomem *)MX27_NFC_BASE_ADDR;
-#endif
-#ifdef CONFIG_ARCH_IMX31
-	base = (void __iomem *)MX31_NFC_BASE_ADDR;
-#endif
-#ifdef CONFIG_ARCH_IMX35
-	base = (void __iomem *)MX35_NFC_BASE_ADDR;
-#endif
 	if (nfc_is_v21()) {
 		regs = base + 0x1e00;
 		spare0 = base + 0x1000;
@@ -312,7 +298,7 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(barebox_image_size),
-				pagesize_2k);
+				(void *)nfc_base, pagesize_2k);
 	}
 
 	imx21_barebox_entry(0);
@@ -335,7 +321,7 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
-				pagesize_2k);
+				(void *)nfc_base, pagesize_2k);
 	}
 
 	imx25_barebox_entry(0);
@@ -358,7 +344,7 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
-				pagesize_2k);
+				(void *)nfc_base, pagesize_2k);
 	}
 
 	imx27_barebox_entry(0);
@@ -381,7 +367,7 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
-				pagesize_2k);
+				(void *)nfc_base, pagesize_2k);
 	}
 
 	imx31_barebox_entry(0);
@@ -404,7 +390,7 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
-				pagesize_2k);
+				(void *)nfc_base, pagesize_2k);
 	}
 
 	imx35_barebox_entry(0);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
