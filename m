Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSQ4-0003X8-G7
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id a14so4634104plm.12
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:16 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:36 -0800
Message-Id: <20190110045739.19399-19-andrew.smirnov@gmail.com>
In-Reply-To: <20190110045739.19399-1-andrew.smirnov@gmail.com>
References: <20190110045739.19399-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/21] PCI: Simplify alloc_pci_dev()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use xzalloc() to allocate PCI device and drop OOM checking code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 12f438d3ff..8a0d7fb03b 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -115,10 +115,7 @@ static struct pci_dev *alloc_pci_dev(void)
 {
 	struct pci_dev *dev;
 
-	dev = kzalloc(sizeof(struct pci_dev), GFP_KERNEL);
-	if (!dev)
-		return NULL;
-
+	dev = xzalloc(sizeof(struct pci_dev));
 	INIT_LIST_HEAD(&dev->bus_list);
 
 	return dev;
@@ -364,9 +361,6 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
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
