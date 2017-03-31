Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpCG-0005Hp-1d
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:22 +0200
Message-Id: <20170331053323.17821-14-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] of: partition: Register the of partition fixup for of
 partition users
To: Barebox List <barebox@lists.infradead.org>

at24, at25 and mci core are using of_parse_partitions(). Register the
fixup for them aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/eeprom/at24.c  | 1 +
 drivers/eeprom/at25.c  | 2 ++
 drivers/mci/mci-core.c | 4 +++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 4ae3776554..1227286fbe 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -500,6 +500,7 @@ static int at24_probe(struct device_d *dev)
 		goto err_devfs_create;
 
 	of_parse_partitions(&at24->cdev, dev->device_node);
+	of_partitions_register_fixup(&at24->cdev);
 
 	return 0;
 
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index f7f8368c4b..1caaebd371 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -360,6 +360,8 @@ static int at25_probe(struct device_d *dev)
 
 	dev_dbg(dev, "%s probed\n", at25->cdev.name);
 	of_parse_partitions(&at25->cdev, dev->device_node);
+	of_partitions_register_fixup(&at25->cdev);
+
 	return 0;
 
 fail:
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 055a5e2b06..6ad0f48ec3 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1621,8 +1621,10 @@ static int mci_register_partition(struct mci_part *part)
 		rc = 0; /* it's not a failure */
 	}
 
-	if (np)
+	if (np) {
 		of_parse_partitions(&part->blk.cdev, np);
+		of_partitions_register_fixup(&part->blk.cdev);
+	}
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
