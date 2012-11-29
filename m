Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9Nq-0008Vb-Sx
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:02:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:02:48 +0100
Message-Id: <1354215768-25511-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354215768-25511-1-git-send-email-s.hauer@pengutronix.de>
References: <1354215768-25511-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] mfd stmpe: fix test for features
To: barebox@lists.infradead.org

Use '&' to test for the bit as it was intended.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/stmpe-i2c.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index 7d16842..9e4bbcc 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -132,7 +132,7 @@ static int stmpe_probe(struct device_d *dev)
 	i2c_ci->read_reg = stmpe_reg_read;
 	i2c_ci->write_reg = stmpe_reg_write;
 
-	if (pdata->blocks &= STMPE_BLOCK_GPIO)
+	if (pdata->blocks & STMPE_BLOCK_GPIO)
 		add_generic_device("stmpe-gpio", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM, i2c_ci);
 
 	devfs_create(&stmpe_dev->cdev);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
