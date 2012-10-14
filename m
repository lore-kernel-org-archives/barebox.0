Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVLa-0004As-Gd
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 21:03:45 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F1AB8FF966A
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 23:10:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 23:01:13 +0200
Message-Id: <1350248478-19359-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/12] spi: add bus device
To: barebox@lists.infradead.org

automatically add it as parent if the device does not have a parent already

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/spi.c |   17 ++++++++++++++---
 include/spi/spi.h |    5 +++--
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 44040e5..51892a7 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -75,7 +75,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	proxy->mode = chip->mode;
 	proxy->bits_per_word = chip->bits_per_word ? chip->bits_per_word : 8;
 	proxy->dev.platform_data = chip->platform_data;
-	proxy->dev.bus = &spi_bus;
+	proxy->dev.bus = &spi_bus_type;
 	strcpy(proxy->dev.name, chip->name);
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
@@ -93,6 +93,11 @@ struct spi_device *spi_new_device(struct spi_master *master,
 
 	register_device(&proxy->dev);
 
+	if (!proxy->dev.parent) {
+		proxy->dev.parent = &spi_bus;
+		dev_add_child(proxy->dev.parent, &proxy->dev);
+	}
+
 	return proxy;
 fail:
 	free(proxy);
@@ -285,7 +290,12 @@ static void spi_remove(struct device_d *dev)
 	dev->driver->remove(dev);
 }
 
-struct bus_type spi_bus = {
+struct device_d spi_bus = {
+	.name = "spi",
+	.id = DEVICE_ID_SINGLE,
+};
+
+struct bus_type spi_bus_type = {
 	.name = "spi",
 	.match = spi_match,
 	.probe = spi_probe,
@@ -294,6 +304,7 @@ struct bus_type spi_bus = {
 
 static int spi_bus_init(void)
 {
-	return bus_register(&spi_bus);
+	register_device(&spi_bus);
+	return bus_register(&spi_bus_type);
 }
 pure_initcall(spi_bus_init);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 1773ca2..fe9c809 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -430,11 +430,12 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
 
 #endif /* DOXYGEN_SHOULD_SKIP_THIS */
 
-extern struct bus_type spi_bus;
+extern struct device_d spi_bus;
+extern struct bus_type spi_bus_type;
 
 static inline int spi_register_driver(struct driver_d *drv)
 {
-	drv->bus = &spi_bus;
+	drv->bus = &spi_bus_type;
 	return register_driver(drv);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
