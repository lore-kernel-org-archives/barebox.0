Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QV-Oc
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:50 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id C1FAB1BF20A
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:30 +0100
Message-Id: <20201128213934.681065-7-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 07/11] ARM: rpi: Add Raspberry Pi Zero W mini-uart support
To: barebox@lists.infradead.org

Unlike the Raspberry Pi 1 and Raspberry Pi Zero, the Raspberry Pi Zero W
has its console pins on the header connected to the mini-uart, not the
PL011. The secondary PL011 UART is connected to the bluetooth module.

Set the mini-uart as default console and disable the PL011. That way we
can use the Raspberry Pi 1 image for the Zero W as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 23 ++++++++++++++++++++++-
 drivers/of/base.c                         | 15 +++++++++++++++
 include/of.h                              |  1 +
 3 files changed, 38 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index dba68d17992f..f1d8a4e0f609 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -173,6 +173,27 @@ static void rpi_0_init(void)
 	rpi_set_usbotg("usb0");
 }
 
+static void rpi_0_w_init(void)
+{
+	struct device_node *np;
+	int ret;
+
+	rpi_0_init();
+
+	np = of_find_node_by_path("/chosen");
+	if (!np)
+		return;
+
+	if (!of_device_enable_and_register_by_alias("serial1"))
+		return;
+
+	ret = of_property_write_string(np, "stdout-path", "serial1:115200n8");
+	if (ret)
+		return;
+
+	of_device_disable_by_alias("serial0");
+}
+
 /* See comments in mbox.h for data source */
 static const struct rpi_model rpi_models_old_scheme[] = {
 	RPI_MODEL(0, "Unknown model", NULL),
@@ -208,7 +229,7 @@ static const struct rpi_model rpi_models_new_scheme[] = {
 	RPI_MODEL(BCM2835_BOARD_REV_ZERO, 	"Zero", 	rpi_0_init),
 	RPI_MODEL(BCM2837_BOARD_REV_CM3, 	"Compute Module 3", NULL ),
 	RPI_MODEL(0xb, "Unknown model", NULL),
-	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_init),
+	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_0_w_init),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3 B+", 	rpi_b_plus_init ),
 	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Nodel 3 A+", 	rpi_b_plus_init),
 	RPI_MODEL(0xf, "Unknown model", NULL),
diff --git a/drivers/of/base.c b/drivers/of/base.c
index dcb5ccd01844..4ff60aa81435 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2566,6 +2566,21 @@ int of_device_disable_path(const char *path)
 	return of_device_disable(node);
 }
 
+/**
+ * of_device_disable_path_by_alias - disable a devicenode by alias
+ * @alias - the alias of the device tree node to disable
+ */
+int of_device_disable_by_alias(const char *alias)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_alias(NULL, alias);
+	if (!node)
+		return -ENODEV;
+
+	return of_device_disable(node);
+}
+
 /**
  * of_get_reproducible_name() - get a reproducible name of a node
  * @node: The node to get a name from
diff --git a/include/of.h b/include/of.h
index 60445729e81a..2104802df709 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1006,6 +1006,7 @@ int of_device_enable(struct device_node *node);
 int of_device_enable_path(const char *path);
 int of_device_disable(struct device_node *node);
 int of_device_disable_path(const char *path);
+int of_device_disable_by_alias(const char *alias);
 
 phandle of_get_tree_max_phandle(struct device_node *root);
 phandle of_node_create_phandle(struct device_node *node);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
