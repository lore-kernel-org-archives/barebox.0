Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkkV-0005b4-2N
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 20:55:24 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0A29EFFA63D
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:05:54 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 21:53:08 +0100
Message-Id: <1351975989-8218-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351975989-8218-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121103204613.GZ29599@game.jcrosoft.org>
 <1351975989-8218-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] i2c: introduce i2c_new_dummy
To: barebox@lists.infradead.org

This returns an I2C client bound to the "dummy" driver, intended for use
with devices that consume multiple addresses.  Examples of such chips
include various EEPROMS (like 24c04 and 24c08 models).

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/i2c.c |   28 ++++++++++++++++++++++++++++
 include/i2c/i2c.h |    8 ++++++++
 2 files changed, 36 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 3af5c32..92d9442 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -282,6 +282,34 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 EXPORT_SYMBOL(i2c_new_device);
 
 /**
+ * i2c_new_dummy - return a new i2c device bound to a dummy driver
+ * @adapter: the adapter managing the device
+ * @address: seven bit address to be used
+ * Context: can sleep
+ *
+ * This returns an I2C client bound to the "dummy" driver, intended for use
+ * with devices that consume multiple addresses.  Examples of such chips
+ * include various EEPROMS (like 24c04 and 24c08 models).
+ *
+ * These dummy devices have two main uses.  First, most I2C and SMBus calls
+ * except i2c_transfer() need a client handle; the dummy will be that handle.
+ * And second, this prevents the specified address from being bound to a
+ * different driver.
+ *
+ * This returns the new i2c client, which should be saved for later use with
+ * i2c_unregister_device(); or NULL to indicate an error.
+ */
+struct i2c_client *i2c_new_dummy(struct i2c_adapter *adapter, u16 address)
+{
+	struct i2c_board_info info = {
+		I2C_BOARD_INFO("dummy", address),
+	};
+
+	return i2c_new_device(adapter, &info);
+}
+EXPORT_SYMBOL_GPL(i2c_new_dummy);
+
+/**
  * i2c_register_board_info - register I2C devices for a given board
  *
  * @param	info	array of chip descriptors
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index b059119..dc5e5fc 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -129,6 +129,14 @@ static inline int i2c_register_board_info(int busnum,
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 
+/* For devices that use several addresses, use i2c_new_dummy() to make
+ * client handles for the extra addresses.
+ */
+extern struct i2c_client *
+i2c_new_dummy(struct i2c_adapter *adap, u16 address);
+
+
+
 extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 extern int i2c_master_send(struct i2c_client *client, const char *buf, int count);
 extern int i2c_master_recv(struct i2c_client *client, char *buf, int count);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
