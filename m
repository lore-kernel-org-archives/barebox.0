Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4c1E-0004BR-Ls
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 20:29:41 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so4337974lbi.39
 for <barebox@lists.infradead.org>; Tue, 08 Jul 2014 13:29:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jul 2014 00:23:11 +0400
Message-Id: <1404850991-28028-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] pci: pci_alloc_bus(): use xzalloc() instead of kzalloc()
To: barebox@lists.infradead.org

Also drop redundant xzalloc() result check
as xzalloc() does not return in case of memory allocation error.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/pci/pci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index ad9350f..3d88b0f 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -16,14 +16,14 @@ static struct pci_bus *pci_alloc_bus(void)
 {
 	struct pci_bus *b;
 
-	b = kzalloc(sizeof(*b), GFP_KERNEL);
-	if (b) {
-		INIT_LIST_HEAD(&b->node);
-		INIT_LIST_HEAD(&b->children);
-		INIT_LIST_HEAD(&b->devices);
-		INIT_LIST_HEAD(&b->slots);
-		INIT_LIST_HEAD(&b->resources);
-	}
+	b = xzalloc(sizeof(*b));
+
+	INIT_LIST_HEAD(&b->node);
+	INIT_LIST_HEAD(&b->children);
+	INIT_LIST_HEAD(&b->devices);
+	INIT_LIST_HEAD(&b->slots);
+	INIT_LIST_HEAD(&b->resources);
+
 	return b;
 }
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
