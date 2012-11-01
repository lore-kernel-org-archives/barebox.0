Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TTqvc-0003Wp-1G
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 09:19:09 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D23DA104F9EA
 for <barebox@lists.infradead.org>; Thu,  1 Nov 2012 10:26:13 +0100 (CET)
From: 
Date: Thu,  1 Nov 2012 10:16:55 +0100
Message-Id: <1351761415-3199-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] mtd: dataflash: fix spi_transfer init
To: barebox@lists.infradead.org

From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

on some system as the spi_transfer is not set to 0 if the rx_buf or tx_buf
are not used they are not set to NULL

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/devices/mtd_dataflash.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index cbed15b..3b7b9c6 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -161,6 +161,8 @@ static int dataflash_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 	spi_message_init(&msg);
 
+	memset(&x, 0, sizeof(x));
+
 	x.tx_buf = command = priv->command;
 	x.len = 4;
 	spi_message_add_tail(&x, &msg);
@@ -246,6 +248,8 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 
 	spi_message_init(&msg);
 
+	memset(&x[0], 0, sizeof(struct spi_transfer) * 2);
+
 	x[0].tx_buf = command;
 	x[0].len = 8;
 	spi_message_add_tail(&x[0], &msg);
@@ -302,6 +306,8 @@ static int dataflash_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 	spi_message_init(&msg);
 
+	memset(&x[0], 0, sizeof(struct spi_transfer) * 2);
+
 	x[0].tx_buf = command = priv->command;
 	x[0].len = 4;
 	spi_message_add_tail(&x[0], &msg);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
