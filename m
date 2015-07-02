Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAXvV-00052x-0z
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:24:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:24:25 +0200
Message-Id: <1435818265-13202-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435818265-13202-1-git-send-email-s.hauer@pengutronix.de>
References: <1435818265-13202-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] bus: omap-gpmc: Add Generic device support
To: Barebox List <barebox@lists.infradead.org>

This adds support for generic devices like NOR flash and
ethernet to the gpmc bus driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/bus/omap-gpmc.c | 142 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/bus/omap-gpmc.c b/drivers/bus/omap-gpmc.c
index 1c46a0d..8ae909a 100644
--- a/drivers/bus/omap-gpmc.c
+++ b/drivers/bus/omap-gpmc.c
@@ -24,6 +24,14 @@
 #define GPMC_CS_NUM	8
 #define GPMC_NR_WAITPINS		4
 
+#define GPMC_BURST_4			4	/* 4 word burst */
+#define GPMC_BURST_8			8	/* 8 word burst */
+#define GPMC_BURST_16			16	/* 16 word burst */
+#define GPMC_DEVWIDTH_8BIT		1	/* 8-bit device width */
+#define GPMC_DEVWIDTH_16BIT		2	/* 16-bit device width */
+#define GPMC_MUX_AAD			1	/* Addr-Addr-Data multiplex */
+#define GPMC_MUX_AD			2	/* Addr-Data multiplex */
+
 #define GPMC_CONFIG1_WRAPBURST_SUPP		(1 << 31)
 #define GPMC_CONFIG1_READMULTIPLE_SUPP		(1 << 30)
 #define GPMC_CONFIG1_READTYPE_ASYNC		(0 << 29)
@@ -55,6 +63,9 @@
 #define	GPMC_CONFIG6_CYCLE2CYCLESAMECSEN	(1 << 7)
 #define GPMC_CONFIG7_CSVALID			(1 << 6)
 
+#define GPMC_DEVICETYPE_NOR		0
+#define GPMC_DEVICETYPE_NAND		2
+
 static unsigned int gpmc_cs_num = GPMC_CS_NUM;
 static unsigned int gpmc_nr_waitpins;
 static unsigned long gpmc_l3_clk = 100000000; /* This should be a proper clock */
@@ -220,6 +231,8 @@ static int gpmc_timings_to_config(struct gpmc_config *gpmc_config, const struct
 	if (div < 0)
 		return div;
 
+	gpmc_config->cfg[0] |= div - 1;
+
 	ret |= set_cfg(gpmc_config, 0, 18, 19, t->wait_monitoring);
 	ret |= set_cfg(gpmc_config, 0, 25, 26, t->clk_activation);
 
@@ -255,6 +268,60 @@ static int gpmc_timings_to_config(struct gpmc_config *gpmc_config, const struct
 	return 0;
 }
 
+static int gpmc_settings_to_config(struct gpmc_config *gpmc_config,
+		struct gpmc_settings *p)
+{
+	u32 config1 = gpmc_config->cfg[0];
+
+	/* Page/burst mode supports lengths of 4, 8 and 16 bytes */
+	if (p->burst_read || p->burst_write) {
+		switch (p->burst_len) {
+		case GPMC_BURST_4:
+		case GPMC_BURST_8:
+		case GPMC_BURST_16:
+			break;
+		default:
+			pr_err("%s: invalid page/burst-length (%d)\n",
+			       __func__, p->burst_len);
+			return -EINVAL;
+		}
+	}
+
+	if (p->wait_pin > gpmc_nr_waitpins) {
+		pr_err("%s: invalid wait-pin (%d)\n", __func__, p->wait_pin);
+		return -EINVAL;
+	}
+
+	config1 |= GPMC_CONFIG1_DEVICESIZE((p->device_width - 1));
+
+	if (p->sync_read)
+		config1 |= GPMC_CONFIG1_READTYPE_SYNC;
+	if (p->sync_write)
+		config1 |= GPMC_CONFIG1_WRITETYPE_SYNC;
+	if (p->wait_on_read)
+		config1 |= GPMC_CONFIG1_WAIT_READ_MON;
+	if (p->wait_on_write)
+		config1 |= GPMC_CONFIG1_WAIT_WRITE_MON;
+	if (p->wait_on_read || p->wait_on_write)
+		config1 |= GPMC_CONFIG1_WAIT_PIN_SEL(p->wait_pin);
+	if (p->device_nand)
+		config1	|= GPMC_CONFIG1_DEVICETYPE(GPMC_DEVICETYPE_NAND);
+	if (p->mux_add_data)
+		config1	|= GPMC_CONFIG1_MUXTYPE(p->mux_add_data);
+	if (p->burst_read)
+		config1 |= GPMC_CONFIG1_READMULTIPLE_SUPP;
+	if (p->burst_write)
+		config1 |= GPMC_CONFIG1_WRITEMULTIPLE_SUPP;
+	if (p->burst_read || p->burst_write) {
+		config1 |= GPMC_CONFIG1_PAGE_LEN(p->burst_len >> 3);
+		config1 |= p->burst_wrap ? GPMC_CONFIG1_WRAPBURST_SUPP : 0;
+	}
+
+	gpmc_config->cfg[0] = config1;
+
+	return 0;
+}
+
 /**
  * gpmc_read_settings_dt - read gpmc settings from device-tree
  * @np:		pointer to device-tree node for a gpmc child device
@@ -464,6 +531,77 @@ static int gpmc_probe_nand_child(struct device_d *dev,
 	return 0;
 }
 
+/**
+ * gpmc_probe_generic_child - configures the gpmc for a child device
+ * @pdev:	pointer to gpmc platform device
+ * @child:	pointer to device-tree node for child device
+ *
+ * Allocates and configures a GPMC chip-select for a child device.
+ * Returns 0 on success and appropriate negative error code on failure.
+ */
+static int gpmc_probe_generic_child(struct device_d *dev,
+				struct device_node *child)
+{
+	struct gpmc_settings gpmc_s = {};
+	struct gpmc_timings gpmc_t = {};
+	struct resource res;
+	int ret, cs;
+	struct gpmc_config cfg = {};
+	resource_size_t size;
+
+	if (of_property_read_u32(child, "reg", &cs) < 0) {
+		dev_err(dev, "%s has no 'reg' property\n",
+			child->full_name);
+		return -ENODEV;
+	}
+
+	if (of_address_to_resource(child, 0, &res) < 0) {
+		dev_err(dev, "%s has malformed 'reg' property\n",
+			child->full_name);
+		return -ENODEV;
+	}
+
+	gpmc_read_settings_dt(child, &gpmc_s);
+	gpmc_read_timings_dt(child, &gpmc_t);
+
+	ret = of_property_read_u32(child, "bank-width", &gpmc_s.device_width);
+	if (ret < 0)
+		goto err;
+
+	gpmc_timings_to_config(&cfg, &gpmc_t);
+
+	cfg.base = res.start;
+
+	size = resource_size(&res);
+	if (size > SZ_64M)
+		cfg.size = GPMC_SIZE_128M;
+	else if (size > SZ_32M)
+		cfg.size = GPMC_SIZE_64M;
+	else if (size > SZ_16M)
+		cfg.size = GPMC_SIZE_32M;
+	else
+		cfg.size = GPMC_SIZE_16M;
+
+	gpmc_settings_to_config(&cfg, &gpmc_s);
+
+	gpmc_cs_config(cs, &cfg);
+
+	/* create platform device, NULL on error or when disabled */
+	if (of_get_property(child, "compatible", NULL) && !of_platform_device_create(child, dev))
+		goto err_child_fail;
+
+	return 0;
+
+err_child_fail:
+
+	dev_err(dev, "failed to create gpmc child %s\n", child->name);
+	ret = -ENODEV;
+
+err:
+
+	return ret;
+}
+
 static int gpmc_probe(struct device_d *dev)
 {
 	struct device_node *child, *node = dev->device_node;
@@ -488,6 +626,10 @@ static int gpmc_probe(struct device_d *dev)
 
 		if (!strncmp(child->name, "nand", 4))
 			ret = gpmc_probe_nand_child(dev, child);
+		else if (strncmp(child->name, "ethernet", 8) == 0 ||
+				strncmp(child->name, "nor", 3) == 0 ||
+				strncmp(child->name, "uart", 4) == 0)
+			ret = gpmc_probe_generic_child(dev, child);
 		else
 			dev_warn(dev, "unhandled child %s\n", child->name);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
