Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TC-0000en-CR
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:48 +0200
Message-Id: <1348484692-24993-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/23] mci i.MX: Switch to clock support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx.c |   15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 0e4fa66..035a3aa 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -25,6 +25,8 @@
 #include <clock.h>
 #include <init.h>
 #include <driver.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <mach/clock.h>
 #include <io.h>
 
@@ -103,6 +105,7 @@ struct mxcmci_regs {
 struct mxcmci_host {
 	struct mci_host		mci;
 	struct mxcmci_regs	*base;
+	struct clk		*clk;
 	int			irq;
 	int			detect_irq;
 	int			dma;
@@ -415,7 +418,7 @@ static void mxcmci_set_clk_rate(struct mxcmci_host *host, unsigned int clk_ios)
 {
 	unsigned int divider;
 	int prescaler = 0;
-	unsigned long clk_in = imx_get_mmcclk();
+	unsigned long clk_in = clk_get_rate(host->clk);
 
 	while (prescaler <= 0x800) {
 		for (divider = 1; divider <= 0xF; divider++) {
@@ -490,9 +493,14 @@ static int mxcmci_init(struct mci_host *mci, struct device_d *dev)
 static int mxcmci_probe(struct device_d *dev)
 {
 	struct mxcmci_host *host;
+	unsigned long rate;
 
 	host = xzalloc(sizeof(*host));
 
+	host->clk = clk_get(dev, NULL);
+	if (IS_ERR(host->clk))
+		return PTR_ERR(host->clk);
+
 	host->mci.send_cmd = mxcmci_request;
 	host->mci.set_ios = mxcmci_set_ios;
 	host->mci.init = mxcmci_init;
@@ -503,8 +511,9 @@ static int mxcmci_probe(struct device_d *dev)
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-	host->mci.f_min = imx_get_mmcclk() >> 7;
-	host->mci.f_max = imx_get_mmcclk() >> 1;
+	rate = clk_get_rate(host->clk);
+	host->mci.f_min = rate >> 7;
+	host->mci.f_max = rate >> 1;
 
 	mci_register(&host->mci);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
