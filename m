Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40Ok-0007xP-4l
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:54 +0100
Message-Id: <20190313094202.14901-8-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/15] watchdog: imx: Add big endian register access support
To: Barebox List <barebox@lists.infradead.org>

Layerscape SoCs feature the same watchdog as the i.MX SoCs, but in big
endian mode. Add support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/watchdog/Kconfig  |  2 +-
 drivers/watchdog/Makefile |  1 +
 drivers/watchdog/imxwd.c  | 12 ++++++++++--
 3 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 2793ee93d9..04efb1a3c8 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -48,7 +48,7 @@ config WATCHDOG_MXS28
 
 config WATCHDOG_IMX
 	bool "i.MX watchdog"
-	depends on ARCH_IMX
+	depends on ARCH_IMX || ARCH_LAYERSCAPE
 	help
 	  Add support for watchdog found on Freescale i.MX SoCs.
 
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 69189ba1f3..6c8d36c8b8 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -7,6 +7,7 @@ obj-$(CONFIG_WATCHDOG_MXS28) += im28wd.o
 obj-$(CONFIG_WATCHDOG_DW) += dw_wdt.o
 obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
+obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
 obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index e2c3b9f96e..77a3bd76ce 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -38,6 +38,7 @@ struct imx_wd {
 	const struct imx_wd_ops *ops;
 	struct restart_handler restart;
 	bool ext_reset;
+	bool bigendian;
 };
 
 #define to_imx_wd(h) container_of(h, struct imx_wd, wd)
@@ -68,12 +69,18 @@ struct imx_wd {
 
 static void imxwd_write(struct imx_wd *priv, int reg, uint16_t val)
 {
-	writew(val, priv->base + reg);
+	if (priv->bigendian)
+		out_be16(priv->base + reg, val);
+	else
+		writew(val, priv->base + reg);
 }
 
 static uint16_t imxwd_read(struct imx_wd *priv, int reg)
 {
-	return readw(priv->base + reg);
+	if (priv->bigendian)
+		return in_be16(priv->base + reg);
+	else
+		return readw(priv->base + reg);
 }
 
 static int imx1_watchdog_set_timeout(struct imx_wd *priv, unsigned timeout)
@@ -230,6 +237,7 @@ static int imx_wd_probe(struct device_d *dev)
 	priv->wd.timeout_max = priv->ops->timeout_max;
 	priv->wd.hwdev = dev;
 	priv->dev = dev;
+	priv->bigendian = of_device_is_big_endian(dev->device_node);
 
 	priv->ext_reset = of_property_read_bool(dev->device_node,
 						"fsl,ext-reset-output");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
