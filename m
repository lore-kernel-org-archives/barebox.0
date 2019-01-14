Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givZ7-00080Q-AT
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id d72so9000631pga.9
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:17:06 -0800
Message-Id: <20190114061709.13948-14-andrew.smirnov@gmail.com>
In-Reply-To: <20190114061709.13948-1-andrew.smirnov@gmail.com>
References: <20190114061709.13948-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 13/16] PCI: Simplify alloc_pci_dev()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Use xzalloc() to allocate PCI device and drop OOM checking code.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 8d4d4224e6..7d1024d8d1 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -129,10 +129,7 @@ static struct pci_dev *alloc_pci_dev(void)
 {
 	struct pci_dev *dev;
 
-	dev = kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
-	if (!dev)
-		return NULL;
-
+	dev = xzalloc(sizeof(struct pci_dev));
 	INIT_LIST_HEAD(&dev->bus_list);
 
 	return dev;
@@ -367,9 +364,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			continue;
 
 		dev = alloc_pci_dev();
-		if (!dev)
-			return 0;
-
 		dev->bus = bus;
 		dev->devfn = devfn;
 		dev->vendor = l & 0xffff;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
