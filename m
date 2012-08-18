Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T2f4P-00054U-PH
 for barebox@lists.infradead.org; Sat, 18 Aug 2012 09:11:50 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 42FEC1054217
 for <barebox@lists.infradead.org>; Sat, 18 Aug 2012 11:10:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 18 Aug 2012 11:05:23 +0200
Message-Id: <1345280723-27113-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] spi: allow to dynamically allocate bus number
To: barebox@lists.infradead.org

For this keep track of the master list and the max bus_num.
If a master already use the same bus_num use an other number and emit a
warning.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/spi.c |   28 ++++++++++++++++++++++++++++
 include/spi/spi.h |    2 ++
 2 files changed, 30 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index a7fe10c..90908b0 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -41,6 +41,8 @@ struct boardinfo {
 };
 
 static LIST_HEAD(board_list);
+static LIST_HEAD(master_list);
+static int spi_master_max_bus_num = -1;
 
 /**
  * spi_new_device - instantiate one new SPI device
@@ -154,6 +156,18 @@ static void scan_boardinfo(struct spi_master *master)
 	}
 }
 
+static struct spi_master *master spi_get_master_by_num(int num)
+{
+	struct spi_master *master;
+
+	list_for_each_entry(master, &master_list, list) {
+		if (master->bus_num == num)
+			return master;
+	}
+
+	return NULL;
+}
+
 /**
  * spi_register_master - register SPI master controller
  * @master: initialized master, originally from spi_alloc_master()
@@ -177,6 +191,7 @@ static void scan_boardinfo(struct spi_master *master)
 int spi_register_master(struct spi_master *master)
 {
 	int			status = -ENODEV;
+	struct spi_master	*tmp = NULL;
 
 	debug("%s: %s:%d\n", __func__, master->dev->name, master->dev->id);
 
@@ -186,6 +201,19 @@ int spi_register_master(struct spi_master *master)
 	if (master->num_chipselect == 0)
 		return -EINVAL;
 
+	if (master->bus_num < 0 ||
+		(tmp = spi_get_master_by_num(master->bus_num))) {
+		spi_master_max_bus_num++;
+		if (tmp)
+			dev_warn(master->dev, "spi%d already exist\n", master->bus_num);
+		master->bus_num = spi_master_max_bus_num;
+	} else {
+		spi_master_max_bus_num = max(master->bus_num, spi_master_max_bus_num);
+	}
+	dev_info(master->dev, "register as spi%d\n", master->bus_num);
+
+	list_add_tail(&master->list, &master_list);
+
 	/* populate children from any spi device tables */
 	scan_boardinfo(master);
 	status = 0;
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 9d01d06..7281c17 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -163,6 +163,8 @@ struct spi_master {
 
 	/* called on release() to free memory provided by spi_master */
 	void			(*cleanup)(struct spi_device *spi);
+
+	struct list_head	list;
 };
 
 /*---------------------------------------------------------------------------*/
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
