Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZp-00079d-RL
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:49 +0100
Message-Id: <1328788438-19717-7-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/15] mci s3c: Do not mess with struct mci_host
To: barebox@lists.infradead.org

This structure is owned by the core, do not change its contents
in the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/s3c.c |    9 +++------
 1 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 9d46b09..a153b1c 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -691,17 +691,14 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 {
 	struct device_d *hw_dev = mci_pdata->hw_dev;
 	struct s3c_mci_host *host_data = GET_HOST_DATA(hw_dev);
-	struct mci_host *host = GET_MCI_PDATA(mci_dev);
 	uint32_t reg;
 
 	switch (ios->bus_width) {
 	case MMC_BUS_WIDTH_4:
 		host_data->bus_width = 1;
-		host->bus_width = 4;	/* 4 bit is possible */
 		break;
 	case MMC_BUS_WIDTH_1:
 		host_data->bus_width = 0;
-		host->bus_width = 1;	/* 1 bit is possible */
 		break;
 	default:
 		return;
@@ -710,16 +707,16 @@ static void mci_set_ios(struct mci_host *mci_pdata, struct device_d *mci_dev,
 	reg = readl(host_data->base + SDICON);
 	if (ios->clock) {
 		/* setup the IO clock frequency and enable it */
-		host->clock = host_data->clock = s3c_setup_clock_speed(hw_dev, ios->clock);
+		host_data->clock = s3c_setup_clock_speed(hw_dev, ios->clock);
 		reg |= SDICON_CLKEN;	/* enable the clock */
 	} else {
 		reg &= ~SDICON_CLKEN;	/* disable the clock */
-		host->clock = host_data->clock = 0;
+		host_data->clock = 0;
 	}
 	writel(reg, host_data->base + SDICON);
 
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n",
-		host->bus_width, host->clock);
+		host_data->bus_width, host_data->clock);
 }
 
 /* ----------------------------------------------------------------------- */
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
