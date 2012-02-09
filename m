Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvSZp-00079e-QG
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 11:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  9 Feb 2012 12:53:46 +0100
Message-Id: <1328788438-19717-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/15] mci: fix high capacity detection
To: barebox@lists.infradead.org

Whether a card is high capacity is checked in
sd_send_op_cond/mmc_send_op_cond. Remove the wrong check in
mmc_change_freq which wrongly recognizes some eMMC flash
as high capacity.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index db69b27..8951c07 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -414,9 +414,6 @@ static int mmc_change_freq(struct device_d *mci_dev)
 		return err;
 	}
 
-	if (ext_csd[212] || ext_csd[213] || ext_csd[214] || ext_csd[215])
-		mci->high_capacity = 1;
-
 	cardtype = ext_csd[EXT_CSD_CARD_TYPE] & EXT_CSD_CARD_TYPE_MASK;
 
 	err = mci_switch(mci_dev, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_HS_TIMING, 1);
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
