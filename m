Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnUt-0004e8-3n
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 15:20:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id x13so50820plr.9
 for <barebox@lists.infradead.org>; Mon, 02 Dec 2019 07:20:22 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  2 Dec 2019 07:19:48 -0800
Message-Id: <20191202151954.16032-7-andrew.smirnov@gmail.com>
In-Reply-To: <20191202151954.16032-1-andrew.smirnov@gmail.com>
References: <20191202151954.16032-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/12] mci: imx-esdhc-pbl: Drop 'wrap_wml' flag
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

IMX_SDHCI_WML doesn't change its value during PBL opearation, so it
should be possible to configure it once. Doing it once also allows us
to move the call into SoC specific code making 'wrap_wml' flag
unnecessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc-pbl.c | 26 +++++++++-----------------
 1 file changed, 9 insertions(+), 17 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index d5d83d18e..e81f0f107 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -34,7 +34,6 @@ struct esdhc {
 	void __iomem *regs;
 	bool is_mx6;
 	bool is_be;
-	bool wrap_wml;
 };
 
 static uint32_t esdhc_read32(struct esdhc *esdhc, int reg)
@@ -204,7 +203,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
-	u32 val, wml;
+	u32 val;
 	int ret;
 
 	esdhc_write32(esdhc, SDHCI_INT_ENABLE,
@@ -213,19 +212,6 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 		      SDHCI_INT_END_BIT | SDHCI_INT_INDEX | SDHCI_INT_DATA_TIMEOUT |
 		      SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_END_BIT | SDHCI_INT_DMA);
 
-	wml = FIELD_PREP(WML_WR_BRST_LEN, 16)         |
-	      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
-	      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
-	      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML);
-	/*
-	 * Some SoCs intrpret 0 as MAX value so for those cases the
-	 * above value translates to zero
-	 */
-	if (esdhc->wrap_wml)
-		wml = 0;
-
-	esdhc_write32(esdhc, IMX_SDHCI_WML, wml);
-
 	val = esdhc_read32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val |= SYSCTL_HCKEN | SYSCTL_IPGEN;
 	esdhc_write32(esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
@@ -369,7 +355,12 @@ static void imx_esdhc_init(struct esdhc *esdhc)
 {
 	esdhc->is_be = 0;
 	esdhc->is_mx6 = 1;
-	esdhc->wrap_wml = false;
+
+	esdhc_write32(esdhc, IMX_SDHCI_WML,
+		      FIELD_PREP(WML_WR_BRST_LEN, 16)         |
+		      FIELD_PREP(WML_WR_WML_MASK, SECTOR_WML) |
+		      FIELD_PREP(WML_RD_BRST_LEN, 16)         |
+		      FIELD_PREP(WML_RD_WML_MASK, SECTOR_WML));
 }
 
 static int imx8_esdhc_init(struct esdhc *esdhc, int instance)
@@ -520,12 +511,13 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 	struct esdhc esdhc = {
 		.regs = IOMEM(0x01560000),
 		.is_be = true,
-		.wrap_wml = true,
 	};
 	unsigned long sdram = 0x80000000;
 	void (*barebox)(unsigned long, unsigned long, unsigned long) =
 		(void *)(sdram + LS1046A_SD_IMAGE_OFFSET);
 
+	esdhc_write32(&esdhc, IMX_SDHCI_WML, 0);
+
 	/*
 	 * The ROM leaves us here with a clock frequency of around 400kHz. Speed
 	 * this up a bit. FIXME: The resulting frequency has not yet been verified
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
