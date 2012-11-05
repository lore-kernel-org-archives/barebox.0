Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TVRTK-0006pw-H2
 for barebox@lists.infradead.org; Mon, 05 Nov 2012 18:32:31 +0000
Received: from mail239.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1587FFFB34D
 for <barebox@lists.infradead.org>; Mon,  5 Nov 2012 19:43:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Nov 2012 19:30:18 +0100
Message-Id: <1352140219-11309-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121105182148.GA25679@game.jcrosoft.org>
References: <20121105182148.GA25679@game.jcrosoft.org>
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
Subject: [PATCH 1/2] spi: introduce spi_get_master
To: barebox@lists.infradead.org

so we can request a master usefull for the spi command

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/spi/spi.c |   12 ++++++++++++
 include/spi/spi.h |    2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 44040e5..6a5bd6d 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -219,6 +219,18 @@ int spi_register_master(struct spi_master *master)
 }
 EXPORT_SYMBOL(spi_register_master);
 
+struct spi_master *spi_get_master(int bus)
+{
+	struct spi_master* m;
+
+	list_for_each_entry(m, &spi_master_list, list) {
+		if (m->bus_num == bus)
+			return m;
+	}
+
+	return NULL;
+}
+
 int spi_sync(struct spi_device *spi, struct spi_message *message)
 {
 	return spi->master->transfer(spi, message);
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 1773ca2..d6570a4 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -432,6 +432,8 @@ static inline ssize_t spi_w8r8(struct spi_device *spi, u8 cmd)
 
 extern struct bus_type spi_bus;
 
+struct spi_master *spi_get_master(int bus);
+
 static inline int spi_register_driver(struct driver_d *drv)
 {
 	drv->bus = &spi_bus;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
