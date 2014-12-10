Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xyb7I-0002cC-H3
 for barebox@lists.infradead.org; Wed, 10 Dec 2014 06:51:21 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 730F8A004A6
 for <barebox@lists.infradead.org>; Wed, 10 Dec 2014 07:51:16 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 10 Dec 2014 07:49:28 +0100
Message-Id: <1418194168-11826-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] i2c: omap: fix fclk_rate for ti,omap4-i2c
To: barebox@lists.infradead.org

"ti,am33xx" and "ti,omap4" use "ti,omap4-i2c" with different fclk_rate.
By now set it according to the used cpu compatible.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/i2c/busses/i2c-omap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 094f591..d2254d4 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1015,6 +1015,13 @@ i2c_omap_probe(struct device_d *pdev)
 	i2c_omap->reg_shift = (i2c_data->flags >>
 					OMAP_I2C_FLAG_BUS_SHIFT__SHIFT) & 3;
 
+	if (!i2c_data->fclk_rate) {
+		if (of_machine_is_compatible("ti,am33xx"))
+			i2c_data->fclk_rate = am33xx_data.fclk_rate;
+		if (of_machine_is_compatible("ti,omap4"))
+			i2c_data->fclk_rate = omap4_data.fclk_rate;
+	}
+
 	if (pdev->platform_data != NULL) {
 		speed = *(u32 *)pdev->platform_data;
 	} else {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
