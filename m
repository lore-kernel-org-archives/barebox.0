Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCbbU-0005a8-On
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 20:03:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 21:03:07 +0100
Message-Id: <1362427389-2144-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM boards: Use accessor functions to access linker
 variables
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |  3 ++-
 arch/arm/mach-imx/external-nand-boot.c         | 27 +++++++++++++++-----------
 drivers/mtd/nand/nand_s3c24xx.c                |  2 +-
 3 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
index 1da7ba8..3bd1379 100644
--- a/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
+++ b/arch/arm/boards/friendlyarm-tiny210/lowlevel.c
@@ -67,7 +67,8 @@ void __bare_init barebox_arm_reset_vector(void)
 
 	s5p_init_dram_bank_ddr2(S5P_DMC0_BASE, 0x20E00323, 0, 0);
 
-	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1, (barebox_image_size + 16 + 511) / 512))
+	if (! s5p_irom_load_mmc((void*)TEXT_BASE - 16, 1,
+				(ld_var(_barebox_image_size) + 16 + 511) / 512))
 		while (1) { } /* hang */
 
 	/* Jump to SDRAM */
diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 73c4ccd..3ac1132 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -292,7 +292,7 @@ int __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 		return 0;
 
 	src = (unsigned int *)nfc_base;
-	trg = (unsigned int *)_text;
+	trg = (unsigned int *)ld_var(_text);
 
 	/* Move ourselves out of NFC SRAM */
 	for (i = 0; i < 0x800 / sizeof(int); i++)
@@ -313,8 +313,9 @@ void __bare_init __noreturn imx21_barebox_boot_nand_external(void)
 	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - (unsigned long)_text);
-		imx_nand_load_image((void *)_text, barebox_image_size);
+		jump_sdram(nfc_base - ld_var(_text));
+		imx_nand_load_image((void *)ld_var(_text),
+				ld_var(barebox_image_size));
 	}
 
 	imx21_barebox_entry(0);
@@ -327,8 +328,9 @@ void __bare_init __noreturn imx25_barebox_boot_nand_external(void)
 	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - (unsigned long)_text);
-		imx_nand_load_image((void *)_text, barebox_image_size);
+		jump_sdram(nfc_base - ld_var(_text));
+		imx_nand_load_image((void *)ld_var(_text),
+				ld_var(_barebox_image_size));
 	}
 
 	imx25_barebox_entry(0);
@@ -341,8 +343,9 @@ void __bare_init __noreturn imx27_barebox_boot_nand_external(void)
 	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - (unsigned long)_text);
-		imx_nand_load_image((void *)_text, barebox_image_size);
+		jump_sdram(nfc_base - ld_var(_text));
+		imx_nand_load_image((void *)ld_var(_text),
+				ld_var(_barebox_image_size));
 	}
 
 	imx27_barebox_entry(0);
@@ -355,8 +358,9 @@ void __bare_init __noreturn imx31_barebox_boot_nand_external(void)
 	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - (unsigned long)_text);
-		imx_nand_load_image((void *)_text, barebox_image_size);
+		jump_sdram(nfc_base - ld_var(_text));
+		imx_nand_load_image((void *)ld_var(_text),
+				ld_var(_barebox_image_size));
 	}
 
 	imx31_barebox_entry(0);
@@ -369,8 +373,9 @@ void __bare_init __noreturn imx35_barebox_boot_nand_external(void)
 	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
 
 	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - (unsigned long)_text);
-		imx_nand_load_image((void *)_text, barebox_image_size);
+		jump_sdram(nfc_base - ld_var(_text));
+		imx_nand_load_image((void *)ld_var(_text),
+				ld_var(_barebox_image_size));
 	}
 
 	imx35_barebox_entry(0);
diff --git a/drivers/mtd/nand/nand_s3c24xx.c b/drivers/mtd/nand/nand_s3c24xx.c
index fef9432..c2e41a9 100644
--- a/drivers/mtd/nand/nand_s3c24xx.c
+++ b/drivers/mtd/nand/nand_s3c24xx.c
@@ -607,7 +607,7 @@ void __nand_boot_init s3c24x0_nand_load_image(void *dest, int size, int page)
 void __nand_boot_init nand_boot(void)
 {
 	void *dest = _text;
-	int size = barebox_image_size;
+	int size = ld_var(_barebox_image_size);
 	int page = 0;
 
 	s3c24x0_nand_load_image(dest, size, page);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
