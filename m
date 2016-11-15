Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6gWO-0004En-DM
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 16:23:47 +0000
Received: by mail-pg0-x244.google.com with SMTP id x23so12193627pgx.3
 for <barebox@lists.infradead.org>; Tue, 15 Nov 2016 08:23:23 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Nov 2016 08:22:56 -0800
Message-Id: <1479226976-12563-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1479226976-12563-1-git-send-email-andrew.smirnov@gmail.com>
References: <1479226976-12563-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] fixup! clk: Port of_clk_set_defaults()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 drivers/clk/clk-conf.c       | 4 ++++
 include/linux/clk/clk-conf.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/clk/clk-conf.c b/drivers/clk/clk-conf.c
index 961fad8..93271b4 100644
--- a/drivers/clk/clk-conf.c
+++ b/drivers/clk/clk-conf.c
@@ -14,6 +14,8 @@
 #include <linux/err.h>
 #include <linux/clk/clk-conf.h>
 
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+
 static int __set_clk_parents(struct device_node *node, bool clk_supplier)
 {
 	struct of_phandle_args clkspec;
@@ -142,3 +144,5 @@ int of_clk_set_defaults(struct device_node *node, bool clk_supplier)
 	return __set_clk_rates(node, clk_supplier);
 }
 EXPORT_SYMBOL_GPL(of_clk_set_defaults);
+
+#endif
diff --git a/include/linux/clk/clk-conf.h b/include/linux/clk/clk-conf.h
index 0b8a973..8f4382e 100644
--- a/include/linux/clk/clk-conf.h
+++ b/include/linux/clk/clk-conf.h
@@ -7,8 +7,11 @@
  * published by the Free Software Foundation.
  */
 
+#if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
+
 #include <linux/types.h>
 
 struct device_node;
 int of_clk_set_defaults(struct device_node *node, bool clk_supplier);
 
+#endif
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
