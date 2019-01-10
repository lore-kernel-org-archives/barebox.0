Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPy-0003P3-AT
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so4769338pfb.0
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:31 -0800
Message-Id: <20190110045739.19399-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/21] PCI: Drop "slots" from struct pci_bus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This field is not used by Barebox. Remove it. No functional change
intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 1 -
 include/linux/pci.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 23306be506..c8521ddcd2 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -19,7 +19,6 @@ static struct pci_bus *pci_alloc_bus(void)
 	INIT_LIST_HEAD(&b->node);
 	INIT_LIST_HEAD(&b->children);
 	INIT_LIST_HEAD(&b->devices);
-	INIT_LIST_HEAD(&b->slots);
 	INIT_LIST_HEAD(&b->resources);
 
 	return b;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index c8f91cdd96..28aa56343b 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -129,7 +129,6 @@ struct pci_bus {
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
 	struct list_head devices;	/* list of devices on this bus */
-	struct list_head slots;		/* list of slots on this bus */
 	struct resource *resource[PCI_BRIDGE_RESOURCE_NUM];
 	struct list_head resources;	/* address space routed to this bus */
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
