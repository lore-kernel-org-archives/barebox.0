Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Iq-Jw
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:20 +0100
Message-Id: <1389971012-22977-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
References: <1389971012-22977-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/22] ARM: i.MX: external NAND boot: create function macro
 for different SoCs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 112 +++++++--------------------------
 1 file changed, 23 insertions(+), 89 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index a1221c8..4d86ab9 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -329,95 +329,29 @@ static inline int imx35_pagesize_2k(void)
  * NAND. In this case the booting is continued without loading an image from
  * NAND. This function needs a stack to be set up.
  */
-#ifdef BROKEN
-BARE_INIT_FUNCTION(imx21_barebox_boot_nand_external)(void)
-{
-	unsigned long nfc_base = MX21_NFC_BASE_ADDR;
-	int pagesize_2k;
-
-	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - ld_var(_text));
-
-		pagesize_2k = imx21_pagesize_2k();
-
-		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(barebox_image_size),
-				(void *)nfc_base, pagesize_2k);
-	}
-
-	/* This function doesn't exist yet */
-	imx21_barebox_entry(0);
-}
-#endif
-
-BARE_INIT_FUNCTION(imx25_barebox_boot_nand_external)(void)
-{
-	unsigned long nfc_base = MX25_NFC_BASE_ADDR;
-	int pagesize_2k;
-
-	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - ld_var(_text));
-
-		pagesize_2k = imx25_pagesize_2k();
-
-		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size),
-				(void *)nfc_base, pagesize_2k);
-	}
-
-	imx25_barebox_entry(0);
-}
-
-BARE_INIT_FUNCTION(imx27_barebox_boot_nand_external)(void)
-{
-	unsigned long nfc_base = MX27_NFC_BASE_ADDR;
-	int pagesize_2k;
-
-	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - ld_var(_text));
 
-		pagesize_2k = imx27_pagesize_2k();
-
-		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size),
-				(void *)nfc_base, pagesize_2k);
-	}
-
-	imx27_barebox_entry(0);
-}
-
-BARE_INIT_FUNCTION(imx31_barebox_boot_nand_external)(void)
-{
-	unsigned long nfc_base = MX31_NFC_BASE_ADDR;
-	int pagesize_2k;
-
-	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - ld_var(_text));
-
-		pagesize_2k = imx31_pagesize_2k();
-
-		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size),
-				(void *)nfc_base, pagesize_2k);
-	}
-
-	imx31_barebox_entry(0);
+#define DEFINE_EXTERNAL_NAND_ENTRY(soc)					\
+									\
+BARE_INIT_FUNCTION(imx##soc##_barebox_boot_nand_external)(void)		\
+{									\
+	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
+									\
+	if (imx_barebox_boot_nand_external(nfc_base)) {			\
+		jump_sdram(nfc_base - ld_var(_text));			\
+									\
+		imx_nand_load_image((void *)ld_var(_text),		\
+				ld_var(_barebox_image_size),		\
+				(void *)nfc_base,			\
+				imx##soc##_pagesize_2k());		\
+	}								\
+									\
+	imx##soc##_barebox_entry(0);					\
 }
 
-BARE_INIT_FUNCTION(imx35_barebox_boot_nand_external)(void)
-{
-	unsigned long nfc_base = MX35_NFC_BASE_ADDR;
-	int pagesize_2k;
-
-	if (imx_barebox_boot_nand_external(nfc_base)) {
-		jump_sdram(nfc_base - ld_var(_text));
-
-		pagesize_2k = imx35_pagesize_2k();
-
-		imx_nand_load_image((void *)ld_var(_text),
-				ld_var(_barebox_image_size),
-				(void *)nfc_base, pagesize_2k);
-	}
-
-	imx35_barebox_entry(0);
-}
+#ifdef BROKEN
+DEFINE_EXTERNAL_NAND_ENTRY(21)
+#endif
+DEFINE_EXTERNAL_NAND_ENTRY(25)
+DEFINE_EXTERNAL_NAND_ENTRY(27)
+DEFINE_EXTERNAL_NAND_ENTRY(31)
+DEFINE_EXTERNAL_NAND_ENTRY(35)
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
