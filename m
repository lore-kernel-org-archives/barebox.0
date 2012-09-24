Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6Td-0004mj-Oj
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:05:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:47 +0200
Message-Id: <1348484692-24993-19-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/23] mci i.MX ESDHC: Switch to clock support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 498578d..94ed807 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -28,6 +28,8 @@
 #include <mci.h>
 #include <clock.h>
 #include <io.h>
+#include <linux/clk.h>
+#include <linux/err.h>
 #include <asm/mmu.h>
 #include <mach/clock.h>
 #include <mach/generic.h>
@@ -70,6 +72,7 @@ struct fsl_esdhc_host {
 	u32			no_snoop;
 	unsigned long		cur_clock;
 	struct device_d		*dev;
+	struct clk		*clk;
 };
 
 #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
@@ -354,7 +357,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 	int div, pre_div;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc __iomem *regs = host->regs;
-	int sdhc_clk = imx_get_mmcclk();
+	int sdhc_clk = clk_get_rate(host->clk);
 	u32 clk;
 
 	if (clock < mci->f_min)
@@ -516,11 +519,16 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	struct mci_host *mci;
 	u32 caps;
 	int ret;
+	unsigned long rate;
 	struct esdhc_platform_data *pdata = dev->platform_data;
 
 	host = xzalloc(sizeof(*host));
 	mci = &host->mci;
 
+	host->clk = clk_get(dev, NULL);
+	if (IS_ERR(host->clk))
+		return PTR_ERR(host->clk);
+
 	host->dev = dev;
 	host->regs = dev_request_mem_region(dev, 0);
 
@@ -553,10 +561,11 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	host->mci.init = esdhc_init;
 	host->mci.hw_dev = dev;
 
-	host->mci.f_min = imx_get_mmcclk() >> 12;
+	rate = clk_get_rate(host->clk);
+	host->mci.f_min = rate >> 12;
 	if (host->mci.f_min < 200000)
 		host->mci.f_min = 200000;
-	host->mci.f_max = imx_get_mmcclk();
+	host->mci.f_max = rate;
 
 	mci_register(&host->mci);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
