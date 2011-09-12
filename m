Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R33iE-0007QU-4l
	for barebox@lists.infradead.org; Mon, 12 Sep 2011 10:26:02 +0000
Received: by mail-bw0-f49.google.com with SMTP id t2so2850975bka.36
	for <barebox@lists.infradead.org>; Mon, 12 Sep 2011 03:26:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 12 Sep 2011 14:26:00 +0400
Message-Id: <1315823160-11664-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] ehci-hcd.c: handle EHCI_HAS_TT in ehci_reset() during startup
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c |    9 ++-------
 1 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 60fc181..883dc07 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -921,15 +921,10 @@ static int ehci_probe(struct device_d *dev)
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
-	if (ehci->flags & EHCI_HAS_TT) {
-		/* Set to host mode */
-		reg = ehci_readl(ehci->hcor + USBMODE);
-		reg |= USBMODE_CM_HC;
-		writel(reg, ehci->hcor + USBMODE);
-	}
-
 	usb_register_host(host);
 
+	ehci_reset(ehci);
+
 	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
 	dev_info(dev, "USB EHCI %x.%02x\n", reg >> 8, reg & 0xff);
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
