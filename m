Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ven10-0004qo-Es
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:26:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Nov 2013 15:26:07 +0100
Message-Id: <1383920767-10428-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] eeprom: at24: Enable OF partition parsing
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 4b2afc4..5e5b359 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -435,6 +435,8 @@ static int at24_probe(struct device_d *dev)
 
 	devfs_create(&at24->cdev);
 
+	of_parse_partitions(&at24->cdev, dev->device_node);
+
 	return 0;
 
 err_clients:
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
