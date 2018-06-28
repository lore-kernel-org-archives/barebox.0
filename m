Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYOxQ-0005Yy-2q
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 04:55:05 +0000
Received: by mail-pg0-x242.google.com with SMTP id e11-v6so1919658pgq.0
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 21:54:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Jun 2018 21:54:27 -0700
Message-Id: <20180628045436.16710-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180628045436.16710-1-andrew.smirnov@gmail.com>
References: <20180628045436.16710-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 01/10] mtd: mtd_dataflash: Don't print bogus command values
 for READs
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Call to dev_dbg in dataflash_read() is located to early, before
command[] is initialize to correct values, so it end up printing
values from previous invocation. Move it such that it prints current
call's values.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 4b8eaec05..7980a91e1 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -246,9 +246,6 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 
 	command = priv->command;
 
-	dev_dbg(&priv->spi->dev, "READ: (%x) %x %x %x\n",
-		command[0], command[1], command[2], command[3]);
-
 	spi_message_init(&msg);
 
 	memset(&x[0], 0, sizeof(struct spi_transfer) * 2);
@@ -271,6 +268,9 @@ static int dataflash_read(struct mtd_info *mtd, loff_t from, size_t len,
 	command[3] = (u8)(addr >> 0);
 	/* plus 4 "don't care" bytes */
 
+	dev_dbg(&priv->spi->dev, "READ: (%x) %x %x %x\n",
+		command[0], command[1], command[2], command[3]);
+
 	status = spi_sync(priv->spi, &msg);
 
 	if (status >= 0) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
