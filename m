Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ66A-0005mu-SM
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 09:51:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Oct 2020 11:50:53 +0200
Message-Id: <20201007095058.22950-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201007095058.22950-1-a.fatoum@pengutronix.de>
References: <20201007095058.22950-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/7] led: pca955x: fix probing from device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dev->id_entry is not populated for devices probed from the device
tree. It was used unconditionally however. Use device_get_match_data
instead to support device tree probing.

While at it, remove the array and the enum, we can store pointers
to the correct chipdef structs directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-pca955x.c | 77 +++++++++++++++++++--------------------
 1 file changed, 37 insertions(+), 40 deletions(-)

diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 0b8291a6ed49..07bc26a50bec 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -72,53 +72,47 @@ enum led_brightness {
 	LED_FULL	= 255,
 };
 
-enum pca955x_type {
-	pca9550,
-	pca9551,
-	pca9552,
-	pca9553,
-};
-
 struct pca955x_chipdef {
 	int	bits;
 	u8	slv_addr;	/* 7-bit slave address mask */
 	int	slv_addr_shift;	/* Number of bits to ignore */
 };
 
-static struct pca955x_chipdef pca955x_chipdefs[] = {
-	[pca9550] = {
-		.bits		= 2,
-		.slv_addr	= /* 110000x */ 0x60,
-		.slv_addr_shift	= 1,
-	},
-	[pca9551] = {
-		.bits		= 8,
-		.slv_addr	= /* 1100xxx */ 0x60,
-		.slv_addr_shift	= 3,
-	},
-	[pca9552] = {
-		.bits		= 16,
-		.slv_addr	= /* 1100xxx */ 0x60,
-		.slv_addr_shift	= 3,
-	},
-	[pca9553] = {
-		.bits		= 4,
-		.slv_addr	= /* 110001x */ 0x62,
-		.slv_addr_shift	= 1,
-	},
+static const struct pca955x_chipdef pca9550_chipdef = {
+	.bits		= 2,
+	.slv_addr	= /* 110000x */ 0x60,
+	.slv_addr_shift	= 1,
+};
+
+static const struct pca955x_chipdef pca9551_chipdef = {
+	.bits		= 8,
+	.slv_addr	= /* 1100xxx */ 0x60,
+	.slv_addr_shift	= 3,
+};
+
+static const struct pca955x_chipdef pca9552_chipdef = {
+	.bits		= 16,
+	.slv_addr	= /* 1100xxx */ 0x60,
+	.slv_addr_shift	= 3,
+};
+
+static const struct pca955x_chipdef pca9553_chipdef = {
+	.bits		= 4,
+	.slv_addr	= /* 110001x */ 0x62,
+	.slv_addr_shift	= 1,
 };
 
 static const struct platform_device_id led_pca955x_id[] = {
-	{ "pca9550", pca9550 },
-	{ "pca9551", pca9551 },
-	{ "pca9552", pca9552 },
-	{ "pca9553", pca9553 },
+	{ "pca9550", (unsigned long) &pca9550_chipdef },
+	{ "pca9551", (unsigned long) &pca9551_chipdef },
+	{ "pca9552", (unsigned long) &pca9552_chipdef },
+	{ "pca9553", (unsigned long) &pca9553_chipdef },
 	{ }
 };
 
 struct pca955x {
 	struct pca955x_led *leds;
-	struct pca955x_chipdef	*chipdef;
+	const struct pca955x_chipdef	*chipdef;
 	struct i2c_client	*client;
 };
 
@@ -278,7 +272,7 @@ static struct pca955x_platform_data *
 led_pca955x_pdata_of_init(struct device_node *np, struct pca955x *pca955x)
 {
 	struct device_node *child;
-	struct pca955x_chipdef *chip = pca955x->chipdef;
+	const struct pca955x_chipdef *chip = pca955x->chipdef;
 	struct pca955x_platform_data *pdata;
 	int count, err;
 
@@ -334,10 +328,10 @@ led_pca955x_pdata_of_init(struct device_node *np, struct pca955x *pca955x)
 }
 
 static const struct of_device_id of_pca955x_match[] = {
-	{ .compatible = "nxp,pca9550", .data = (void *)pca9550 },
-	{ .compatible = "nxp,pca9551", .data = (void *)pca9551 },
-	{ .compatible = "nxp,pca9552", .data = (void *)pca9552 },
-	{ .compatible = "nxp,pca9553", .data = (void *)pca9553 },
+	{ .compatible = "nxp,pca9550", .data = &pca9550_chipdef },
+	{ .compatible = "nxp,pca9551", .data = &pca9551_chipdef },
+	{ .compatible = "nxp,pca9552", .data = &pca9552_chipdef },
+	{ .compatible = "nxp,pca9553", .data = &pca9553_chipdef },
 	{},
 };
 
@@ -345,12 +339,15 @@ static int led_pca955x_probe(struct device_d *dev)
 {
 	struct pca955x *pca955x;
 	struct pca955x_led *pca955x_led;
-	struct pca955x_chipdef *chip;
+	const struct pca955x_chipdef *chip;
 	struct i2c_client *client;
 	int err;
 	struct pca955x_platform_data *pdata;
 
-	chip = &pca955x_chipdefs[dev->id_entry->driver_data];
+	chip = device_get_match_data(dev);
+	if (!chip)
+		return -ENODEV;
+
 	client = to_i2c_client(dev);
 
 	/* Make sure the slave address / chip type combo given is possible */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
