Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8jaa-0002cP-NV
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 11:50:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Mar 2020 12:49:54 +0100
Message-Id: <20200302114955.13897-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200302114955.13897-1-a.fatoum@pengutronix.de>
References: <20200302114955.13897-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] video/ssd1307fb: drop unneeded regulator NULL checks
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

regulator_{enable,disable} are already no-ops when the parameter is
NULL. Drop the NULL checks thusly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/ssd1307fb.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index 83a561a3e1fc..cc50698670e0 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -513,11 +513,9 @@ static int ssd1307fb_probe(struct device_d *dev)
 		goto reset_oled_error;
 	}
 
-	if (par->vbat) {
-		ret = regulator_disable(par->vbat);
-		if (ret < 0)
-			goto reset_oled_error;
-	}
+	ret = regulator_disable(par->vbat);
+	if (ret < 0)
+		goto reset_oled_error;
 
 	i2c_set_clientdata(client, info);
 
@@ -525,11 +523,9 @@ static int ssd1307fb_probe(struct device_d *dev)
 	gpio_set_value(par->reset, 0);
 	udelay(4);
 
-	if (par->vbat) {
-		ret = regulator_enable(par->vbat);
-		if (ret < 0)
-			goto reset_oled_error;
-	}
+	ret = regulator_enable(par->vbat);
+	if (ret < 0)
+		goto reset_oled_error;
 
 	mdelay(100);
 
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
