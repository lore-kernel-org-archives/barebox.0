Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV0Kb-0002GB-Hz
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 16:47:18 +0000
Received: by lbbtg9 with SMTP id tg9so15202110lbb.1
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 09:46:55 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 27 Aug 2015 19:48:31 +0300
Message-Id: <1440694111-1088-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC] usb: ehci-hcd: add OF bindings
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 1146b71..ef555eb 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -940,12 +940,16 @@ static int ehci_probe(struct device_d *dev)
 {
 	struct ehci_data data = {};
 	struct ehci_platform_data *pdata = dev->platform_data;
+	struct device_node *dn = dev->device_node;
+	uint32_t flags;
 
 	/* default to EHCI_HAS_TT to not change behaviour of boards
 	 * without platform_data
 	 */
 	if (pdata)
 		data.flags = pdata->flags;
+	else if (dn && of_property_read_u32(dn, "flags", &flags) == 0)
+		data.flags = flags;
 	else
 		data.flags = EHCI_HAS_TT;
 
@@ -967,9 +971,18 @@ static void ehci_remove(struct device_d *dev)
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
