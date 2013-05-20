Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeWQz-0000a5-F0
 for barebox@lists.infradead.org; Mon, 20 May 2013 20:11:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 22:11:23 +0200
Message-Id: <1369080684-11138-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
References: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] i2c: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h |  1 +
 2 files changed, 46 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index ddf0082..067224b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -254,6 +254,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client->dev.platform_data = chip->platform_data;
 	client->dev.id = DEVICE_ID_DYNAMIC;
 	client->dev.bus = &i2c_bus;
+	client->dev.device_node = chip->of_node;
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
@@ -269,6 +270,44 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 }
 EXPORT_SYMBOL(i2c_new_device);
 
+void of_i2c_register_devices(struct i2c_adapter *adap)
+{
+	struct device_node *n;
+
+	/* Only register child devices if the adapter has a node pointer set */
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !adap->dev.device_node)
+		return;
+
+	device_node_for_nach_child(adap->dev.device_node, n) {
+		struct i2c_board_info info = {};
+		struct i2c_client *result;
+		const __be32 *addr;
+		int len;
+
+		strcpy(info.type, n->name);
+		info.of_node = n;
+
+		addr = of_get_property(n, "reg", &len);
+		if (!addr || (len < sizeof(int))) {
+			dev_err(&adap->dev, "of_i2c: invalid reg on %s\n",
+				n->full_name);
+			continue;
+		}
+
+		info.addr = be32_to_cpup(addr);
+		if (info.addr > (1 << 10) - 1) {
+			dev_err(&adap->dev, "of_i2c: invalid addr=%x on %s\n",
+				info.addr, n->full_name);
+			continue;
+		}
+
+		result = i2c_new_device(adap, &info);
+		if (!result)
+			dev_err(&adap->dev, "of_i2c: Failure registering %s\n",
+			        n->full_name);
+	}
+}
+
 /**
  * i2c_new_dummy - return a new i2c device bound to a dummy driver
  * @adapter: the adapter managing the device
@@ -408,6 +447,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
 
+	of_i2c_register_devices(adapter);
+
 	return 0;
 }
 EXPORT_SYMBOL(i2c_add_numbered_adapter);
@@ -417,6 +458,10 @@ static int i2c_match(struct device_d *dev, struct driver_d *drv)
 	if (!strcmp(dev->name, drv->name))
 		return 0;
 
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
+			drv->of_compatible)
+		return of_match(dev, drv);
+
 	if (drv->id_table) {
 		struct platform_device_id *id = drv->id_table;
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 7b59a51..3b4be45 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -102,6 +102,7 @@ struct i2c_board_info {
 	char		type[I2C_NAME_SIZE];	/**< name of device */
 	unsigned short	addr;			/**< stored in i2c_client.addr */
 	void		*platform_data;		/**< platform data for device */
+	struct device_node *of_node;
 };
 
 /**
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
