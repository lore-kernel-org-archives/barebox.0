Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9Ld-00084I-IG
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:00:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:00:30 +0100
Message-Id: <1354215630-24809-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i2c: Add missing DEVICE_ID_DYNAMIC
To: barebox@lists.infradead.org

Otherwise it's not possible to register multiple identical devices.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 94f23dd..07eace9 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -252,6 +252,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	strcpy(client->dev.name, chip->type);
 	client->dev.type_data = client;
 	client->dev.platform_data = chip->platform_data;
+	client->dev.id = DEVICE_ID_DYNAMIC;
 	client->dev.bus = &i2c_bus;
 	client->adapter = adapter;
 	client->addr = chip->addr;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
