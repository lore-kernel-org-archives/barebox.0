Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLa-0004Ar-GY
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:45 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id DE9FBFF9666
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:12 +0200
Message-Id: <1350248478-19359-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121014205929.GU13639@game.jcrosoft.org>
 <1350248478-19359-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/12] i2c: add bus device
To: barebox@lists.infradead.org

automatically add it as parent if the device does not have a parent already

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/i2c.c |   26 +++++++++++++++++++-------
 include/i2c/i2c.h |    5 +++--
 2 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 27fd256..dd7dfd7 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -252,12 +252,20 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	strcpy(client->dev.name, chip->type);
 	client->dev.type_data = client;
 	client->dev.platform_data = chip->platform_data;
-	client->dev.bus = &i2c_bus;
+	client->dev.bus = &i2c_bus_type;
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
 	status = register_device(&client->dev);
 
+	if (status)
+		goto fail;
+
+	if (!client->dev.parent) {
+		client->dev.parent = &i2c_bus;
+		dev_add_child(client->dev.parent, &client->dev);
+	}
+
 #if 0
 	/* drivers may modify this initial i/o setup */
 	status = master->setup(client);
@@ -270,11 +278,9 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 
 	return client;
 
-#if 0
- fail:
-	free(proxy);
+fail:
+	free(client);
 	return NULL;
-#endif
 }
 EXPORT_SYMBOL(i2c_new_device);
 
@@ -390,7 +396,12 @@ static void i2c_remove(struct device_d *dev)
 	dev->driver->remove(dev);
 }
 
-struct bus_type i2c_bus = {
+struct device_d i2c_bus = {
+	.name = "i2c",
+	.id = DEVICE_ID_SINGLE,
+};
+
+struct bus_type i2c_bus_type = {
 	.name = "i2c",
 	.match = i2c_match,
 	.probe = i2c_probe,
@@ -399,6 +410,7 @@ struct bus_type i2c_bus = {
 
 static int i2c_bus_init(void)
 {
-	return bus_register(&i2c_bus);
+	register_device(&i2c_bus);
+	return bus_register(&i2c_bus_type);
 }
 pure_initcall(i2c_bus_init);
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index de2a7ea..20d7f65 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -139,11 +139,12 @@ extern int i2c_write_reg(struct i2c_client *client, u32 addr, const u8 *buf, u16
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
-extern struct bus_type i2c_bus;
+extern struct device_d i2c_bus;
+extern struct bus_type i2c_bus_type;
 
 static inline int i2c_register_driver(struct driver_d *drv)
 {
-	drv->bus = &i2c_bus;
+	drv->bus = &i2c_bus_type;
 	return register_driver(drv);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
