Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j18p3-0005nc-LF
 for barebox@lists.infradead.org; Mon, 10 Feb 2020 13:09:59 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Feb 2020 14:09:49 +0100
Message-Id: <20200210130952.19779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] reset_source: introduce reset_source_xlate to translate
 specific type
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have a few places where driver code prints reset_source_name() to
console after setting the reset source.

This working is probe order dependent, because reset_source_name()
prints the highest priority reset_source so far, which doesn't
necessarily have to be the one that was just computed.

Implement reset_source_xlate, so drivers can be migrated to use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/reset_source.c  | 6 +++---
 include/reset_source.h | 9 +++++++--
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 8fdf05215753..e8da8da19aee 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -42,11 +42,11 @@ enum reset_src_type reset_source_get(void)
 }
 EXPORT_SYMBOL(reset_source_get);
 
-const char *reset_source_name(void)
+const char *reset_source_xlate(enum reset_src_type st)
 {
-	return reset_src_names[reset_source];
+	return reset_src_names[st];
 }
-EXPORT_SYMBOL(reset_source_name);
+EXPORT_SYMBOL(reset_source_xlate);
 
 int reset_source_get_instance(void)
 {
diff --git a/include/reset_source.h b/include/reset_source.h
index 305dde0102d5..914b9ef38458 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -28,7 +28,7 @@ enum reset_src_type {
 #ifdef CONFIG_RESET_SOURCE
 
 enum reset_src_type reset_source_get(void);
-const char *reset_source_name(void);
+const char *reset_source_xlate(enum reset_src_type st);
 int reset_source_get_instance(void);
 struct device_d *reset_source_get_device(void);
 
@@ -45,7 +45,7 @@ static inline enum reset_src_type reset_source_get(void)
 	return RESET_UKWN;
 }
 
-static inline const char *reset_source_name(void)
+static inline const char *reset_source_xlate(enum reset_src_type st)
 {
 	return "unknown";
 }
@@ -93,4 +93,9 @@ static inline void reset_source_set(enum reset_src_type type)
 	reset_source_set_priority(type, RESET_SOURCE_DEFAULT_PRIORITY);
 }
 
+static inline const char *reset_source_name(void)
+{
+	return reset_source_xlate(reset_source_get());
+}
+
 #endif /* __INCLUDE_RESET_SOURCE_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
