Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOTAg-00055Z-U5
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 14:33:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 15:32:27 +0100
Message-Id: <1394807569-23620-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
References: <1394807569-23620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/29] i2c: implement of_find_i2c_adapter_by_node
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 11 +++++++++++
 include/i2c/i2c.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index e289a35..9873957 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -405,6 +405,17 @@ struct i2c_adapter *i2c_get_adapter(int busnum)
 	return NULL;
 }
 
+struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node)
+{
+	struct i2c_adapter *adap;
+
+	list_for_each_entry(adap, &adapter_list, list)
+		if (adap->dev.device_node == node)
+			return adap;
+
+	return NULL;
+}
+
 /**
  * i2c_add_numbered_adapter - declare i2c adapter, use static bus number
  * @adapter: the adapter to register (with adap->nr initialized)
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 81e5daa..f89fefb 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -133,6 +133,7 @@ static inline int i2c_register_board_info(int busnum,
 #endif
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
+struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
 
 /* For devices that use several addresses, use i2c_new_dummy() to make
  * client handles for the extra addresses.
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
