Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grHxU-0001d3-Q6
 for barebox@lists.infradead.org; Wed, 06 Feb 2019 07:49:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Feb 2019 08:49:14 +0100
Message-Id: <20190206074921.11115-2-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/8] mci: imx-esdhc: Do not reset twice
To: Barebox List <barebox@lists.infradead.org>

The esdhc controller is resetted once during probe by calling
esdhc_reset() and once open coded in esdhc_init(). Resetting it once is
enough, so drop the open coded reset from esdhc_init() and call
esdhc_reset() there. With this we can remove the call to esdhc_reset()
during probe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 81 +++++++++++++++++------------------------
 1 file changed, 34 insertions(+), 47 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 09df7945cb..a33d654f38 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -519,46 +519,6 @@ static int esdhc_card_present(struct mci_host *mci)
 	return 0;
 }
 
-static int esdhc_init(struct mci_host *mci, struct device_d *dev)
-{
-	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
-	void __iomem *regs = host->regs;
-	int timeout = 1000;
-	int ret = 0;
-
-	/* Reset the entire host controller */
-	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-			SYSCTL_RSTA);
-
-	/* Wait until the controller is available */
-	while ((esdhc_read32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET)
-				& SYSCTL_RSTA) && --timeout)
-		udelay(1000);
-
-	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-			SYSCTL_HCKEN | SYSCTL_IPGEN);
-
-	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
-	esdhc_write32(regs + SDHCI_MMC_BOOT, 0);
-
-	/* Set the initial clock speed */
-	set_sysctl(mci, 400000);
-
-	writel(IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
-			IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
-			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT, regs + SDHCI_INT_ENABLE);
-
-	/* Put the PROCTL reg back to the default */
-	esdhc_write32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
-			PROCTL_INIT);
-
-	/* Set timout to the maximum value */
-	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
-			SYSCTL_TIMEOUT_MASK, 14 << 16);
-
-	return ret;
-}
-
 static int esdhc_reset(struct fsl_esdhc_host *host)
 {
 	void __iomem *regs = host->regs;
@@ -595,6 +555,40 @@ static int esdhc_reset(struct fsl_esdhc_host *host)
 	return 0;
 }
 
+static int esdhc_init(struct mci_host *mci, struct device_d *dev)
+{
+	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
+	void __iomem *regs = host->regs;
+	int ret;
+
+	ret = esdhc_reset(host);
+	if (ret)
+		return ret;
+
+	esdhc_write32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_HCKEN | SYSCTL_IPGEN);
+
+	/* RSTA doesn't reset MMC_BOOT register, so manually reset it */
+	esdhc_write32(regs + SDHCI_MMC_BOOT, 0);
+
+	/* Set the initial clock speed */
+	set_sysctl(mci, 400000);
+
+	writel(IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
+			IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
+			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT, regs + SDHCI_INT_ENABLE);
+
+	/* Put the PROCTL reg back to the default */
+	esdhc_write32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
+			PROCTL_INIT);
+
+	/* Set timout to the maximum value */
+	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
+			SYSCTL_TIMEOUT_MASK, 14 << 16);
+
+	return ret;
+}
+
 static int fsl_esdhc_detect(struct device_d *dev)
 {
 	struct fsl_esdhc_host *host = dev->priv;
@@ -648,13 +642,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	host->regs = IOMEM(iores->start);
 
-	/* First reset the eSDHC controller */
-	ret = esdhc_reset(host);
-	if (ret) {
-		free(host);
-		return ret;
-	}
-
 	caps = esdhc_read32(host->regs + SDHCI_CAPABILITIES);
 
 	if (caps & ESDHC_HOSTCAPBLT_VS18)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
