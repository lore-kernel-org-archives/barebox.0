Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacpt-0003gE-4t
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 09:12:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hacpr-0003YX-Mp
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:12:55 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hacpr-0003JY-ET
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 11:12:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2019 11:12:53 +0200
Message-Id: <20190611091253.12491-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] treewide: remove stale mentions of CONFIG_OF in comments
To: barebox@lists.infradead.org

barebox doesn't define a CONFIG_OF kconfig option, but CONFIG_OFTREE
for the device tree handling and CONFIG_OFDEVICE for probing devices
out of the device tree.

Replace comment mentions of CONFIG_OF with mentions of either as
appropriate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c-mux.c          | 2 +-
 drivers/usb/misc/usb251xb.c    | 4 ++--
 include/linux/nvmem-consumer.h | 2 +-
 include/of_device.h            | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/i2c-mux.c b/drivers/i2c/i2c-mux.c
index f87e1fadb651..ab31da61d6fa 100644
--- a/drivers/i2c/i2c-mux.c
+++ b/drivers/i2c/i2c-mux.c
@@ -96,7 +96,7 @@ struct i2c_adapter *i2c_add_mux_adapter(struct i2c_adapter *parent,
 
 	/*
 	 * Try to populate the mux adapter's device_node, expands to
-	 * nothing if !CONFIG_OF.
+	 * nothing if !CONFIG_OFDEVICE.
 	 */
 	if (mux_dev->device_node) {
 		struct device_node *child;
diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index 97f55efa82fb..a7a444e039c0 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -612,13 +612,13 @@ static const struct of_device_id usb251xb_of_match[] = {
 		/* sentinel */
 	}
 };
-#else /* CONFIG_OF */
+#else /* CONFIG_OFDEVICE */
 static int usb251xb_get_ofdata(struct usb251xb *hub,
 			       struct usb251xb_data *data)
 {
 	return 0;
 }
-#endif /* CONFIG_OF */
+#endif /* CONFIG_OFDEVICE */
 
 static int usb251xb_probe(struct usb251xb *hub)
 {
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 32ea46e3bf54..9e0fd4265ea2 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -103,6 +103,6 @@ static inline struct nvmem_device *of_nvmem_device_get(struct device_node *np,
 {
 	return ERR_PTR(-ENOSYS);
 }
-#endif /* CONFIG_NVMEM && CONFIG_OF */
+#endif /* CONFIG_NVMEM && CONFIG_OFTREE */
 
 #endif  /* ifndef _LINUX_NVMEM_CONSUMER_H */
diff --git a/include/of_device.h b/include/of_device.h
index 44c1c0f54551..54410ad12f55 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -22,7 +22,7 @@ static inline int of_driver_match_device(struct device_d *dev,
 
 extern const void *of_device_get_match_data(const struct device_d *dev);
 
-#else /* CONFIG_OF */
+#else /* CONFIG_OFTREE */
 
 static inline int of_driver_match_device(struct device_d *dev,
 					 const struct device_d *drv)
@@ -43,6 +43,6 @@ static inline const struct of_device_id *__of_match_device(
 #define of_match_device(matches, dev)	\
 	__of_match_device(matches, (dev))
 
-#endif /* CONFIG_OF */
+#endif /* CONFIG_OFTREE */
 
 #endif /* _LINUX_OF_DEVICE_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
