Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9Nq-0008Va-Qv
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:02:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:02:47 +0100
Message-Id: <1354215768-25511-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] mfd stmpe: add index to devicename
To: barebox@lists.infradead.org

Otherwise it's not possible to register multiple stmpe devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/stmpe-i2c.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index d7c29cc..7d16842 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -118,7 +118,8 @@ static int stmpe_probe(struct device_d *dev)
 	}
 
 	stmpe_dev = xzalloc(sizeof(struct stmpe));
-	stmpe_dev->cdev.name = DRIVERNAME;
+	stmpe_dev->cdev.name = asprintf(DRIVERNAME "%d",
+			cdev_find_free_index(DRIVERNAME));
 	stmpe_dev->client = to_i2c_client(dev);
 	stmpe_dev->cdev.size = 191;		/* 191 known registers */
 	stmpe_dev->cdev.dev = dev;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
