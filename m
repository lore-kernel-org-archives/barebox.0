Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85lq-0006SV-Aj
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 283F4A00915
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:27 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:31 +0200
Message-Id: <1509115052-4331-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
References: <1509115052-4331-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 4/5] common: state: Make find_var public
To: barebox@lists.infradead.org

Make find_var public to grant access to state variables.

Make also the MAC node public to receive the stored address.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 common/state/state.h | 27 +--------------------------
 include/state.h      | 26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 26 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index 81aaec2..0fca848 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -1,6 +1,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <driver.h>
+#include <state.h>
 
 struct state;
 struct mtd_info_user;
@@ -128,16 +129,6 @@ struct variable_type {
 					  struct device_node *);
 };
 
-/* instance of a single variable */
-struct state_variable {
-	struct state *state;
-	struct list_head list;
-	const char *name;
-	unsigned int start;
-	unsigned int size;
-	void *raw;
-};
-
 /*
  *  uint32
  */
@@ -161,16 +152,6 @@ struct state_enum32 {
 };
 
 /*
- *  MAC address
- */
-struct state_mac {
-	struct state_variable var;
-	struct param_d *param;
-	uint8_t value[6];
-	uint8_t value_default[6];
-};
-
-/*
  *  string
  */
 struct state_string {
@@ -204,7 +185,6 @@ int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
 int state_backend_bucket_cached_create(struct device_d *dev,
 				       struct state_backend_storage_bucket *raw,
 				       struct state_backend_storage_bucket **out);
-struct state_variable *state_find_var(struct state *state, const char *name);
 struct digest *state_backend_format_raw_get_digest(struct state_backend_format
 						   *format);
 void state_backend_set_readonly(struct state *state);
@@ -229,11 +209,6 @@ static inline struct state_enum32 *to_state_enum32(struct state_variable *s)
 	return container_of(s, struct state_enum32, var);
 }
 
-static inline struct state_mac *to_state_mac(struct state_variable *s)
-{
-	return container_of(s, struct state_mac, var);
-}
-
 static inline struct state_string *to_state_string(struct state_variable *s)
 {
 	return container_of(s, struct state_string, var);
diff --git a/include/state.h b/include/state.h
index 63164f9..ae67d95 100644
--- a/include/state.h
+++ b/include/state.h
@@ -5,6 +5,30 @@
 
 struct state;
 
+/* instance of a single variable */
+struct state_variable {
+	struct state *state;
+	struct list_head list;
+	const char *name;
+	unsigned int start;
+	unsigned int size;
+	void *raw;
+};
+
+/*
+ *  MAC address
+ */
+struct state_mac {
+	struct state_variable var;
+	struct param_d *param;
+	uint8_t value[6];
+	uint8_t value_default[6];
+};
+static inline struct state_mac *to_state_mac(struct state_variable *s)
+{
+	return container_of(s, struct state_mac, var);
+}
+
 int state_backend_dtb_file(struct state *state, const char *of_path,
 		const char *path);
 int state_backend_raw_file(struct state *state, const char *of_path,
@@ -23,4 +47,6 @@ int state_load(struct state *state);
 int state_save(struct state *state);
 void state_info(void);
 
+struct state_variable *state_find_var(struct state *state, const char *name);
+
 #endif /* __STATE_H */
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
