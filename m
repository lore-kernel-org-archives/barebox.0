Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNKy-0002PE-94
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:02:25 +0000
Received: by wiax7 with SMTP id x7so5749241wia.0
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:02 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:01:51 +0200
Message-Id: <1428627714-17077-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/4] pci: fix device registration for directly attached devices
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Commit b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
 ("pci: defer device registration until after bridge setup")
removed pci_register_device() from setup_device() to allow
bridges to be registered before attached sub-devices.

This breaks normal registration for devices that are not
connected through a bridge. Fix this by calling pci_register_device()
for normal devices again.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Lucas Stach <dev@lynxeye.de>
---
 drivers/pci/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index d6e95c3ec894..c633d138ca66 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -344,6 +344,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
 			dev->rom_address = (l == 0xffffffff) ? 0 : l;
 
 			setup_device(dev, 6);
+			pci_register_device(dev);
 			break;
 		case PCI_HEADER_TYPE_BRIDGE:
 			setup_device(dev, 2);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
