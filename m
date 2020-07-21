Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxlYn-0005ux-Fw
 for barebox@lists.infradead.org; Tue, 21 Jul 2020 06:15:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Jul 2020 08:15:23 +0200
Message-Id: <20200721061523.27105-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] treewide: remove stale instances of struct device
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We call it struct device_d, any instances of struct device are likely
left-over code after porting from Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/intern.h   | 5 -----
 drivers/crypto/caam/jr.h       | 2 --
 drivers/gpio/gpio-sx150x.c     | 1 -
 drivers/usb/musb/musb_gadget.c | 9 ---------
 4 files changed, 17 deletions(-)

diff --git a/drivers/crypto/caam/intern.h b/drivers/crypto/caam/intern.h
index 6dfcea26ac41..b13b7e08bc70 100644
--- a/drivers/crypto/caam/intern.h
+++ b/drivers/crypto/caam/intern.h
@@ -53,8 +53,6 @@ struct caam_drv_private_jr {
  */
 struct caam_drv_private {
 
-	struct device *dev;
-	struct device *smdev;
 	struct device_d **jrpdev; /* Alloc'ed array per sub-device */
 	struct device_d *pdev;
 
@@ -89,9 +87,6 @@ struct caam_drv_private {
 	struct clk *caam_emi_slow;
 };
 
-void caam_jr_algapi_init(struct device *dev);
-void caam_jr_algapi_remove(struct device *dev);
-
 int caam_rng_probe(struct device_d *dev, struct device_d *jrdev);
 int caam_blob_gen_probe(struct device_d *dev, struct device_d *jrdev);
 int caam_jr_probe(struct device_d *dev);
diff --git a/drivers/crypto/caam/jr.h b/drivers/crypto/caam/jr.h
index e0e53c0f6cbf..85aca6d88c24 100644
--- a/drivers/crypto/caam/jr.h
+++ b/drivers/crypto/caam/jr.h
@@ -8,8 +8,6 @@
 #define JR_H
 
 /* Prototypes for backend-level services exposed to APIs */
-struct device *caam_jr_alloc(void);
-void caam_jr_free(struct device *rdev);
 int caam_jr_enqueue(struct device_d *dev, u32 *desc,
 		    void (*cbk)(struct device_d *dev, u32 *desc, u32 status,
 				void *areq),
diff --git a/drivers/gpio/gpio-sx150x.c b/drivers/gpio/gpio-sx150x.c
index 76535187b0b4..cf166f3c28cc 100644
--- a/drivers/gpio/gpio-sx150x.c
+++ b/drivers/gpio/gpio-sx150x.c
@@ -45,7 +45,6 @@ struct sx150x_device_data {
 };
 
 struct sx150x_gpio {
-	struct device *dev;
 	struct i2c_client *client;
 	struct gpio_chip gpio;
 	struct regmap *regmap;
diff --git a/drivers/usb/musb/musb_gadget.c b/drivers/usb/musb/musb_gadget.c
index fc5cfb13f5df..87f7e78e66d6 100644
--- a/drivers/usb/musb/musb_gadget.c
+++ b/drivers/usb/musb/musb_gadget.c
@@ -653,15 +653,6 @@ void musb_free_request(struct usb_ep *ep, struct usb_request *req)
 	kfree(to_musb_request(req));
 }
 
-static LIST_HEAD(buffers);
-
-struct free_record {
-	struct list_head	list;
-	struct device		*dev;
-	unsigned		bytes;
-	dma_addr_t		dma;
-};
-
 /*
  * Context: controller locked, IRQs blocked.
  */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
