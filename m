Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxk-0001qX-Fs
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:20 +0100
Message-Id: <20190206074921.11115-8-s.hauer@pengutronix.de>
In-Reply-To: <20190206074921.11115-1-s.hauer@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] mci: imx-esdhc: Add bigendian register access support
To: Barebox List <barebox@lists.infradead.org>

Layerscape will need bigendian io accessors. Add support for them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index b7d5c01fb5..58c262782f 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -67,6 +67,9 @@
 #define ESDHC_FLAG_STD_TUNING		BIT(5)
 /* The IP has SDHCI_CAPABILITIES_1 register */
 #define ESDHC_FLAG_HAVE_CAP1		BIT(6)
+/* Need to access registers in bigendian mode */
+#define ESDHC_FLAG_BIGENDIAN		BIT(7)
+
 /*
  * The IP has errata ERR004536
  * uSDHC: ADMA Length Mismatch Error occurs if the AHB read access is slow,
@@ -108,13 +111,19 @@ static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 
 static inline u32 esdhc_read32(struct fsl_esdhc_host *host, unsigned int reg)
 {
-	return readl(host->regs + reg);
+	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN)
+		return in_be32(host->regs + reg);
+	else
+		return readl(host->regs + reg);
 }
 
 static inline void esdhc_write32(struct fsl_esdhc_host *host, unsigned int reg,
 				 u32 val)
 {
-	writel(val, host->regs + reg);
+	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN)
+		out_be32(host->regs + reg, val);
+	else
+		writel(val, host->regs + reg);
 }
 
 static inline void esdhc_clrsetbits32(struct fsl_esdhc_host *host, unsigned int reg,
@@ -591,7 +600,6 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 {
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
 	int ret;
 
 	ret = esdhc_reset(host);
@@ -607,9 +615,10 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
-	writel(IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
-			IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
-			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT, regs + SDHCI_INT_ENABLE);
+	esdhc_write32(host, SDHCI_INT_ENABLE, IRQSTATEN_CC | IRQSTATEN_TC |
+			IRQSTATEN_CINT | IRQSTATEN_CTOE | IRQSTATEN_CCE |
+			IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
+			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT);
 
 	/* Put the PROCTL reg back to the default */
 	esdhc_write32(host, SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
