Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZm-0004dt-1c
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:47 +0100
Message-Id: <1328788438-19717-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/15] mci mxs: do not use external define for internal use
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mxs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 4b8bd75..a60e706 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -672,7 +672,7 @@ const unsigned char bus_width[3] = { 1, 4, 8 };
 
 static void mxs_mci_info(struct device_d *hw_dev)
 {
-	struct mxs_mci_host *mxs_mci = GET_HOST_DATA(hw_dev);
+	struct mxs_mci_host *mxs_mci = hw_dev->priv;
 
 	printf(" Interface\n");
 	printf("  Min. bus clock: %u Hz\n", mxs_mci->f_min);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
