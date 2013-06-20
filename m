Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004g8-51
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:13 +0200
Message-Id: <1371711261-10039-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/17] mci: mxs: use common clk API
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c | 60 ++++++++++++++++++-------------------------------------
 1 file changed, 19 insertions(+), 41 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index cb2911a..023f922 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -36,6 +36,8 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <asm/bitops.h>
 #include <mach/mxs.h>
 #include <mach/imx-regs.h>
@@ -49,8 +51,8 @@
 struct mxs_mci_host {
 	struct mci_host	host;
 	void __iomem	*regs;
+	struct clk	*clk;
 	unsigned	clock;	/* current clock speed in Hz ("0" if disabled) */
-	unsigned	index;
 #ifdef CONFIG_MCI_INFO
 	unsigned	f_min;
 	unsigned	f_max;
@@ -61,16 +63,6 @@ struct mxs_mci_host {
 #define to_mxs_mci(mxs) container_of(mxs, struct mxs_mci_host, host)
 
 /**
- * Get the SSP clock rate
- * @param hw_dev Host interface device instance
- * @return Unit's clock in [Hz]
- */
-static unsigned mxs_mci_get_unit_clock(struct mxs_mci_host *mxs_mci)
-{
-	return imx_get_sspclk(mxs_mci->index);
-}
-
-/**
  * Get MCI cards response if defined for the type of command
  * @param hw_dev Host interface device instance
  * @param cmd Command description
@@ -430,7 +422,7 @@ static unsigned mxs_mci_setup_clock_speed(struct mxs_mci_host *mxs_mci, unsigned
 		return 0;
 	}
 
-	ssp = mxs_mci_get_unit_clock(mxs_mci);
+	ssp = clk_get_rate(mxs_mci->clk);
 
 	for (div = 2; div < 255; div += 2) {
 		rate = DIV_ROUND_CLOSEST(DIV_ROUND_CLOSEST(ssp, nc), div);
@@ -558,6 +550,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	struct mxs_mci_platform_data *pd = hw_dev->platform_data;
 	struct mxs_mci_host *mxs_mci;
 	struct mci_host *host;
+	unsigned long rate;
 
 	if (hw_dev->platform_data == NULL) {
 		dev_err(hw_dev, "Missing platform data\n");
@@ -578,44 +571,29 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	host->voltages = pd->voltages;
 	host->host_caps = pd->caps;
 
-#ifdef CONFIG_ARCH_IMX23
-	mxs_mci->index = 0;	/* there is only one clock for all */
-#endif
-#ifdef CONFIG_ARCH_IMX28
-	/* one dedicated clock per unit */
-	switch (hw_dev->resource[0].start) {
-	case IMX_SSP0_BASE:
-		mxs_mci->index = 0;
-		break;
-	case IMX_SSP1_BASE:
-		mxs_mci->index = 1;
-		break;
-	case IMX_SSP2_BASE:
-		mxs_mci->index = 2;
-		break;
-	case IMX_SSP3_BASE:
-		mxs_mci->index = 3;
-		break;
-	default:
-		pr_debug("Unknown SSP unit at address 0x%p\n", mxs_mci->regs);
-		return 0;
-	}
-#endif
+	mxs_mci->clk = clk_get(hw_dev, NULL);
+	if (IS_ERR(mxs_mci->clk))
+		return PTR_ERR(mxs_mci->clk);
+
+	clk_enable(mxs_mci->clk);
+
+	rate = clk_get_rate(mxs_mci->clk);
+
 	if (pd->f_min == 0) {
-		host->f_min = mxs_mci_get_unit_clock(mxs_mci) / 254 / 256;
+		host->f_min = rate / 254 / 256;
 		dev_dbg(hw_dev, "Min. frequency is %u Hz\n", host->f_min);
 	} else {
 		host->f_min = pd->f_min;
-		dev_dbg(hw_dev, "Min. frequency is %u Hz, could be %u Hz\n",
-			host->f_min, mxs_mci_get_unit_clock(mxs_mci) / 254 / 256);
+		dev_dbg(hw_dev, "Min. frequency is %u Hz, could be %lu Hz\n",
+			host->f_min, rate / 254 / 256);
 	}
 	if (pd->f_max == 0) {
-		host->f_max = mxs_mci_get_unit_clock(mxs_mci) / 2 / 1;
+		host->f_max = rate / 2 / 1;
 		dev_dbg(hw_dev, "Max. frequency is %u Hz\n", host->f_max);
 	} else {
 		host->f_max =  pd->f_max;
-		dev_dbg(hw_dev, "Max. frequency is %u Hz, could be %u Hz\n",
-			host->f_max, mxs_mci_get_unit_clock(mxs_mci) / 2 / 1);
+		dev_dbg(hw_dev, "Max. frequency is %u Hz, could be %lu Hz\n",
+			host->f_max, rate / 2 / 1);
 	}
 
 	if (IS_ENABLED(CONFIG_MCI_INFO)) {
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
