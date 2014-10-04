Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF4-00055G-2j
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:39 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id AC95326C2004
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:33:58 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:13 +0200
Message-Id: <1412444425-2569-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 07/19] pci: prettyprint device names
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
