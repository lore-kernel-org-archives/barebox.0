Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyZ-0006fw-Jt
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:05 +0000
Received: by mail-pf0-x244.google.com with SMTP id g14so4986182pfh.3
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:33 -0700
Message-Id: <20180421010538.16488-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/10] common: reset_source: Introduce reset_source_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Introduce reset_source_name() to get string representation of current
reset source.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/reset_source.c  | 6 ++++++
 include/reset_source.h | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/common/reset_source.c b/common/reset_source.c
index 6a6c4f5da..b2985ee85 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -60,6 +60,12 @@ void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
 }
 EXPORT_SYMBOL(reset_source_set_priority);
 
+const char *reset_source_name(void)
+{
+	return reset_src_names[reset_source];
+}
+EXPORT_SYMBOL(reset_source_name)
+
 void reset_source_set_instance(enum reset_src_type type, int instance)
 {
 	if (reset_source == type)
diff --git a/include/reset_source.h b/include/reset_source.h
index c9911c008..f9aed6a7a 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -30,6 +30,7 @@ enum reset_src_type reset_source_get(void);
 void reset_source_set_instance(enum reset_src_type type, int instance);
 int reset_source_get_instance(void);
 unsigned int of_get_reset_source_priority(struct device_node *node);
+const char *reset_source_name(void);
 #else
 static inline void reset_source_set_priority(enum reset_src_type type,
 		unsigned int priority)
@@ -54,6 +55,11 @@ static inline unsigned int of_get_reset_source_priority(struct device_node *node
 {
 	return 0;
 }
+
+const char *reset_source_name(void)
+{
+	return "unknown";
+}
 #endif
 
 #define RESET_SOURCE_DEFAULT_PRIORITY 100
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
