Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-00085z-BM
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:54 +0100
Message-Id: <1298886235-1769-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] mci mxs: no need to call mxs_mci_setup_clock_speed in init
To: barebox@lists.infradead.org

It will be called by set_ios anyway later. Also, do not
alter host->clock field, this is none of our business.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 7f8f3f8..814eba3 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -615,7 +615,6 @@ static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 	mxs_mci_reset(mxs_mci);
 
 	/* restore the last settings */
-	host->clock = mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, host->clock);
 	mxs_mci_setup_timeout(mxs_mci, 0xffff);
 	writel(SSP_CTRL0_IGNORE_CRC |
 		SSP_CTRL0_BUS_WIDTH(mxs_mci->bus_width),
@@ -678,9 +677,9 @@ static void mxs_mci_set_ios(struct mci_host *host, struct device_d *mci_dev,
 		break;
 	}
 
-	host->clock = mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, clock);
+	mxs_mci->clock = mxs_mci_setup_clock_speed(mxs_mci, clock);
 	pr_debug("IO settings: bus width=%d, frequency=%u Hz\n", host->bus_width,
-			host->clock);
+			mxs_mci->clock);
 }
 
 /* ----------------------------------------------------------------------- */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
