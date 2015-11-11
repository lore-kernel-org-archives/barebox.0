Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwXtk-0000mD-8b
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 16:05:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Nov 2015 17:05:00 +0100
Message-Id: <1447257901-8011-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] i2c: Create for_each_i2c_adapter()
To: Barebox List <barebox@lists.infradead.org>

This can be used by the i2c_probe command to iterate over i2c adapters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 8 ++++----
 include/i2c/i2c.h | 4 ++++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 52aaea8..9ed96da 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -42,7 +42,7 @@ struct boardinfo {
 };
 
 static LIST_HEAD(board_list);
-static LIST_HEAD(adapter_list);
+LIST_HEAD(i2c_adapter_list);
 
 /**
  * i2c_transfer - execute a single or combined I2C message
@@ -529,7 +529,7 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 {
 	struct i2c_adapter *adap;
 
-	list_for_each_entry(adap, &adapter_list, list)
+	for_each_i2c_adapter(adap)
 		if (adap->nr == busnum)
 			return adap;
 	return NULL;
@@ -539,7 +539,7 @@ struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
 {
 	struct i2c_adapter *adap;
 
-	list_for_each_entry(adap, &adapter_list, list)
+	for_each_i2c_adapter(adap)
 		if (adap->dev.device_node == node)
 			return adap;
 
@@ -584,7 +584,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (ret)
 		return ret;
 
-	list_add_tail(&adapter->list, &adapter_list);
+	list_add_tail(&adapter->list, &i2c_adapter_list);
 
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 12e4827..3fab76d9 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -235,6 +235,10 @@ extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
 
+extern struct list_head i2c_adapter_list;
+#define for_each_i2c_adapter(adap) \
+	list_for_each_entry(adap, &i2c_adapter_list, list)
+
 /* For devices that use several addresses, use i2c_new_dummy() to make
  * client handles for the extra addresses.
  */
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
