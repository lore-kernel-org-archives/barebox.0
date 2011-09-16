Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R4RXx-00086r-BE
	for barebox@lists.infradead.org; Fri, 16 Sep 2011 06:05:10 +0000
Received: by fxg7 with SMTP id 7so1666126fxg.36
	for <barebox@lists.infradead.org>; Thu, 15 Sep 2011 23:05:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 16 Sep 2011 10:04:57 +0400
Message-Id: <1316153097-26362-1-git-send-email-antonynpavlov@gmail.com>
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
 drivers/usb/host/ehci-hcd.c |    5 +----
 1 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 60fc181..bc180af 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -922,10 +922,7 @@ static int ehci_probe(struct device_d *dev)
 	host->submit_bulk_msg = submit_bulk_msg;
 
 	if (ehci->flags & EHCI_HAS_TT) {
-		/* Set to host mode */
-		reg = ehci_readl(ehci->hcor + USBMODE);
-		reg |= USBMODE_CM_HC;
-		writel(reg, ehci->hcor + USBMODE);
+		ehci_reset(ehci);
 	}
 
 	usb_register_host(host);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
