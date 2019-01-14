Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givZ1-0007sg-DR
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id w7so8991238pgp.13
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:17:01 -0800
Message-Id: <20190114061709.13948-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 08/16] PCI: Drop "slots" from struct pci_bus
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

This field is not used by Barebox. Remove it. No functional change
intended.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c   | 1 -
 include/linux/pci.h | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 25fb78b9cb..7775372774 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -22,7 +22,6 @@ static struct pci_bus *pci_alloc_bus(void)
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
