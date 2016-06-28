Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bHlos-0007Yy-B9
 for barebox@lists.infradead.org; Tue, 28 Jun 2016 05:44:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Jun 2016 07:43:58 +0200
Message-Id: <1467092638-28438-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] eeprom: at24: Use xasprintf for small allocation
To: Barebox List <barebox@lists.infradead.org>

The code for error checking shouldn't be bigger than the allocated
string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 49eef6a..7c5619b 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -438,12 +438,7 @@ static int at24_probe(struct device_d *dev)
 			dev_err(&client->dev, "no index found to name device\n");
 			goto err_device_name;
 		}
-		devname = basprintf("eeprom%d", err);
-		if (!devname) {
-			err = -ENOMEM;
-			dev_err(&client->dev, "failed to allocate space for device name\n");
-			goto err_device_name;
-		}
+		devname = xasprintf("eeprom%d", err);
 	}
 
 	at24->cdev.name = devname;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
