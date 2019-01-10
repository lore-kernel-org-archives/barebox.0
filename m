Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPo-0003Cb-79
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id y126so4759497pfb.4
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:23 -0800
Message-Id: <20190110045739.19399-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/21] PCI: Convert postscan_setup_bridge() to use a loop
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Simplify postscan_setup_bridge() by folding limit setting code into a
loop. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 26 +++++++-------------------
 1 file changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 02b7f091f7..b5e13e5dbc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -330,28 +330,16 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 
 static void postscan_setup_bridge(struct pci_dev *dev)
 {
+	int r;
+
 	/* limit subordinate to last used bus number */
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, last[PCI_BUS_RESOURCE_BUSN] - 1);
 
-	if (last[PCI_BUS_RESOURCE_MEM]) {
-		last[PCI_BUS_RESOURCE_MEM] = ALIGN(last[PCI_BUS_RESOURCE_MEM], SZ_1M);
-		pr_debug("bridge NP limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM]);
-		pci_set_limit(dev, PCI_BUS_RESOURCE_MEM,
-			      last[PCI_BUS_RESOURCE_MEM] - 1);
-	}
-
-	if (last[PCI_BUS_RESOURCE_MEM_PREF]) {
-		last[PCI_BUS_RESOURCE_MEM_PREF] = ALIGN(last[PCI_BUS_RESOURCE_MEM_PREF], SZ_1M);
-		pr_debug("bridge P limit at %pa\n", &last[PCI_BUS_RESOURCE_MEM_PREF]);
-		pci_set_limit(dev, PCI_BUS_RESOURCE_MEM_PREF,
-			      last[PCI_BUS_RESOURCE_MEM_PREF] - 1);
-	}
-
-	if (last[PCI_BUS_RESOURCE_IO]) {
-		last[PCI_BUS_RESOURCE_IO] = ALIGN(last[PCI_BUS_RESOURCE_IO], SZ_4K);
-		pr_debug("bridge IO limit at %pa\n", &last[PCI_BUS_RESOURCE_IO]);
-		pci_set_limit(dev, PCI_BUS_RESOURCE_IO,
-			      last[PCI_BUS_RESOURCE_IO] - 1);
+	for (r = PCI_BUS_RESOURCE_IO; r <= PCI_BUS_RESOURCE_MEM_PREF; r++) {
+		if (last[r]) {
+			last[r] = ALIGN(last[r], pci_resource_to_alignment(r));
+			pci_set_limit(dev, r, last[r] - 1);
+		}
 	}
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
