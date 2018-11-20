Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.tq-group.com ([62.157.118.193])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP2X7-0008Gk-Ft
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 09:41:27 +0000
From: matthias.schiffer@ew.tq-group.com
Date: Tue, 20 Nov 2018 10:40:33 +0100
Message-Id: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
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
Subject: [PATCH] clk: fix NULL deref without OF node in debug message
To: barebox@lists.infradead.org
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>

of_clk_add_provider() may be called for devices added via
add_generic_device(). There is no OF node in this case, leading to a crash
when debug logs are enabled.

This affects various i.MX CPUs, which add imx*-ccm clock devices using
add_generic_device().

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
 drivers/clk/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 24759b45b..6a2d8ad17 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -413,7 +413,7 @@ int of_clk_add_provider(struct device_node *np,
 	cp->get = clk_src_get;
 
 	list_add(&cp->link, &of_clk_providers);
-	pr_debug("Added clock from %s\n", np->full_name);
+	pr_debug("Added clock from %s\n", np ? np->full_name : "<none>");
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
