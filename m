Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVHSi-000725-09
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 11:04:48 +0000
Received: by lbbtg9 with SMTP id tg9so28001747lbb.1
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2015 04:04:25 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Fri, 28 Aug 2015 14:06:25 +0300
Message-Id: <1440759985-17499-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [RFC] usb: ehci-hcd: add OF bindings
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 1146b71..1077ac4 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -940,13 +940,18 @@ static int ehci_probe(struct device_d *dev)
 {
 	struct ehci_data data = {};
 	struct ehci_platform_data *pdata = dev->platform_data;
+	struct device_node *dn = dev->device_node;
 
-	/* default to EHCI_HAS_TT to not change behaviour of boards
-	 * without platform_data
-	 */
 	if (pdata)
 		data.flags = pdata->flags;
-	else
+	else if (dn) {
+		data.flags = 0;
+		if (of_property_read_bool(dn, "has-transaction-translator"))
+			data.flags |= EHCI_HAS_TT;
+	} else
+		/* default to EHCI_HAS_TT to not change behaviour of boards
+		 * without platform_data
+		 */
 		data.flags = EHCI_HAS_TT;
 
 	data.hccr = dev_request_mem_region(dev, 0);
@@ -967,9 +972,18 @@ static void ehci_remove(struct device_d *dev)
 	ehci_halt(ehci);
 }
 
+static __maybe_unused struct of_device_id ehci_platform_dt_ids[] = {
+	{
+		.compatible = "generic-ehci",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d ehci_driver = {
 	.name  = "ehci",
 	.probe = ehci_probe,
 	.remove = ehci_remove,
+	.of_compatible = DRV_OF_COMPAT(ehci_platform_dt_ids),
 };
 device_platform_driver(ehci_driver);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
