Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lPc-0004oh-LD
 for barebox@lists.infradead.org; Fri, 13 Sep 2019 13:14:59 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Sep 2019 15:14:42 +0200
Message-Id: <20190913131446.8202-5-m.tretter@pengutronix.de>
In-Reply-To: <20190913131446.8202-1-m.tretter@pengutronix.de>
References: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 4/8] firmware: add function to find firmware by devicetree
 node
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Allows to get the firmware manager using a phandle from the devicetree.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v2->v3:
- new separate patch for adding the function
---
 common/firmware.c  | 18 ++++++++++++++++++
 include/firmware.h | 15 +++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/common/firmware.c b/common/firmware.c
index 9d55d73e7a..609cf11822 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -62,6 +62,24 @@ struct firmware_mgr *firmwaremgr_find(const char *id)
 	return NULL;
 }
 
+/*
+ * firmwaremgr_find_by_node - find a firmware device handler
+ *
+ * Find a firmware device handler using the device node of the firmware
+ * handler. This allows to retrieve the firmware handler with a phandle from
+ * the device tree.
+ */
+struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+{
+	struct firmware_mgr *mgr;
+
+	list_for_each_entry(mgr, &firmwaremgr_list, list)
+		if (mgr->handler->dev->parent->device_node == np)
+			return mgr;
+
+	return NULL;
+}
+
 /*
  * firmwaremgr_list_handlers - list registered firmware device handlers
  *                             in pretty format
diff --git a/include/firmware.h b/include/firmware.h
index 284e0f9705..7c01a77118 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -34,10 +34,25 @@ struct firmware_mgr;
 int firmwaremgr_register(struct firmware_handler *);
 
 struct firmware_mgr *firmwaremgr_find(const char *);
+#ifdef CONFIG_FIRMWARE
+struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np);
+#else
+static inline struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *np)
+{
+	return NULL;
+}
+#endif
 
 void firmwaremgr_list_handlers(void);
 
+#ifdef CONFIG_FIRMWARE
 int firmwaremgr_load_file(struct firmware_mgr *, const char *path);
+#else
+static inline int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *path)
+{
+	return -ENOSYS;
+}
+#endif
 
 #define get_builtin_firmware(name, start, size) \
 	{							\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
