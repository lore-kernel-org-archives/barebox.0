Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1givYy-0007ps-QP
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 06:17:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id gn14so9651334plb.10
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2019 22:17:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 13 Jan 2019 22:16:59 -0800
Message-Id: <20190114061709.13948-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 06/16] PCI: Remove unused variables/code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

Both host_head and host_tail are not used anywhere in the codebase and
look like a leftover. Remove them.

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 265c416085..496879c216 100644
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
