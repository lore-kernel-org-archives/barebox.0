Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3l-0007oa-SM
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:24 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E34EEDC1CFD
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:05 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:39 +0100
Message-Id: <1359127067-30079-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] atmel_mci: version 0x5xx of the IP have a different clk
 div
To: barebox@lists.infradead.org

so detect and support it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   65 ++++++++++++++++++++++++++++++++++-------------
 1 file changed, 47 insertions(+), 18 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index b9b0668..72d92dc 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -27,6 +27,10 @@
 
 #include "atmel-mci-regs.h"
 
+struct atmel_mci_caps {
+	bool	has_odd_clk_div;
+};
+
 struct atmel_mci {
 	struct mci_host		mci;
 	void  __iomem		*regs;
@@ -38,6 +42,10 @@ struct atmel_mci {
 	struct mci_data		*data;
 	unsigned		slot_b;
 	int			version;
+	struct atmel_mci_caps	caps;
+
+	unsigned long		bus_hz;
+	u32			mode_reg;
 };
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
@@ -60,25 +68,42 @@ static void atmci_ip_reset(struct atmel_mci *host)
 }
 
 static void atmci_set_clk_rate(struct atmel_mci *host,
-			       unsigned int clk_ios)
+			       unsigned int clock_min)
 {
-	unsigned int divider;
-	unsigned int clk_in = clk_get_rate(host->clk);
+	unsigned int clkdiv;
 
-	if (clk_ios > 0) {
-		divider = (clk_in / clk_ios) / 2;
-		if (divider > 0)
-			divider -= 1;
+	if (!host->mode_reg) {
+		clk_enable(host->clk);
+		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
 	}
 
-	if (clk_ios == 0 || divider > 255)
-		divider = 255;
+	if (host->caps.has_odd_clk_div) {
+		clkdiv = DIV_ROUND_UP(host->bus_hz, clock_min) - 2;
+		if (clkdiv > 511) {
+			dev_dbg(host->hw_dev,
+			         "clock %u too slow; using %lu\n",
+			         clock_min, host->bus_hz / (511 + 2));
+			clkdiv = 511;
+		}
+		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv >> 1)
+				 | ATMCI_MR_CLKODD(clkdiv & 1);
+	} else {
+		clkdiv = DIV_ROUND_UP(host->bus_hz, 2 * clock_min) - 1;
+		if (clkdiv > 255) {
+			dev_dbg(host->hw_dev,
+				 "clock %u too slow; using %lu\n",
+				 clock_min, host->bus_hz / (2 * 256));
+			clkdiv = 255;
+		}
+		host->mode_reg = ATMCI_MR_CLKDIV(clkdiv);
+	}
+
+	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%ld clkIos=%d divider=%d\n",
+		host->bus_hz, clock_min, clkdiv);
 
-	dev_dbg(host->hw_dev, "atmel_set_clk_rate: clkIn=%d clkIos=%d divider=%d\n",
-		clk_in, clk_ios, divider);
+	host->mode_reg |= ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF;
 
-	atmci_writel(host, ATMCI_MR, ATMCI_MR_CLKDIV(divider)
-		| ATMCI_MR_RDPROOF | ATMCI_MR_WRPROOF);
+	atmci_writel(host, ATMCI_MR, host->mode_reg);
 }
 
 static int atmci_poll_status(struct atmel_mci *host, u32 mask)
@@ -366,9 +391,13 @@ static void atmci_set_ios(struct mci_host *mci, struct mci_ios *ios)
 
 	if (ios->clock) {
 		atmci_set_clk_rate(host, ios->clock);
-		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIEN);
 	} else {
 		atmci_writel(host, ATMCI_CR, ATMCI_CR_MCIDIS);
+		if (host->mode_reg) {
+			atmci_readl(host, ATMCI_MR);
+			clk_disable(host->clk);
+		}
+		host->mode_reg = 0;
 	}
 
 	return;
@@ -443,6 +472,7 @@ static void atmci_get_cap(struct atmel_mci *host)
 
 	switch (version & 0xf00) {
 	case 0x500:
+		host->caps.has_odd_clk_div = 1;
 	case 0x400:
 	case 0x300:
 	case 0x200:
@@ -458,7 +488,6 @@ static void atmci_get_cap(struct atmel_mci *host)
 
 static int atmci_probe(struct device_d *hw_dev)
 {
-	unsigned long clk_rate;
 	struct atmel_mci *host;
 	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
 
@@ -490,12 +519,12 @@ static int atmci_probe(struct device_d *hw_dev)
 		return PTR_ERR(host->clk);
 	}
 
-	clk_rate = clk_get_rate(host->clk);
+	host->bus_hz = clk_get_rate(host->clk);
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	host->mci.f_min = clk_rate >> 9;
-	host->mci.f_max = clk_rate >> 1;
+	host->mci.f_min = DIV_ROUND_UP(host->bus_hz, 512);
+	host->mci.f_max = host->bus_hz >> 1;
 
 	atmci_get_cap(host);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
