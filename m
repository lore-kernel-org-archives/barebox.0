Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008GA-K7
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:05 +0200
Message-Id: <1374561610-686-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
References: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] clk: provide static inline wrappers
To: barebox@lists.infradead.org

So that drivers can use clk_* functions without having to ifdef
them away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig    |  3 +++
 drivers/clk/Kconfig |  3 +++
 include/linux/clk.h | 39 ++++++++++++++++++++++++++++++++++++++-
 3 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e7d8cdd..3a74837 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -34,6 +34,7 @@ config ARCH_AT91
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
 	select HAVE_MACH_ARM_HEAD
+	select HAVE_CLK
 
 config ARCH_BCM2835
 	bool "Broadcom BCM2835 boards"
@@ -99,6 +100,7 @@ config ARCH_NOMADIK
 	bool "STMicroelectronics Nomadik"
 	select CPU_ARM926T
 	select CLOCKSOURCE_NOMADIK
+	select HAVE_CLK
 	help
 	  Support for the Nomadik platform by ST-Ericsson
 
@@ -133,6 +135,7 @@ config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
 	select CPU_ARM926T
 	select GPIOLIB
+	select HAVE_CLK
 
 config ARCH_VEXPRESS
 	bool "ARM Vexpres boards"
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index a00e539..daf778a 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -1,8 +1,11 @@
+config HAVE_CLK
+	bool
 
 config CLKDEV_LOOKUP
 	bool
 
 config COMMON_CLK
+	select HAVE_CLK
 	bool
 
 config COMMON_CLK_OF_PROVIDER
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 0a565ef..6aed1de 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -19,12 +19,13 @@ struct device_d;
  * The base API.
  */
 
-
 /*
  * struct clk - an machine class defined object / cookie.
  */
 struct clk;
 
+#ifdef CONFIG_HAVE_CLK
+
 /**
  * clk_get - lookup and obtain a reference to a clock producer.
  * @dev: device for clock "consumer"
@@ -157,6 +158,42 @@ struct clk *clk_get_sys(const char *dev_id, const char *con_id);
 int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
 			struct device_d *dev);
 
+#else
+
+static inline struct clk *clk_get(struct device_d *dev, const char *id)
+{
+	return NULL;
+}
+
+static inline int clk_enable(struct clk *clk)
+{
+	return 0;
+}
+
+static inline void clk_disable(struct clk *clk)
+{
+}
+
+static inline unsigned long clk_get_rate(struct clk *clk)
+{
+	return 0;
+}
+
+static inline void clk_put(struct clk *clk)
+{
+}
+
+static inline long clk_round_rate(struct clk *clk, unsigned long rate)
+{
+	return 0;
+}
+
+static inline int clk_set_rate(struct clk *clk, unsigned long rate)
+{
+	return 0;
+}
+#endif
+
 #ifdef CONFIG_COMMON_CLK
 struct clk_ops {
 	int		(*enable)(struct clk *clk);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
