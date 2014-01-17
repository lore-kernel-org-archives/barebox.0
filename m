Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4Axf-0003Ip-Jk
 for barebox@lists.infradead.org; Fri, 17 Jan 2014 15:04:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 17 Jan 2014 16:03:19 +0100
Message-Id: <1389971012-22977-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/22] ARM: i.MX: external NAND boot: factor out a 2k pagesize
 detection function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 65 +++++++++++++++++++++++-----------
 1 file changed, 45 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index 1af46b7..a1221c8 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -279,6 +279,46 @@ int __bare_init imx_barebox_boot_nand_external(unsigned long nfc_base)
 	return 1;
 }
 
+static inline int imx21_pagesize_2k(void)
+{
+	if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
+		return 1;
+	else
+		return 0;
+}
+
+static inline int imx25_pagesize_2k(void)
+{
+	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
+		return 1;
+	else
+		return 0;
+}
+
+static inline int imx27_pagesize_2k(void)
+{
+	if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
+		return 1;
+	else
+		return 0;
+}
+
+static inline int imx31_pagesize_2k(void)
+{
+	if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
+		return 1;
+	else
+		return 0;
+}
+
+static inline int imx35_pagesize_2k(void)
+{
+	if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
+		return 1;
+	else
+		return 0;
+}
+
 #define BARE_INIT_FUNCTION(name)  \
 	void __noreturn __section(.text_bare_init_##name) \
 		name
@@ -298,10 +338,7 @@ BARE_INIT_FUNCTION(imx21_barebox_boot_nand_external)(void)
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
 
-		if (readl(MX21_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-			pagesize_2k = 1;
-		else
-			pagesize_2k = 0;
+		pagesize_2k = imx21_pagesize_2k();
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(barebox_image_size),
@@ -321,10 +358,7 @@ BARE_INIT_FUNCTION(imx25_barebox_boot_nand_external)(void)
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
 
-		if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
-			pagesize_2k = 1;
-		else
-			pagesize_2k = 0;
+		pagesize_2k = imx25_pagesize_2k();
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
@@ -342,10 +376,7 @@ BARE_INIT_FUNCTION(imx27_barebox_boot_nand_external)(void)
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
 
-		if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-			pagesize_2k = 1;
-		else
-			pagesize_2k = 0;
+		pagesize_2k = imx27_pagesize_2k();
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
@@ -363,10 +394,7 @@ BARE_INIT_FUNCTION(imx31_barebox_boot_nand_external)(void)
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
 
-		if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
-			pagesize_2k = 1;
-		else
-			pagesize_2k = 0;
+		pagesize_2k = imx31_pagesize_2k();
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
@@ -384,10 +412,7 @@ BARE_INIT_FUNCTION(imx35_barebox_boot_nand_external)(void)
 	if (imx_barebox_boot_nand_external(nfc_base)) {
 		jump_sdram(nfc_base - ld_var(_text));
 
-		if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
-			pagesize_2k = 1;
-		else
-			pagesize_2k = 0;
+		pagesize_2k = imx35_pagesize_2k();
 
 		imx_nand_load_image((void *)ld_var(_text),
 				ld_var(_barebox_image_size),
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
