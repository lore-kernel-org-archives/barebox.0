Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3qZ-0001VV-S9
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:52:32 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 22 May 2013 09:51:54 +0200
Message-Id: <1369209114-11357-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2] mci i.MX esdhc: Fix clock divider calculation
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Sascha Hauer <s.hauer@pengutronix.de>

This updates the i.MX esdhc divider settings to FSLs U-Boot.
Current timings work fine for SD cards, but not for eMMC.
Although the calculation is fine according to the datasheet and reading from
eMMC works, writing is broken. Atleast on i.MX53/tqma53.
With this patch the result is the same, but uses different divider values to
achieve it.

While at it, replace the udelay with a busy-loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes since v1:
	- rebased onto -next

 drivers/mci/imx-esdhc.c | 46 +++++++++++++++++++++++++++-------------------
 drivers/mci/sdhci.h     |  1 +
 2 files changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index ae934f4..46bd6d2 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -44,7 +44,6 @@
 struct fsl_esdhc_host {
 	struct mci_host		mci;
 	void __iomem		*regs;
-	unsigned long		cur_clock;
 	struct device_d		*dev;
 	struct clk		*clk;
 };
@@ -333,30 +332,38 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 	void __iomem *regs = host->regs;
 	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
-
-	if (clock < mci->f_min)
-		clock = mci->f_min;
-
-	pre_div = 0;
-
-	for (pre_div = 1; pre_div < 256; pre_div <<= 1) {
-		if (sdhc_clk / pre_div < clock * 16)
+	unsigned long  cur_clock;
+
+	/*
+	 * With eMMC and imx53 (sdhc_clk=200MHz) a pre_div of 1 results in
+	 *	pre_div=1,div=4 (=50MHz)
+	 * which is valid and should work, but somehow doesn't.
+	 * Starting with pre_div=2 gives
+	 *	pre_div=2, div=2 (=50MHz)
+	 * and works fine.
+	 */
+	pre_div = 2;
+
+	if (sdhc_clk == clock)
+		pre_div = 1;
+	else if (sdhc_clk / 16 > clock)
+		for (; pre_div < 256; pre_div *= 2)
+			if ((sdhc_clk / pre_div) <= (clock * 16))
+				break;
+
+	for (div = 1; div <= 16; div++)
+		if ((sdhc_clk / (div * pre_div)) <= clock)
 			break;
-	};
-
-	div = sdhc_clk / pre_div / clock;
 
-	if (sdhc_clk / pre_div / div > clock)
-		div++;
+	cur_clock = sdhc_clk / pre_div / div;
 
-	host->cur_clock = sdhc_clk / pre_div / div;
+	dev_dbg(host->dev, "set clock: wanted: %d got: %ld\n", clock, cur_clock);
+	dev_dbg(host->dev, "pre_div: %d div: %d\n", pre_div, div);
 
+	/* the register values start with 0 */
 	div -= 1;
 	pre_div >>= 1;
 
-	dev_dbg(host->dev, "set clock: wanted: %d got: %ld\n", clock, host->cur_clock);
-	dev_dbg(host->dev, "pre_div: %d div: %d\n", pre_div, div);
-
 	clk = (pre_div << 8) | (div << 4);
 
 	esdhc_clrbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
@@ -365,7 +372,8 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
 			SYSCTL_CLOCK_MASK, clk);
 
-	udelay(10000);
+	wait_on_timeout(10 * MSECOND,
+			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB));
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN;
 
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index ad1bbd9..b2d6779 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -81,6 +81,7 @@
 #define PRSSTAT_CINS		0x00010000
 #define PRSSTAT_BREN		0x00000800
 #define PRSSTAT_BWEN		0x00000400
+#define PRSSTAT_SDSTB		0x00000008
 #define PRSSTAT_DLA		0x00000004
 #define PRSSTAT_CIDHB		0x00000002
 #define PRSSTAT_CICHB		0x00000001
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
