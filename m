Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gLOBh-0004KG-LY
 for barebox@lists.infradead.org; Sat, 10 Nov 2018 08:00:15 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Sat, 10 Nov 2018 08:59:52 +0100
Message-Id: <20181110075954.32746-4-linux@rempel-privat.de>
In-Reply-To: <20181110075954.32746-1-linux@rempel-privat.de>
References: <20181110075954.32746-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/5] video/ssd1307fb: fix potential memory leak on error
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/video/ssd1307fb.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/video/ssd1307fb.c b/drivers/video/ssd1307fb.c
index d68f0c505..1fd1a3cfb 100644
--- a/drivers/video/ssd1307fb.c
+++ b/drivers/video/ssd1307fb.c
@@ -548,8 +548,11 @@ static int ssd1307fb_probe(struct device_d *dev)
 	/* clear display */
 	array = ssd1307fb_alloc_array(par->width * par->height / 8,
 				      SSD1307FB_DATA);
-	if (!array)
-		return -ENOMEM;
+	if (!array) {
+		dev_err(&client->dev, "Couldn't not allocate an array\n");
+		ret = -ENOMEM;
+		goto panel_init_error;
+	}
 
 	for (i = 0; i < (par->height / 8); i++) {
 		for (j = 0; j < par->width; j++) {
@@ -569,6 +572,7 @@ static int ssd1307fb_probe(struct device_d *dev)
 
 panel_init_error:
 reset_oled_error:
+	free(vmem);
 fb_alloc_error:
 	regulator_disable(par->vbat);
 	free(info);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
