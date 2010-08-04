Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000Vf-JY
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:29 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:11 +0200
Message-Id: <1280915957-2910-8-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1280915957-2910-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 07/13] ehci: Make has_tt configurable via platform data
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   13 ++++++++-----
 include/usb/ehci.h          |    2 ++
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 8995fa3..1c266f3 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -899,22 +899,25 @@ static int ehci_probe(struct device_d *dev)
 	ehci = xmalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
 
-	if (pdata)
+	if (pdata) {
 		ehci->flags = pdata->flags;
-	else
+		ehci->hccr = (void *)(dev->map_base + pdata->hccr_offset);
+		ehci->hcor = (void *)(dev->map_base + pdata->hcor_offset);
+	}
+	else {
 		/* default to EHCI_HAS_TT to not change behaviour of boards
 		 * with platform_data
 		 */
 		ehci->flags = EHCI_HAS_TT;
+		ehci->hccr = (void *)(dev->map_base + 0x100);
+		ehci->hcor = (void *)(dev->map_base + 0x140);
+	}
 
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
-	ehci->hccr = (void *)(dev->map_base + 0x100);
-	ehci->hcor = (void *)(dev->map_base + 0x140);
-
 	usb_register_host(host);
 
 	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 3304b60..2ec862c 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -5,6 +5,8 @@
 
 struct ehci_platform_data {
 	unsigned long flags;
+	unsigned long hccr_offset;
+	unsigned long hcor_offset;
 };
 
 #endif  /* __USB_EHCI_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
