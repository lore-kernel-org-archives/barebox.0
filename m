Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward3m.mail.yandex.net ([2a02:6b8:0:2519::3:12])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFee-0007e9-1e
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:30 +0000
Received: from smtp3m.mail.yandex.net (smtp3m.mail.yandex.net [77.88.61.130])
 by forward3m.mail.yandex.net (Yandex) with ESMTP id C73846B61623
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:02 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:30 +0300
Message-Id: <1425499906-32125-3-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 02/18] CLK: Add support for composite clock from Linux
 kernel
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/Makefile        |   2 +-
 drivers/clk/clk-composite.c | 145 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/clk.h         |   6 ++
 3 files changed, 152 insertions(+), 1 deletion(-)
 create mode 100644 drivers/clk/clk-composite.c

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index fa707dd..9df98c8 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_COMMON_CLK)	+= clk.o clk-fixed.o clk-divider.o clk-fixed-factor.o \
-				clk-mux.o clk-gate.o
+				clk-mux.o clk-gate.o clk-composite.o
 obj-$(CONFIG_CLKDEV_LOOKUP)	+= clkdev.o
 
 obj-$(CONFIG_ARCH_MVEBU)	+= mvebu/
diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
new file mode 100644
index 0000000..5d21a0e
--- /dev/null
+++ b/drivers/clk/clk-composite.c
@@ -0,0 +1,145 @@
+/*
+ * Taken from linux/drivers/clk/
+ *
+ * Copyright (c) 2013 NVIDIA CORPORATION.  All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+
+struct clk_composite {
+	struct clk	clk;
+
+	struct clk	*mux_clk;
+	struct clk	*rate_clk;
+	struct clk	*gate_clk;
+};
+
+#define to_clk_composite(_clk) container_of(_clk, struct clk_composite, clk)
+
+static int clk_composite_get_parent(struct clk *clk)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *mux_clk = composite->mux_clk;
+
+	return mux_clk ? mux_clk->ops->get_parent(mux_clk) : 0;
+}
+
+static int clk_composite_set_parent(struct clk *clk, u8 index)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *mux_clk = composite->mux_clk;
+
+	return mux_clk ? mux_clk->ops->set_parent(mux_clk, index) : 0;
+}
+
+static unsigned long clk_composite_recalc_rate(struct clk *clk,
+					    unsigned long parent_rate)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *rate_clk = composite->rate_clk;
+
+	return rate_clk ? rate_clk->ops->recalc_rate(rate_clk, parent_rate) : 0;
+}
+
+static long clk_composite_round_rate(struct clk *clk, unsigned long rate,
+				  unsigned long *prate)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *rate_clk = composite->rate_clk;
+
+	return rate_clk ? rate_clk->ops->round_rate(rate_clk, rate, prate) : 0;
+}
+
+static int clk_composite_set_rate(struct clk *clk, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *rate_clk = composite->rate_clk;
+
+	return rate_clk ?
+		rate_clk->ops->set_rate(rate_clk, rate, parent_rate) : 0;
+}
+
+static int clk_composite_is_enabled(struct clk *clk)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *gate_clk = composite->gate_clk;
+
+	return gate_clk ? gate_clk->ops->is_enabled(gate_clk) : 0;
+}
+
+static int clk_composite_enable(struct clk *clk)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *gate_clk = composite->gate_clk;
+
+	return gate_clk ? gate_clk->ops->enable(gate_clk) : 0;
+}
+
+static void clk_composite_disable(struct clk *clk)
+{
+	struct clk_composite *composite = to_clk_composite(clk);
+	struct clk *gate_clk = composite->gate_clk;
+
+	if (gate_clk)
+		gate_clk->ops->disable(gate_clk);
+}
+
+static struct clk_ops clk_composite_ops = {
+	.get_parent = clk_composite_get_parent,
+	.set_parent = clk_composite_set_parent,
+	.recalc_rate = clk_composite_recalc_rate,
+	.round_rate = clk_composite_round_rate,
+	.set_rate = clk_composite_set_rate,
+	.is_enabled = clk_composite_is_enabled,
+	.enable = clk_composite_enable,
+	.disable = clk_composite_disable,
+};
+
+struct clk *clk_register_composite(const char *name,
+			const char **parent_names, int num_parents,
+			struct clk *mux_clk,
+			struct clk *rate_clk,
+			struct clk *gate_clk,
+			unsigned long flags)
+{
+	struct clk_composite *composite;
+	int ret;
+
+	composite = xzalloc(sizeof(*composite));
+
+	composite->clk.name = name;
+	composite->clk.ops = &clk_composite_ops;
+	composite->clk.flags = flags;
+	composite->clk.parent_names = parent_names;
+	composite->clk.num_parents = num_parents;
+	composite->mux_clk = mux_clk;
+	composite->rate_clk = rate_clk;
+	composite->gate_clk = gate_clk;
+
+	ret = clk_register(&composite->clk);
+	if (ret)
+		goto err;
+
+	return &composite->clk;
+
+err:
+	kfree(composite);
+	return 0;
+}
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 49cb5a2..fe8ae5c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -291,6 +291,12 @@ struct clk *clk_lookup(const char *name);
 
 void clk_dump(int verbose);
 
+struct clk *clk_register_composite(const char *name,
+			const char **parent_names, int num_parents,
+			struct clk *mux_clk,
+			struct clk *rate_clk,
+			struct clk *gate_clk,
+			unsigned long flags);
 #endif
 
 struct device_node;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
