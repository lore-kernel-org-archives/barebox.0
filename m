Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WiIoE-0000kH-MZ
 for barebox@lists.infradead.org; Thu, 08 May 2014 07:32:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  8 May 2014 09:31:35 +0200
Message-Id: <1399534299-27051-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
References: <1399534299-27051-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] mfd: mc13xxx: Allow to set callback for mc13xxx
To: barebox@lists.infradead.org

Some boards have to initialize the PMIC before other devices can
be initialized. This requires three levels of initcalls: one level
in which the PMIC is probed, one in which the board can call mc13xxx_get()
and the third one to initialize the PMIC dependent devices.

Allow to register a callback which is called once the PMIC is initialized.
This way mc13xxx_get() is no longer necessary and the number of required
initcalls levels is reduced to two.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c | 18 ++++++++++++++++++
 drivers/net/fec_imx.h |  1 +
 include/mfd/mc13xxx.h |  6 ++++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index bfbd328..9842c56 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -60,6 +60,21 @@ int mc13xxx_revision(struct mc13xxx *mc13xxx)
 }
 EXPORT_SYMBOL(mc13xxx_revision);
 
+void(*mc13xxx_callback)(struct mc13xxx *mc13xxx);
+
+int mc13xxx_register_callback(void(*callback)(struct mc13xxx *mc13xxx))
+{
+	if (mc13xxx_callback)
+		return -EBUSY;
+
+	mc13xxx_callback = callback;
+
+	if (mc_dev)
+		mc13xxx_callback(mc_dev);
+
+	return 0;
+}
+
 #ifdef CONFIG_SPI
 static int spi_rw(struct spi_device *spi, void * buf, size_t len)
 {
@@ -350,6 +365,9 @@ static int __init mc13xxx_probe(struct device_d *dev)
 	mc_dev->revision = rev;
 	devfs_create(&mc_dev->cdev);
 
+	if (mc13xxx_callback)
+		mc13xxx_callback(mc_dev);
+
 	return 0;
 }
 
diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
index 0921b52..a77c1dc 100644
--- a/drivers/net/fec_imx.h
+++ b/drivers/net/fec_imx.h
@@ -146,6 +146,7 @@ struct fec_priv {
 	void (*phy_init)(struct phy_device *dev);
 	struct clk *clk;
 	enum fec_type type;
+	int phy_reset_gpio;
 };
 
 static inline int fec_is_imx27(struct fec_priv *priv)
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 1946b1a..cf5c42d 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -171,6 +171,7 @@ extern int mc13xxx_revision(struct mc13xxx *mc13xxx);
 extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
 extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
 extern int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val);
+int mc13xxx_register_callback(void(*callback)(struct mc13xxx *mc13xxx));
 #else
 static inline struct mc13xxx *mc13xxx_get(void)
 {
@@ -196,6 +197,11 @@ static inline int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u3
 {
 	return -ENODEV;
 }
+
+static inline int mc13xxx_register_callback(void(*callback)(struct mc13xxx *mc13xxx))
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __MFD_MC13XXX_H */
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
