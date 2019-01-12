Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDd9-0006XN-9m
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:22:57 +0000
Received: by mail-pg1-x543.google.com with SMTP id j10so7286636pga.1
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:22:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:24 -0800
Message-Id: <20190112072234.21878-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/16] PCI: Remove unused variables/code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both host_head and host_tail are not used anywhere in the codebase and
look like a leftover. Remove them.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index ee8afa7e87..198ec9e995 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4,8 +4,6 @@
 #include <linux/sizes.h>
 #include <linux/pci.h>
 
-static struct pci_controller *hose_head, **hose_tail = &hose_head;
-
 LIST_HEAD(pci_root_buses);
 EXPORT_SYMBOL(pci_root_buses);
 static u8 bus_index;
@@ -46,9 +44,6 @@ void register_pci_controller(struct pci_controller *hose)
 {
 	struct pci_bus *bus;
 
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
