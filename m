Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOvxG-00020M-VV
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 19:40:31 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so5439094wey.36
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 12:40:26 -0700 (PDT)
From: Carlo Caione <carlo.caione@gmail.com>
Date: Thu, 18 Oct 2012 21:40:16 +0200
Message-Id: <1350589216-82634-1-git-send-email-carlo.caione@gmail.com>
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
Subject: [PATCH] clkdev: add helper function to register one clock lookup for
 a struct clk
To: barebox@lists.infradead.org

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 drivers/clk/clkdev.c   | 21 +++++++++++++++++++++
 include/linux/clkdev.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 1ae822f..5441eeb 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -178,6 +178,27 @@ struct clk_lookup *clkdev_alloc(struct clk *clk, const char *con_id,
 }
 EXPORT_SYMBOL(clkdev_alloc);
 
+int clk_register_clkdev(struct clk *clk, const char *con_id,
+	const char *dev_fmt, ...)
+{
+	struct clk_lookup *cl;
+	va_list ap;
+
+	if (IS_ERR(clk))
+                return PTR_ERR(clk);
+
+	va_start(ap, dev_fmt);
+	cl = clkdev_alloc(clk, con_id, dev_fmt, ap);
+	va_end(ap);
+
+	if (!cl)
+		return -ENOMEM;
+
+	clkdev_add(cl);
+
+	return 0;
+}
+
 int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
 	struct device_d *dev)
 {
diff --git a/include/linux/clkdev.h b/include/linux/clkdev.h
index d2f0d89..1fc0ab9 100644
--- a/include/linux/clkdev.h
+++ b/include/linux/clkdev.h
@@ -33,6 +33,7 @@ void clkdev_drop(struct clk_lookup *cl);
 
 void clkdev_add_table(struct clk_lookup *, size_t);
 int clk_add_alias(const char *, const char *, char *, struct device_d *);
+int clk_register_clkdev(struct clk *, const char *, const char *, ...);
 
 int clkdev_add_physbase(struct clk *clk, unsigned long base, const char *id);
 
-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
