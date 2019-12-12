Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifU5A-0007Do-Eu
 for barebox@lists.infradead.org; Thu, 12 Dec 2019 19:25:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Dec 2019 20:24:57 +0100
Message-Id: <20191212192457.10051-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] led: pca955x: remove ineffectual assignment
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

the .num member of struct led is a 'private' member populated by
led_register. Populating it has no effect because it's always
overwritten. Remove the assignment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-pca955x.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 9c4f7967fb28..27fefce8d524 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -316,7 +316,6 @@ led_pca955x_pdata_of_init(struct device_node *np, struct pca955x *pca955x)
 
 		pca955x_led->led_cdev.name = pca955x_led->name;
 		pca955x_led->led_cdev.set = pca955x_led_set;
-		pca955x_led->led_cdev.num = pca955x_led->led_num;
 		pca955x_led->led_cdev.max_value = 255;
 
 		err = led_register(&pca955x_led->led_cdev);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
