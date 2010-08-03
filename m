Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgH4W-0002QE-7y
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 12:58:21 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  3 Aug 2010 14:53:38 +0200
Message-Id: <1280840019-11421-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
References: <20100803125142.GA9556@game.jcrosoft.org>
	<1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] clock: Introduce clock framework from Linux
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/clk.h |  158 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 158 insertions(+), 0 deletions(-)
 create mode 100644 include/linux/clk.h

diff --git a/include/linux/clk.h b/include/linux/clk.h
new file mode 100644
index 0000000..0cf86d7
--- /dev/null
+++ b/include/linux/clk.h
@@ -0,0 +1,158 @@
+/*
+ *  linux/include/linux/clk.h
+ *
+ *  Copyright (C) 2004 ARM Limited.
+ *  Written by Deep Blue Solutions Limited.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+#ifndef __LINUX_CLK_H
+#define __LINUX_CLK_H
+
+struct device_d;
+
+/*
+ * The base API.
+ */
+
+
+/*
+ * struct clk - an machine class defined object / cookie.
+ */
+struct clk;
+
+/**
+ * clk_get - lookup and obtain a reference to a clock producer.
+ * @dev: device for clock "consumer"
+ * @id: clock comsumer ID
+ *
+ * Returns a struct clk corresponding to the clock producer, or
+ * valid IS_ERR() condition containing errno.  The implementation
+ * uses @dev and @id to determine the clock consumer, and thereby
+ * the clock producer.  (IOW, @id may be identical strings, but
+ * clk_get may return different clock producers depending on @dev.)
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_get should not be called from within interrupt context.
+ */
+struct clk *clk_get(struct device_d *dev, const char *id);
+
+/**
+ * clk_enable - inform the system when the clock source should be running.
+ * @clk: clock source
+ *
+ * If the clock can not be enabled/disabled, this should return success.
+ *
+ * Returns success (0) or negative errno.
+ */
+int clk_enable(struct clk *clk);
+
+/**
+ * clk_disable - inform the system when the clock source is no longer required.
+ * @clk: clock source
+ *
+ * Inform the system that a clock source is no longer required by
+ * a driver and may be shut down.
+ *
+ * Implementation detail: if the clock source is shared between
+ * multiple drivers, clk_enable() calls must be balanced by the
+ * same number of clk_disable() calls for the clock source to be
+ * disabled.
+ */
+void clk_disable(struct clk *clk);
+
+/**
+ * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
+ *		  This is only valid once the clock source has been enabled.
+ * @clk: clock source
+ */
+unsigned long clk_get_rate(struct clk *clk);
+
+/**
+ * clk_put	- "free" the clock source
+ * @clk: clock source
+ *
+ * Note: drivers must ensure that all clk_enable calls made on this
+ * clock source are balanced by clk_disable calls prior to calling
+ * this function.
+ *
+ * clk_put should not be called from within interrupt context.
+ */
+void clk_put(struct clk *clk);
+
+
+/*
+ * The remaining APIs are optional for machine class support.
+ */
+
+
+/**
+ * clk_round_rate - adjust a rate to the exact rate a clock can provide
+ * @clk: clock source
+ * @rate: desired clock rate in Hz
+ *
+ * Returns rounded clock rate in Hz, or negative errno.
+ */
+long clk_round_rate(struct clk *clk, unsigned long rate);
+ 
+/**
+ * clk_set_rate - set the clock rate for a clock source
+ * @clk: clock source
+ * @rate: desired clock rate in Hz
+ *
+ * Returns success (0) or negative errno.
+ */
+int clk_set_rate(struct clk *clk, unsigned long rate);
+ 
+/**
+ * clk_set_parent - set the parent clock source for this clock
+ * @clk: clock source
+ * @parent: parent clock source
+ *
+ * Returns success (0) or negative errno.
+ */
+int clk_set_parent(struct clk *clk, struct clk *parent);
+
+/**
+ * clk_get_parent - get the parent clock source for this clock
+ * @clk: clock source
+ *
+ * Returns struct clk corresponding to parent clock source, or
+ * valid IS_ERR() condition containing errno.
+ */
+struct clk *clk_get_parent(struct clk *clk);
+
+/**
+ * clk_get_sys - get a clock based upon the device name
+ * @dev_id: device name
+ * @con_id: connection ID
+ *
+ * Returns a struct clk corresponding to the clock producer, or
+ * valid IS_ERR() condition containing errno.  The implementation
+ * uses @dev_id and @con_id to determine the clock consumer, and
+ * thereby the clock producer. In contrast to clk_get() this function
+ * takes the device name instead of the device itself for identification.
+ *
+ * Drivers must assume that the clock source is not enabled.
+ *
+ * clk_get_sys should not be called from within interrupt context.
+ */
+struct clk *clk_get_sys(const char *dev_id, const char *con_id);
+
+/**
+ * clk_add_alias - add a new clock alias
+ * @alias: name for clock alias
+ * @alias_dev_name: device name
+ * @id: platform specific clock name
+ * @dev: device
+ *
+ * Allows using generic clock names for drivers by adding a new alias.
+ * Assumes clkdev, see clkdev.h for more info.
+ */
+int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
+			struct device_d *dev);
+
+#endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
