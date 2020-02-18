Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wS-0004gI-Ok
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:30 +0100
Message-Id: <20200218153732.14845-5-s.hauer@pengutronix.de>
In-Reply-To: <20200218153732.14845-1-s.hauer@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] ARM: i.MX: external NAND boot: remove unnecessary
 arguments from imx*_nand_load_image
To: Barebox List <barebox@lists.infradead.org>

The imx*_nand_load_image functions all take dest, size, nfc_base and
pagesize_2k arguments. All of these can be guessed inside the functions,
so remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/external-nand-boot.c | 84 ++++++++++++--------------
 1 file changed, 39 insertions(+), 45 deletions(-)

diff --git a/arch/arm/mach-imx/external-nand-boot.c b/arch/arm/mach-imx/external-nand-boot.c
index c4d61aa786..de8e0ffe5d 100644
--- a/arch/arm/mach-imx/external-nand-boot.c
+++ b/arch/arm/mach-imx/external-nand-boot.c
@@ -134,12 +134,13 @@ static noinline void __bare_init imx_nandboot_get_page(void *regs, int v1,
 	imx_nandboot_send_page(regs, v1, NFC_OUTPUT, pagesize_2k);
 }
 
-static void __bare_init imx_nand_load_image(void *dest, int v1, int size,
+static void __bare_init imx_nand_load_image(void *dest, int v1,
 					    void __iomem *base, int pagesize_2k)
 {
 	u32 tmp, page, block, blocksize, pagesize, badblocks;
 	int bbt = 0;
 	void *regs, *spare0;
+	int size = *(uint32_t *)(dest + 0x2c);
 
 	if (pagesize_2k) {
 		pagesize = 2048;
@@ -239,60 +240,60 @@ static void __bare_init imx_nand_load_image(void *dest, int v1, int size,
 	}
 }
 
-static void BARE_INIT_FUNCTION(imx25_nand_load_image)(void *dest, int size,
-                void __iomem *base, int pagesize_2k)
+static void BARE_INIT_FUNCTION(imx25_nand_load_image)(void)
 {
-        imx_nand_load_image(dest, 0, size, base, pagesize_2k);
-}
-
-static void BARE_INIT_FUNCTION(imx27_nand_load_image)(void *dest, int size,
-                void __iomem *base, int pagesize_2k)
-{
-        imx_nand_load_image(dest, 1, size, base, pagesize_2k);
-}
-
-static void BARE_INIT_FUNCTION(imx31_nand_load_image)(void *dest, int size,
-                void __iomem *base, int pagesize_2k)
-{
-        imx_nand_load_image(dest, 1, size, base, pagesize_2k);
-}
-
-static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void *dest, int size,
-                void __iomem *base, int pagesize_2k)
-{
-        imx_nand_load_image(dest, 0, size, base, pagesize_2k);
-}
+	void *sdram = (void *)MX25_CSD0_BASE_ADDR;
+	void __iomem *nfc_base = IOMEM(MX25_NFC_BASE_ADDR);
+	bool pagesize_2k;
 
-static inline int imx25_pagesize_2k(void)
-{
 	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 8))
-		return 1;
+		pagesize_2k = true;
 	else
-		return 0;
+		pagesize_2k = false;
+
+	imx_nand_load_image(sdram, 0, nfc_base, pagesize_2k);
 }
 
-static inline int imx27_pagesize_2k(void)
+static void BARE_INIT_FUNCTION(imx27_nand_load_image)(void)
 {
+	void *sdram = (void *)MX27_CSD0_BASE_ADDR;
+	void __iomem *nfc_base = IOMEM(MX27_NFC_BASE_ADDR);
+	bool pagesize_2k;
+
 	if (readl(MX27_SYSCTRL_BASE_ADDR + 0x14) & (1 << 5))
-		return 1;
+		pagesize_2k = true;
 	else
-		return 0;
+		pagesize_2k = false;
+
+	imx_nand_load_image(sdram, 1, nfc_base, pagesize_2k);
 }
 
-static inline int imx31_pagesize_2k(void)
+static void BARE_INIT_FUNCTION(imx31_nand_load_image)(void)
 {
+	void *sdram = (void *)MX31_CSD0_BASE_ADDR;
+	void __iomem *nfc_base = IOMEM(MX31_NFC_BASE_ADDR);
+	bool pagesize_2k;
+
 	if (readl(MX31_CCM_BASE_ADDR + MX31_CCM_RCSR) & MX31_RCSR_NFMS)
-		return 1;
+		pagesize_2k = true;
 	else
-		return 0;
+		pagesize_2k = false;
+
+	imx_nand_load_image(sdram, 1, nfc_base, pagesize_2k);
 }
 
-static inline int imx35_pagesize_2k(void)
+static void BARE_INIT_FUNCTION(imx35_nand_load_image)(void)
 {
+	void *sdram = (void *)MX35_CSD0_BASE_ADDR;
+	void __iomem *nfc_base = IOMEM(MX35_NFC_BASE_ADDR);
+	bool pagesize_2k;
+
 	if (readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR) & (1 << 8))
-		return 1;
+		pagesize_2k = true;
 	else
-		return 0;
+		pagesize_2k = false;
+
+	imx_nand_load_image(sdram, 0, nfc_base, pagesize_2k);
 }
 
 /*
@@ -307,20 +308,13 @@ static inline int imx35_pagesize_2k(void)
 static void __noreturn BARE_INIT_FUNCTION(imx##soc##_boot_nand_external_cont)  \
 			(void *boarddata)				\
 {									\
-	unsigned long nfc_base = MX##soc##_NFC_BASE_ADDR;		\
-	void *sdram = (void *)MX##soc##_CSD0_BASE_ADDR;			\
-	uint32_t image_size, r;						\
-									\
-	image_size = *(uint32_t *)(sdram + 0x2c);			\
+	uint32_t r;							\
 									\
 	r = get_cr();							\
 	r |= CR_I;							\
 	set_cr(r);							\
 									\
-	imx##soc##_nand_load_image(sdram,				\
-			image_size,					\
-			(void *)nfc_base,				\
-			imx##soc##_pagesize_2k());			\
+	imx##soc##_nand_load_image();					\
 									\
         imx##soc##_barebox_entry(boarddata);				\
 }									\
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
