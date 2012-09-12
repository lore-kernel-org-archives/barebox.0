Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtDu-00047w-AU
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:37 +0200
Message-Id: <1347480407-16865-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/15] spi: add oftree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c |   34 +++++++++++++++++++++++++++++++++-
 include/spi/spi.h |    6 ++++++
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 4416783..bbb7679 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -83,6 +83,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	/* allocate a free id for this chip */
 	proxy->dev.id = DEVICE_ID_DYNAMIC;
 	proxy->dev.type_data = proxy;
+	proxy->dev.device_node = chip->device_node;
 	dev_add_child(master->dev, &proxy->dev);
 
 	/* drivers may modify this initial i/o setup */
@@ -102,6 +103,29 @@ fail:
 }
 EXPORT_SYMBOL(spi_new_device);
 
+#ifdef CONFIG_OFTREE
+#include <of.h>
+
+void spi_of_register_slaves(struct spi_master *master, struct device_node *node)
+{
+	struct device_node *n;
+	struct spi_board_info chip;
+	struct property *reg;
+
+	device_node_for_nach_child(node, n) {
+		chip.name = n->name;
+		chip.bus_num = master->bus_num;
+		chip.max_speed_hz = 300000; /* FIXME */
+		reg = of_find_property(n, "reg");
+		if (!reg)
+			continue;
+		chip.chip_select = of_read_number(reg->value, 1);
+		chip.device_node = n;
+		spi_register_board_info(&chip, 1);
+	}
+}
+#endif
+
 /**
  * spi_register_board_info - register SPI devices for a given board
  * @info: array of chip descriptors
@@ -145,7 +169,7 @@ static void scan_boardinfo(struct spi_master *master)
 		unsigned		n;
 
 		for (n = bi->n_board_info; n > 0; n--, chip++) {
-			debug("%s %d %d\n", __FUNCTION__, chip->bus_num, master->bus_num);
+			printf("%s %d %d\n", __FUNCTION__, chip->bus_num, master->bus_num);
 			if (chip->bus_num != master->bus_num)
 				continue;
 			/* NOTE: this relies on spi_new_device to
@@ -156,6 +180,8 @@ static void scan_boardinfo(struct spi_master *master)
 	}
 }
 
+static LIST_HEAD(spi_master_list);
+
 /**
  * spi_register_master - register SPI master controller
  * @master: initialized master, originally from spi_alloc_master()
@@ -188,6 +214,8 @@ int spi_register_master(struct spi_master *master)
 	if (master->num_chipselect == 0)
 		return -EINVAL;
 
+	list_add_tail(&master->list, &spi_master_list);
+
 	/* populate children from any spi device tables */
 	scan_boardinfo(master);
 	status = 0;
@@ -245,6 +273,10 @@ EXPORT_SYMBOL(spi_write_then_read);
 
 static int spi_match(struct device_d *dev, struct driver_d *drv)
 {
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
+			drv->of_compatible)
+		return of_match(dev, drv);
+
 	return strcmp(dev->name, drv->name) ? -1 : 0;
 }
 
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 569cdcd..1773ca2 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -17,6 +17,7 @@ struct spi_board_info {
 	u8	mode;
 	u8	bits_per_word;
 	void	*platform_data;
+	struct device_node *device_node;
 };
 
 /**
@@ -163,6 +164,8 @@ struct spi_master {
 
 	/* called on release() to free memory provided by spi_master */
 	void			(*cleanup)(struct spi_device *spi);
+
+	struct list_head list;
 };
 
 /*---------------------------------------------------------------------------*/
@@ -434,4 +437,7 @@ static inline int spi_register_driver(struct driver_d *drv)
 	drv->bus = &spi_bus;
 	return register_driver(drv);
 }
+
+void spi_of_register_slaves(struct spi_master *master, struct device_node *node);
+
 #endif /* __INCLUDE_SPI_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
