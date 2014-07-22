Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9gCV-0004Uu-Hf
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 19:58:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Jul 2014 21:57:51 +0200
Message-Id: <1406059071-7770-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "common: resource: print conflicts as warning"
To: barebox@lists.infradead.org

On several i.MX boards we register SDRAM with the values
from the SDRAM controller and also with values from the
device tree. This now issues a warning each time the board
is started. Revert the commit for now.

A better solution might be to check if the same SDRAM region
already exists before trying to register it again.

This reverts commit c9e2e08edcdce4205821226817686e62dc349eab.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/resource.c b/common/resource.c
index 1ea2a75..fe4680e 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -71,7 +71,7 @@ struct resource *__request_region(struct resource *parent,
 			goto ok;
 		if (start > r->end)
 			continue;
-		pr_warn("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
+		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
 				__func__,
 				(unsigned long long)start,
 				(unsigned long long)end,
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
