Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCOO-0001M8-As
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 16:59:45 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id 4525426C2006
 for <barebox@lists.infradead.org>; Thu, 25 Sep 2014 18:58:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:04:59 +0200
Message-Id: <1411664709-13699-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 05/15] pci: prettyprint device names
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/bus.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 8215ee5..866ab08 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -86,7 +86,8 @@ int pci_register_device(struct pci_dev *pdev)
 	struct device_d *dev = &pdev->dev;
 	int ret;
 
-	strcpy(dev->name, "pci");
+	snprintf(dev->name, MAX_DRIVER_NAME, "pci-%04x:%04x.",
+	         pdev->vendor, pdev->device);
 	dev->bus = &pci_bus;
 	dev->id = DEVICE_ID_DYNAMIC;
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
