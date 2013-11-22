Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008Fx-54
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:49 +0100
Message-Id: <1385131741-28280-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/17] i2c: omap: Add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-omap.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index c45af92..f7108c2 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -151,6 +151,7 @@ struct omap_i2c_struct {
 	u8			reg_shift;
 	struct omap_i2c_driver_data	*data;
 	struct resource		*ioarea;
+	u32			fclk_rate;
 	u32			speed;		/* Speed of bus in Khz */
 	u16			scheme;
 	u16			cmd_err;
@@ -271,6 +272,11 @@ static struct omap_i2c_driver_data am33xx_data = {
 	.fclk_rate =	48000,
 };
 
+static struct omap_i2c_driver_data omap4_of_data = {
+	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_NONE,
+	.fclk_rate =	0,
+};
+
 static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
 				      int reg, u16 val)
 {
@@ -415,7 +421,7 @@ static int omap_i2c_init(struct omap_i2c_struct *i2c_omap)
 		internal_clk = 4000;
 
 	/* Compute prescaler divisor */
-	psc = i2c_data->fclk_rate / internal_clk;
+	psc = i2c_omap->fclk_rate / internal_clk;
 	psc = psc - 1;
 
 	/* If configured for High Speed */
@@ -1074,6 +1080,12 @@ i2c_omap_probe(struct device_d *pdev)
 			i2c_omap->b_hw = 1; /* Enable hardware fixes */
 	}
 
+	i2c_omap->fclk_rate = i2c_data->fclk_rate;
+
+	if (!i2c_omap->fclk_rate)
+		of_property_read_u32(pdev->device_node, "clock-frequency",
+				&i2c_omap->fclk_rate);
+
 	/* reset ASAP, clearing any IRQs */
 	omap_i2c_init(i2c_omap);
 
@@ -1085,6 +1097,7 @@ i2c_omap_probe(struct device_d *pdev)
 	i2c_omap->adapter.master_xfer = omap_i2c_xfer,
 	i2c_omap->adapter.nr = pdev->id;
 	i2c_omap->adapter.dev.parent = pdev;
+	i2c_omap->adapter.dev.device_node = pdev->device_node;
 
 	/* i2c device drivers may be active on return from add_adapter() */
 	r = i2c_add_numbered_adapter(&i2c_omap->adapter);
@@ -1119,10 +1132,23 @@ static struct platform_device_id omap_i2c_ids[] = {
 	},
 };
 
+static __maybe_unused struct of_device_id omap_spi_dt_ids[] = {
+	{
+		.compatible = "ti,omap3-i2c",
+		.data = (unsigned long)&omap3_data,
+	}, {
+		.compatible = "ti,omap4-i2c",
+		.data = (unsigned long)&omap4_of_data,
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d omap_i2c_driver = {
 	.probe		= i2c_omap_probe,
 	.name		= DRIVER_NAME,
 	.id_table	= omap_i2c_ids,
+	.of_compatible = DRV_OF_COMPAT(omap_spi_dt_ids),
 };
 device_platform_driver(omap_i2c_driver);
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
