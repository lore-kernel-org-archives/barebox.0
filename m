Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCXoG-00085J-8F
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 16:00:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 17:00:09 +0100
Message-Id: <1362412809-23253-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: ehci: initialize ehci_data
To: barebox@lists.infradead.org

Without it fields of ehci_data may be unitialized and the driver
crashes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 0c789e4..7c389aa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -892,7 +892,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 
 static int ehci_probe(struct device_d *dev)
 {
-	struct ehci_data data;
+	struct ehci_data data = {};
 	struct ehci_platform_data *pdata = dev->platform_data;
 
 	/* default to EHCI_HAS_TT to not change behaviour of boards
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
