Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ogakx-0000Vb-Gx
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 09:59:29 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed,  4 Aug 2010 11:59:13 +0200
Message-Id: <1280915957-2910-10-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 09/13] ehci: add remove function
To: barebox@lists.infradead.org

and stop the ehci controller before the kernel is trying to restart it.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 1c266f3..802c548 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -898,6 +898,7 @@ static int ehci_probe(struct device_d *dev)
 
 	ehci = xmalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
+	dev->priv = ehci;
 
 	if (pdata) {
 		ehci->flags = pdata->flags;
@@ -926,9 +927,16 @@ static int ehci_probe(struct device_d *dev)
 	return 0;
 }
 
+static void ehci_remove(struct device_d *dev)
+{
+	struct ehci_priv *ehci = dev->priv;
+	ehci_halt(ehci);
+}
+
 static struct driver_d ehci_driver = {
 	.name  = "ehci",
 	.probe = ehci_probe,
+	.remove = ehci_remove,
 };
 
 static int ehcil_init(void)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
