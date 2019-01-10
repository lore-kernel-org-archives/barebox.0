Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghSPw-0003Ld-E2
 for barebox@lists.infradead.org; Thu, 10 Jan 2019 04:58:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id w4so4655185plz.1
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 20:58:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  9 Jan 2019 20:57:29 -0800
Message-Id: <20190110045739.19399-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/21] PCI: Remove unused variables/code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both host_head and host_tail are not used anywhere in the codebase and
look like a leftover. Remove them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index e1c059f2a9..9bfa54d054 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4,8 +4,6 @@
 #include <linux/sizes.h>
 #include <linux/pci.h>
 
-static struct pci_controller *hose_head, **hose_tail = &hose_head;
-
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
 static resource_size_t last[PCI_BRIDGE_RESOURCE_NUM];
@@ -44,9 +42,6 @@ void register_pci_controller(struct pci_controller *hose)
 	struct pci_bus *bus;
 	int r;
 
-	*hose_tail = hose;
-	hose_tail = &hose->next;
-
 	bus = pci_alloc_bus();
 	hose->bus = bus;
 	bus->parent = hose->parent;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
