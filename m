Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h16dT-0001eZ-EA
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 09:45:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1h16dP-0002Lg-QW
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 10:45:15 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  5 Mar 2019 10:45:15 +0100
Message-Id: <20190305094515.25632-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] PCI: dwc: tune down link up messages
To: barebox@lists.infradead.org

This function may be called repeatedly while establishing the link,
so printing a message each time a working link is found can add quite
a bit of noise. Tune those messages down to the debug level.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index aaea316e9095..c6d19559f437 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -195,7 +195,7 @@ int dw_pcie_wait_for_link(struct dw_pcie *pci)
 	/* Check if the link is up or not */
 	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
 		if (dw_pcie_link_up(pci)) {
-			dev_info(pci->dev, "Link up\n");
+			dev_dbg(pci->dev, "Link up\n");
 			return 0;
 		}
 		udelay(LINK_WAIT_USLEEP_MAX);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
