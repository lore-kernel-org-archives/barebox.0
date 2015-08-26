Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi7-0004es-OP
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:14 +0200
Message-Id: <1440587836-22105-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
References: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] reset-source: Allow different priorities
To: Barebox List <barebox@lists.infradead.org>

Different devices may report the reset source with different levels
of certainty. For example a SoC may see a power-on reset, but this
may only be because an external PMIC has power cycled the SoC. This
means the PMIC knows the real reason better and thus the reset reason
from the PMIC should be preferred.

This patch introduces priorities for the reset_source to handle the
above scenario. Also add a of_get_reset_source_priority() function
to retrieve the desired priority from the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/reset_source.c  | 23 ++++++++++++++++++++++-
 include/reset_source.h | 14 ++++++++++++--
 2 files changed, 34 insertions(+), 3 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index f9ee99b..b02a694 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -30,6 +30,7 @@ static const char * const reset_src_names[] = {
 };
 
 static enum reset_src_type reset_source;
+static unsigned int reset_source_priority;
 
 enum reset_src_type reset_source_get(void)
 {
@@ -37,9 +38,13 @@ enum reset_src_type reset_source_get(void)
 }
 EXPORT_SYMBOL(reset_source_get);
 
-void reset_source_set(enum reset_src_type st)
+void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
 {
+	if (priority <= reset_source_priority)
+		return;
+
 	reset_source = st;
+	reset_source_priority = priority;
 }
 EXPORT_SYMBOL(reset_source_set);
 
@@ -52,3 +57,19 @@ static int reset_source_init(void)
 }
 
 coredevice_initcall(reset_source_init);
+
+/**
+ * of_get_reset_source_priority() - get the desired reset source priority from
+ *                                  device tree
+ * @node:	The device_node to read the property from
+ *
+ * return: The priority
+ */
+unsigned int of_get_reset_source_priority(struct device_node *node)
+{
+	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
+
+	of_property_read_u32(node, "reset-source-priority", &priority);
+
+	return priority;
+}
diff --git a/include/reset_source.h b/include/reset_source.h
index 367f93b..be9d9b1 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -25,10 +25,11 @@ enum reset_src_type {
 };
 
 #ifdef CONFIG_RESET_SOURCE
-void reset_source_set(enum reset_src_type);
+void reset_source_set_priority(enum reset_src_type, unsigned int priority);
 enum reset_src_type reset_source_get(void);
 #else
-static inline void reset_source_set(enum reset_src_type unused)
+static inline void reset_source_set_priority(enum reset_src_type,
+		unsigned int priority)
 {
 }
 
@@ -38,4 +39,13 @@ static inline enum reset_src_type reset_source_get(void)
 }
 #endif
 
+#define RESET_SOURCE_DEFAULT_PRIORITY 100
+
+static inline void reset_source_set(enum reset_src_type type)
+{
+	reset_source_set_priority(type, RESET_SOURCE_DEFAULT_PRIORITY);
+}
+
+unsigned int of_get_reset_source_priority(struct device_node *node);
+
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
