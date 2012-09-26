Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGzCo-0002nW-L1
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 21:31:43 +0000
Date: Wed, 26 Sep 2012 23:31:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120926213139.GS1322@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
 <1348484692-24993-3-git-send-email-s.hauer@pengutronix.de>
 <20120926160239.GV26553@game.jcrosoft.org>
 <20120926172516.GR1322@pengutronix.de>
 <20120926190841.GA26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120926190841.GA26553@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 02/23] clk clkdev: Add clkdev matching based on physbase
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 26, 2012 at 09:08:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > 
> > > clk_get_sys(NULL, "toto") is a valid call
> > 
> > clk_get_sys never calls clk_find_physbase. clk_get(NULL, "toto") will
> > call clk_find_physbase in which case clk_find_physbase returns -ENOSYS
> > and clk_get falls back to clk_get_sys just as it did before.
> I check one stuff
> 
> what will return the new clk_get for this
> 
> clk_get("dev0", "con0");
> 
> where we have
> 
> clkdev0 {
> 	.devid = "dev0"
> 	.physbase = 0x100

You should either use physbase or devid, not both.

> 	.clk =clk0
> }
> 
> clkdev1 {
> 	.devid = "dev0"
> 	.conid = "con0"
> 	.physbase = 0x100
> 	.clk = clk1
> }
> 
> clkdev2 {
> 	.devid = "dev1"
> 	.conid = "con0"
> 	.clk =clk0
> 	.physbase = 0x0
> }
> 
> register in this order clkdev0 then clkdev1
> 
> it will return clkdev0
> 
> register in this order clkdev1 then clkdev0
> 
> it will return clkdev1

Try the attached fixup patch.

> 
> we need to manage the mach best as done in clk_get_sys
> 
> then we can nor register a dev with physbase at 0x0
>

Also fixed.

8<------------------------------------------------------

From 4b773f9c7202639d1b110773b5628820091a7e07 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2012 23:12:56 +0200
Subject: [PATCH] fixup! clk clkdev: Add clkdev matching based on physbase

When iterating over clk_lookups, we cannot return the current
clk when the lookup does not have a con_id. Instead we have
to iterate further until we can make sure that we do not have
a lookup for which both con_id and dev_id match

Also, to make sure to initialize a clk_lookup->physbase to
~0 when a dev_id is given. ~0 makes for a better invalid
physbase, NULL may be a valid device address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clkdev.c |   14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 40bc006..1ae822f 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -66,6 +66,7 @@ static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
 {
 	struct clk_lookup *p;
 	unsigned long start;
+	struct clk *clk = ERR_PTR(-ENOSYS);
 
 	if (!dev || !dev->resource)
 		return ERR_PTR(-ENOSYS);
@@ -73,7 +74,7 @@ static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
 	start = dev->resource[0].start;
 
 	list_for_each_entry(p, &clocks, node) {
-		if (!p->physbase)
+		if (p->physbase == ~0)
 			continue;
 		if (p->physbase != start)
 			continue;
@@ -82,9 +83,10 @@ static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
 				continue;
 			return p->clk;
 		}
-		return p->clk;
+		clk = p->clk;
 	}
-	return ERR_PTR(-ENOSYS);
+
+	return clk;
 
 }
 
@@ -121,6 +123,9 @@ EXPORT_SYMBOL(clk_put);
 
 void clkdev_add(struct clk_lookup *cl)
 {
+	if (cl->dev_id)
+		cl->physbase = ~0;
+
 	list_add_tail(&cl->node, &clocks);
 }
 EXPORT_SYMBOL(clkdev_add);
@@ -128,6 +133,8 @@ EXPORT_SYMBOL(clkdev_add);
 void __init clkdev_add_table(struct clk_lookup *cl, size_t num)
 {
 	while (num--) {
+		if (cl->dev_id)
+			cl->physbase = ~0;
 		list_add_tail(&cl->node, &clocks);
 		cl++;
 	}
@@ -151,6 +158,7 @@ struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
 	if (!cla)
 		return NULL;
 
+	cla->cl.physbase = ~0;
 	cla->cl.clk = clk;
 	if (con_id) {
 		strlcpy(cla->con_id, con_id, sizeof(cla->con_id));
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
