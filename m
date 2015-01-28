Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7S-0000GU-8Y
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:09 +0100
Message-Id: <1422430339-11969-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] mci: mxs: Add devicetree support
To: Barebox List <barebox@lists.infradead.org>

Add device tree compatibles and allow retrieving data from device tree
instead of platform_data only.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c | 50 +++++++++++++++++++++++++++-----------------------
 1 file changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 367964c..b36fb13 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -549,11 +549,6 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	struct mci_host *host;
 	unsigned long rate;
 
-	if (hw_dev->platform_data == NULL) {
-		dev_err(hw_dev, "Missing platform data\n");
-		return -EINVAL;
-	}
-
 	mxs_mci = xzalloc(sizeof(*mxs_mci));
 	host = &mxs_mci->host;
 
@@ -567,9 +562,16 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 		return PTR_ERR(mxs_mci->regs);
 
 	/* feed forward the platform specific values */
-	host->voltages = pd->voltages;
-	host->host_caps = pd->caps;
-	host->devname = pd->devname;
+	if (pd) {
+		host->voltages = pd->voltages;
+		host->host_caps = pd->caps;
+		host->devname = pd->devname;
+		host->f_min = pd->f_min;
+		host->f_max =  pd->f_max;
+	} else {
+		host->voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
+		mci_of_parse(host);
+	}
 
 	mxs_mci->clk = clk_get(hw_dev, NULL);
 	if (IS_ERR(mxs_mci->clk))
@@ -579,22 +581,13 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 
 	rate = clk_get_rate(mxs_mci->clk);
 
-	if (pd->f_min == 0) {
-		host->f_min = rate / 254 / 256;
-		dev_dbg(hw_dev, "Min. frequency is %u Hz\n", host->f_min);
-	} else {
-		host->f_min = pd->f_min;
-		dev_dbg(hw_dev, "Min. frequency is %u Hz, could be %lu Hz\n",
-			host->f_min, rate / 254 / 256);
-	}
-	if (pd->f_max == 0) {
+	if (host->f_min < 400000)
+		host->f_min = 400000;
+	if (host->f_max == 0)
 		host->f_max = rate / 2 / 1;
-		dev_dbg(hw_dev, "Max. frequency is %u Hz\n", host->f_max);
-	} else {
-		host->f_max =  pd->f_max;
-		dev_dbg(hw_dev, "Max. frequency is %u Hz, could be %lu Hz\n",
-			host->f_max, rate / 2 / 1);
-	}
+
+	dev_dbg(hw_dev, "Max. frequency is %u Hz\n", host->f_max);
+	dev_dbg(hw_dev, "Min. frequency is %u Hz\n", host->f_min);
 
 	if (IS_ENABLED(CONFIG_MCI_INFO)) {
 		mxs_mci->f_min = host->f_min;
@@ -605,8 +598,19 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	return mci_register(host);
 }
 
+static __maybe_unused struct of_device_id mxs_mmc_compatible[] = {
+	{
+		.compatible = "fsl,imx23-mmc",
+	}, {
+		.compatible = "fsl,imx28-mmc",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d mxs_mci_driver = {
         .name  = "mxs_mci",
         .probe = mxs_mci_probe,
+	.of_compatible = DRV_OF_COMPAT(mxs_mmc_compatible),
 };
 device_platform_driver(mxs_mci_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
