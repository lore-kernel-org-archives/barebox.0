Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xz0Nc-0005hq-7D
 for barebox@lists.infradead.org; Thu, 11 Dec 2014 09:49:53 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 773D6A003A6
 for <barebox@lists.infradead.org>; Thu, 11 Dec 2014 10:49:49 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Thu, 11 Dec 2014 10:47:59 +0100
Message-Id: <1418291279-3610-1-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20141211075948.GD30369@pengutronix.de>
References: <20141211075948.GD30369@pengutronix.de>
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
Subject: [PATCH v2] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: barebox@lists.infradead.org

The compatible "ti,omap4-i2c" don't help to get fclk_rate. So set it acording to
cpu compatible: "ti,am33xx" and "ti,omap4"

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: set i2c_data directly

 drivers/i2c/busses/i2c-omap.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 094f591..96c3c2b 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -271,11 +271,6 @@ static struct omap_i2c_driver_data am33xx_data = {
 	.fclk_rate =	48000,
 };
 
-static struct omap_i2c_driver_data omap4_of_data = {
-	.flags =	OMAP_I2C_FLAG_BUS_SHIFT_NONE,
-	.fclk_rate =	0,
-};
-
 static inline void omap_i2c_write_reg(struct omap_i2c_struct *i2c_omap,
 				      int reg, u16 val)
 {
@@ -1011,6 +1006,11 @@ i2c_omap_probe(struct device_d *pdev)
 	if (r)
 		return r;
 
+	if (of_machine_is_compatible("ti,am33xx"))
+		i2c_data = &am33xx_data;
+	if (of_machine_is_compatible("ti,omap4"))
+		i2c_data = &omap4_data;
+
 	i2c_omap->data = i2c_data;
 	i2c_omap->reg_shift = (i2c_data->flags >>
 					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
@@ -1140,7 +1140,6 @@ static __maybe_unused struct of_device_id omap_i2c_dt_ids[] = {
 		.data = (unsigned long)&omap3_data,
 	}, {
 		.compatible = "ti,omap4-i2c",
-		.data = (unsigned long)&omap4_of_data,
 	}, {
 		/* sentinel */
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
