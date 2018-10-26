Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mq-Qb
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:36 +0200
Message-Id: <20181026093338.22751-7-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] usb: host: ehci-atmel: unregister host on device remove
To: Barebox List <barebox@lists.infradead.org>

The ehci code does DMA and really must be properly stopped when we
leave barebox, so call ehci_unregister on device removal.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-atmel.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 36c9166e74..6c88d646c9 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -120,10 +120,14 @@ static int atmel_ehci_probe(struct device_d *dev)
 
 static void atmel_ehci_remove(struct device_d *dev)
 {
+	struct atmel_ehci_priv *atehci = dev->priv;
+
+	ehci_unregister(atehci->ehci);
+
 	/*
 	 * Stop the USB clocks.
 	 */
-	atmel_stop_clock(dev->priv);
+	atmel_stop_clock(atehci);
 }
 
 static const struct of_device_id atmel_ehci_dt_ids[] = {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
