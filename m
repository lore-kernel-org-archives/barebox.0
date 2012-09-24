Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TB-0000eR-1P
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:31 +0200
Message-Id: <1348484692-24993-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/23] clk clkdev: Add clkdev matching based on physbase
To: barebox@lists.infradead.org

Most clock/device associations can be done based on the physical
base address of the corresponding device. So instead of depending
on string matching add an optional possibility to associate a clock
lookups with physical addresses. This also has the advantage that
the lookups for devicetree based devices can be identical to the
platform based devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clkdev.c   |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/clkdev.h |    3 +++
 2 files changed, 50 insertions(+)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 717fea5..40bc006 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -62,6 +62,32 @@ static struct clk *clk_find(const char *dev_id, const char *con_id)
 	return clk;
 }
 
+static struct clk *clk_find_physbase(struct device_d *dev, const char *con_id)
+{
+	struct clk_lookup *p;
+	unsigned long start;
+
+	if (!dev || !dev->resource)
+		return ERR_PTR(-ENOSYS);
+
+	start = dev->resource[0].start;
+
+	list_for_each_entry(p, &clocks, node) {
+		if (!p->physbase)
+			continue;
+		if (p->physbase != start)
+			continue;
+		if (p->con_id) {
+			if (!con_id || strcmp(p->con_id, con_id))
+				continue;
+			return p->clk;
+		}
+		return p->clk;
+	}
+	return ERR_PTR(-ENOSYS);
+
+}
+
 struct clk *clk_get_sys(const char *dev_id, const char *con_id)
 {
 	struct clk *clk;
@@ -77,6 +103,11 @@ EXPORT_SYMBOL(clk_get_sys);
 struct clk *clk_get(struct device_d *dev, const char *con_id)
 {
 	const char *dev_id = dev ? dev_name(dev) : NULL;
+	struct clk *clk;
+
+	clk = clk_find_physbase(dev, con_id);
+	if (!IS_ERR(clk))
+		return clk;
 
 	return clk_get_sys(dev_id, con_id);
 }
@@ -166,3 +197,19 @@ void clkdev_drop(struct clk_lookup *cl)
 	kfree(cl);
 }
 EXPORT_SYMBOL(clkdev_drop);
+
+int clkdev_add_physbase(struct clk *clk, unsigned long base, const char *id)
+{
+	struct clk_lookup *cl;
+
+	cl = xzalloc(sizeof(*cl));
+
+	cl->clk = clk;
+	cl->con_id = id;
+	cl->physbase = base;
+
+	clkdev_add(cl);
+
+	return 0;
+}
+EXPORT_SYMBOL(clkdev_add_physbase);
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index d2eca99..d2f0d89 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -19,6 +19,7 @@ struct device_d;
 
 struct clk_lookup {
 	struct list_head	node;
+	unsigned long		physbase;
 	const char		*dev_id;
 	const char		*con_id;
 	struct clk		*clk;
@@ -33,6 +34,8 @@ void clkdev_drop(struct clk_lookup *cl);
 void clkdev_add_table(struct clk_lookup *, size_t);
 int clk_add_alias(const char *, const char *, char *, struct device_d *);
 
+int clkdev_add_physbase(struct clk *clk, unsigned long base, const char *id);
+
 #define CLKDEV_DEV_ID(_id, _clk)			\
 	{						\
 		.dev_id = _id,				\
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
