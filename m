Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpQ-0004Ys-Fw
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:38 +0000
Received: by mail-pg1-x543.google.com with SMTP id y18-v6so11320471pge.0
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:36 -0700
Message-Id: <20181016191552.16690-7-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 06/22] of: Demote "Bad cell count for" to debug
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

There are valid use-cases where getting OF_BAD_ADDR via that codepath
is expected. In addition to that analogous code in Linux kernel uses
pr_debug as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/address.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 14db08041..4e12522a0 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -379,8 +379,8 @@ static u64 __of_translate_address(struct device_node *dev,
 	/* Count address cells & copy address locally */
 	bus->count_cells(dev, &na, &ns);
 	if (!OF_CHECK_COUNTS(na, ns)) {
-		printk(KERN_ERR "prom_parse: Bad cell count for %s\n",
-		       dev->full_name);
+		pr_debug("prom_parse: Bad cell count for %s\n",
+			 dev->full_name);
 		return OF_BAD_ADDR;
 	}
 	memcpy(addr, in_addr, na * 4);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
