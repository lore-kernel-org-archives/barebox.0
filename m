Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUaA6-0004pw-G5
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 10:09:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-0004sR-7e
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-00029z-6D
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 23 Apr 2013 12:09:12 +0200
Message-Id: <1366711752-25176-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1366711752-25176-1-git-send-email-jbe@pengutronix.de>
References: <1366711752-25176-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] MXS/MCI: simplify reset of the MCI device block
To: barebox@lists.infradead.org

Since a generic block reset function is a available, also the MCI driver
should make use of it.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/mci/mxs.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 3657b3e..93f5a41 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -446,19 +446,6 @@ static unsigned mxs_mci_setup_clock_speed(struct mxs_mci_host *mxs_mci, unsigned
 	return ssp / div / rate;
 }
 
-/**
- * Reset the MCI engine (the hard way)
- * @param hw_dev Host interface instance
- *
- * This will reset everything in all registers of this unit! (FIXME)
- */
-static void mxs_mci_reset(struct mxs_mci_host *mxs_mci)
-{
-	writel(SSP_CTRL0_SFTRST, mxs_mci->regs + HW_SSP_CTRL0 + 8);
-	while (readl(mxs_mci->regs + HW_SSP_CTRL0) & SSP_CTRL0_SFTRST)
-		;
-}
-
 /* ------------------------- MCI API -------------------------------------- */
 
 /**
@@ -475,7 +462,7 @@ static int mxs_mci_initialize(struct mci_host *host, struct device_d *mci_dev)
 	writel(SSP_CTRL0_CLKGATE, mxs_mci->regs + HW_SSP_CTRL0 + 8);
 
 	/* reset the unit */
-	mxs_mci_reset(mxs_mci);
+	mxs_reset_block(mxs_mci->regs + HW_SSP_CTRL0, 0);
 
 	/* restore the last settings */
 	mxs_mci_setup_timeout(mxs_mci, 0xffff);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
