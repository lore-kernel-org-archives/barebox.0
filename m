Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006fd-DE
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:01 +0000
Received: by mail-pg0-x244.google.com with SMTP id b5so4678712pgv.5
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:29 -0700
Message-Id: <20180421010538.16488-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/10] common: reset_source: Add the notion of "reset
 source instance"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to accomodate SoCs that come with multiple watchdogs (or any
other reset sources of the same kind) add a notion of "reset source
instance", similar to what we already have for bootsource API.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/reset_source.c  | 17 +++++++++++++++++
 include/reset_source.h | 11 +++++++++++
 2 files changed, 28 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 06e2ca85f..6a6c4f5da 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -32,6 +32,7 @@ static const char * const reset_src_names[] = {
 
 static enum reset_src_type reset_source;
 static unsigned int reset_source_priority;
+static int reset_source_instance;
 
 enum reset_src_type reset_source_get(void)
 {
@@ -39,6 +40,12 @@ enum reset_src_type reset_source_get(void)
 }
 EXPORT_SYMBOL(reset_source_get);
 
+int reset_source_get_instance(void)
+{
+	return reset_source_instance;
+}
+EXPORT_SYMBOL(reset_source_get_instance);
+
 void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
 {
 	if (priority <= reset_source_priority)
@@ -46,17 +53,27 @@ void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
 
 	reset_source = st;
 	reset_source_priority = priority;
+	reset_source_instance = 0;
 
 	pr_debug("Setting reset source to %s with priority %d\n",
 			reset_src_names[reset_source], priority);
 }
 EXPORT_SYMBOL(reset_source_set_priority);
 
+void reset_source_set_instance(enum reset_src_type type, int instance)
+{
+	if (reset_source == type)
+		reset_source_instance = instance;
+}
+EXPORT_SYMBOL(reset_source_set_instance);
+
 static int reset_source_init(void)
 {
 	globalvar_add_simple_enum("system.reset", (unsigned int *)&reset_source,
 			reset_src_names, ARRAY_SIZE(reset_src_names));
 
+	globalvar_add_simple_int("system.reset_instance", &reset_source_instance,
+				 "%d");
 	return 0;
 }
 
diff --git a/include/reset_source.h b/include/reset_source.h
index 3ff06b70a..c9911c008 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -27,6 +27,8 @@ enum reset_src_type {
 #ifdef CONFIG_RESET_SOURCE
 void reset_source_set_priority(enum reset_src_type, unsigned int priority);
 enum reset_src_type reset_source_get(void);
+void reset_source_set_instance(enum reset_src_type type, int instance);
+int reset_source_get_instance(void);
 unsigned int of_get_reset_source_priority(struct device_node *node);
 #else
 static inline void reset_source_set_priority(enum reset_src_type type,
@@ -34,11 +36,20 @@ static inline void reset_source_set_priority(enum reset_src_type type,
 {
 }
 
+static inline void reset_source_set_instance(enum reset_src_type type, int instance)
+{
+}
+
 static inline enum reset_src_type reset_source_get(void)
 {
 	return RESET_UKWN;
 }
 
+static inline int reset_source_get_instance(void)
+{
+	return 0;
+}
+
 static inline unsigned int of_get_reset_source_priority(struct device_node *node)
 {
 	return 0;
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
