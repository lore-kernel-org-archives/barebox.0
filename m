Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hC3k6-0007eA-2C
 for barebox@lists.infradead.org; Thu, 04 Apr 2019 14:53:29 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  4 Apr 2019 16:53:18 +0200
Message-Id: <20190404145320.11465-6-m.tretter@pengutronix.de>
In-Reply-To: <20190404145320.11465-1-m.tretter@pengutronix.de>
References: <20190404145320.11465-1-m.tretter@pengutronix.de>
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
Subject: [RFC PATCH 5/7] firmware: allow to find manager by device node
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The firmware manager can be found by using the id-String. The id cannot
be used, if the user of the firmware handler is a driver that only has a
handle to the firmware managers devicetree node, because there is no way
to map from the devicetree to the id.

Add a function that allows to get the firmware handler using its device
tree node.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 common/firmware.c  | 18 ++++++++++++++++++
 include/firmware.h |  1 +
 2 files changed, 19 insertions(+)

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
index 284e0f9705..ccd3b0669b 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -34,6 +34,7 @@ struct firmware_mgr;
 int firmwaremgr_register(struct firmware_handler *);
 
 struct firmware_mgr *firmwaremgr_find(const char *);
+struct firmware_mgr *firmwaremgr_find_by_node(const struct device_node *);
 
 void firmwaremgr_list_handlers(void);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
