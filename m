Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ganesha.gnumonks.org ([213.95.27.120])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW6Tg-0003hS-Ea
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 18:05:31 +0000
From: Harald Welte <laforge@gnumonks.org>
Date: Wed, 17 Feb 2016 19:02:09 +0100
Message-Id: <1455732129-21117-1-git-send-email-laforge@gnumonks.org>
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
Subject: [PATCH] eeprom/at25: parse partitions from device tree
To: barebox@lists.infradead.org

Unlike at24 (I2C), the at25 (spi) EEPROM driver doesn't check if the
device tree node contains partition definitions.  This means that one
for example cannot have bootstate partitions on an at25 EEPROM, while it
works on an at24 EEPROM.

This patch adds device tree based partition support to the at25 driver.

Signed-off-by: Harald Welte <laforge@gnumonks.org>
---
 drivers/eeprom/at25.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 3e75b56..9f054d0 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -356,6 +356,7 @@ static int at25_probe(struct device_d *dev)
 
 	dev_dbg(dev, "%s probed\n", at25->cdev.name);
 	devfs_create(&at25->cdev);
+	of_parse_partitions(&at25->cdev, dev->device_node);
 	return 0;
 
 fail:
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
