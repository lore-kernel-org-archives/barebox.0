Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3STx-0007rD-T9
	for barebox@lists.infradead.org; Tue, 13 Sep 2011 12:53:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 13 Sep 2011 14:52:56 +0200
Message-Id: <1315918376-23732-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] mci: mxs: fix 'use resources' conversion
To: barebox@lists.infradead.org

Commit 4c542622 used the wrong variable name and caused a build failure.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/mxs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 825ae4d..a84cd67 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -703,7 +703,7 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 	host->send_cmd = mxs_mci_request;
 	host->set_ios = mxs_mci_set_ios;
 	host->init = mxs_mci_initialize;
-	mxs_mci->regs = dev_request_mem_region(dev, 0);
+	mxs_mci->regs = dev_request_mem_region(hw_dev, 0);
 
 	/* feed forward the platform specific values */
 	host->voltages = pd->voltages;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
