Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZI-Tg
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:34 +0100
Message-Id: <1382961700-8833-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
References: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] spi: Call spi_of_register_slaves from core
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

Makes individual handling of OF spi slaves unnecessary in the bus drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/imx_spi.c   | 2 --
 drivers/spi/mvebu_spi.c | 3 ---
 drivers/spi/spi.c       | 8 +++++++-
 include/spi/spi.h       | 2 --
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6f942bf..1c6b684 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -517,8 +517,6 @@ static int imx_spi_dt_probe(struct imx_spi *imx)
 		imx->cs_array[i] = cs_gpio;
 	}
 
-	spi_of_register_slaves(&imx->master, node);
-
 	return 0;
 }
 
diff --git a/drivers/spi/mvebu_spi.c b/drivers/spi/mvebu_spi.c
index 7aaa9fe..4a6d96f 100644
--- a/drivers/spi/mvebu_spi.c
+++ b/drivers/spi/mvebu_spi.c
@@ -361,9 +361,6 @@ static int mvebu_spi_probe(struct device_d *dev)
 	master->transfer = mvebu_spi_transfer;
 	master->num_chipselect = 1;
 
-	if (dev->device_node)
-		spi_of_register_slaves(master, dev->device_node);
-
 	ret = spi_register_master(master);
 	if (!ret)
 		return 0;
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 55bebe0..d273050 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -101,11 +101,15 @@ fail:
 EXPORT_SYMBOL(spi_new_device);
 
 #ifdef CONFIG_OFDEVICE
-void spi_of_register_slaves(struct spi_master *master, struct device_node *node)
+static void spi_of_register_slaves(struct spi_master *master)
 {
 	struct device_node *n;
 	struct spi_board_info chip;
 	struct property *reg;
+	struct device_node *node = master->dev->device_node;
+
+	if (!node)
+		return;
 
 	for_each_child_of_node(node, n) {
 		memset(&chip, 0, sizeof(chip));
@@ -222,6 +226,8 @@ int spi_register_master(struct spi_master *master)
 
 	list_add_tail(&master->list, &spi_master_list);
 
+	spi_of_register_slaves(master);
+
 	/* populate children from any spi device tables */
 	scan_boardinfo(master);
 	status = 0;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 45fd22c..b4358a8 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -446,6 +446,4 @@ static inline int spi_driver_register(struct driver_d *drv)
 #define device_spi_driver(drv)	\
 	register_driver_macro(device,spi,drv)
 
-void spi_of_register_slaves(struct spi_master *master, struct device_node *node);
-
 #endif /* __INCLUDE_SPI_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
