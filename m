Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZo-0004dw-Tk
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:50 +0100
Message-Id: <1328788438-19717-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
References: <1328788438-19717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/15] mci s3c: allocate host struct dynamically
To: barebox@lists.infradead.org

Yes, it does make sense. First there will always be the next
hardware which has multiple controllers. Also, we shouldn't
give bad examples to others.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/s3c.c |   43 +++++++++++++++++--------------------------
 1 files changed, 17 insertions(+), 26 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index a153b1c..44c682e 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -153,18 +153,13 @@
 #define SDIDATA 0x40
 
 struct s3c_mci_host {
+	struct mci_host	host;
 	void __iomem	*base;
 	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 	unsigned	clock;	/* current clock in Hz */
 	unsigned	data_size;	/* data transfer in bytes */
 };
 
-/*
- * There is only one host MCI hardware instance available.
- * It makes no sense to dynamically allocate this data
- */
-static struct s3c_mci_host host_data;
-
 /**
  * Finish a request
  * @param hw_dev Host interface instance
@@ -743,20 +738,16 @@ static void s3c_info(struct device_d *hw_dev)
 }
 #endif
 
-/*
- * There is only one host MCI hardware instance available.
- * It makes no sense to dynamically allocate this data
- */
-static struct mci_host mci_pdata = {
-	.send_cmd = mci_request,
-	.set_ios = mci_set_ios,
-	.init = mci_reset,
-};
-
 static int s3c_mci_probe(struct device_d *hw_dev)
 {
+	struct s3c_mci_host *s3c_host;
 	struct s3c_mci_platform_data *pd = hw_dev->platform_data;
 
+	s3c_host = xzalloc(sizeof(*s3c_host));
+	s3c_host->host.send_cmd = mci_request;
+	s3c_host->host.set_ios = mci_set_ios;
+	s3c_host->host.init = mci_reset;
+
 	/* TODO replace by the global func: enable the SDI unit clock */
 	writel(readl(S3C_CLOCK_POWER_BASE + 0x0c) | 0x200,
 		S3C_CLOCK_POWER_BASE + 0x0c);
@@ -766,23 +757,23 @@ static int s3c_mci_probe(struct device_d *hw_dev)
 		return -EINVAL;
 	}
 
-	hw_dev->priv = &host_data;
-	host_data.base = dev_request_mem_region(hw_dev, 0);
-	mci_pdata.hw_dev = hw_dev;
+	hw_dev->priv = s3c_host;
+	s3c_host->base = dev_request_mem_region(hw_dev, 0);
+	s3c_host->host.hw_dev = hw_dev;
 
 	/* feed forward the platform specific values */
-	mci_pdata.voltages = pd->voltages;
-	mci_pdata.host_caps = pd->caps;
-	mci_pdata.f_min = pd->f_min == 0 ? s3c_get_pclk() / 256 : pd->f_min;
-	mci_pdata.f_max = pd->f_max == 0 ? s3c_get_pclk() / 2 : pd->f_max;
+	s3c_host->host.voltages = pd->voltages;
+	s3c_host->host.host_caps = pd->caps;
+	s3c_host->host.f_min = pd->f_min == 0 ? s3c_get_pclk() / 256 : pd->f_min;
+	s3c_host->host.f_max = pd->f_max == 0 ? s3c_get_pclk() / 2 : pd->f_max;
 
 	/*
 	 * Start the clock to let the engine and the card finishes its startup
 	 */
-	host_data.clock = s3c_setup_clock_speed(hw_dev, mci_pdata.f_min);
-	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, host_data.base + SDICON);
+	s3c_host->clock = s3c_setup_clock_speed(hw_dev, pd->f_min);
+	writel(SDICON_FIFORESET | SDICON_MMCCLOCK, s3c_host->base + SDICON);
 
-	return mci_register(&mci_pdata);
+	return mci_register(&s3c_host->host);
 }
 
 static struct driver_d s3c_mci_driver = {
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
