Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WyzBL-0004HK-Cs
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 08:00:56 +0000
Received: by mail-wg0-f44.google.com with SMTP id x13so6134752wgg.15
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 01:00:27 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Mon, 23 Jun 2014 10:00:00 +0200
Message-Id: <1403510400-13562-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] common: resource: print conflicts as warning
To: barebox@lists.infradead.org

Crazy things happen if there are resource conflicts and a device probe
runs dev_request_mem_region. The dev_request_mem_region returns a
start pointer which is zero. The probe function doesn't check on this
and probing the device on zero base address.

To debug this in debug log level there are many other outputs. This patch
replace the debug print to a warning printout. A conflict should
normally never happen. If there is a conflict it's much easier to see it
with this patch.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/resource.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/resource.c b/common/resource.c
index fe4680e..1ea2a75 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -71,7 +71,7 @@ struct resource *__request_region(struct resource *parent,
 			goto ok;
 		if (start > r->end)
 			continue;
-		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
+		pr_warn("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
 				__func__,
 				(unsigned long long)start,
 				(unsigned long long)end,
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
