Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYycj-0000sx-3B
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:28:17 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYyce-00025h-Ck
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:12 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYyce-0002BK-BZ
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:28:12 +0100
Date: Fri, 9 Dec 2011 12:28:12 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Message-ID: <20111209112812.GC8203@pengutronix.de>
References: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323187817-28668-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/7] atmel_mci: check for device id we use to address
 the right slot
To: barebox@lists.infradead.org

We have to check which sd card slot we use. The registered mmc_id is the
the correct parameter for this.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
- removed if condition and always write the hw_dev->id instead

 drivers/mci/atmel_mci.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 4a29cad..15668fc 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -369,6 +369,8 @@ static void mci_set_ios(struct mci_host *mci, struct device_d *mci_dev,
 		atmel_mci_writel(host, AT91_MCI_SDCR, AT91_MCI_SDCBUS_1BIT);
 		break;
 	}
+	atmel_mci_writel(host, AT91_MCI_SDCR, atmel_mci_readl(host, AT91_MCI_SDCR)
+		| host->hw_dev->id);
 
 	if (clock) {
 		atmel_set_clk_rate(host, clock);
-- 
1.7.7.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
