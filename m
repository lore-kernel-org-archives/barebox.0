Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvO-0003zj-8T
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:09 +0000
Received: by mail-pf0-x242.google.com with SMTP id d5so17400589pfe.1
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:29 -0700
Message-Id: <20170619144431.20843-5-andrew.smirnov@gmail.com>
In-Reply-To: <20170619144431.20843-1-andrew.smirnov@gmail.com>
References: <20170619144431.20843-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/6] mtd: dataflash: Get rid of loop counter in jedec_probe()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

"For" loop in jedec_probe can be simplified to not need counter
'i'. Convert the code and get rid of the variable.

This is a backport of kernel commit
a296a1bc3eb54382d2a61d47529e71c9d3bc615e

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index 96dd35e..fae36b6 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -714,7 +714,7 @@ static struct flash_info dataflash_data [] = {
 
 static struct flash_info * jedec_probe(struct spi_device *spi)
 {
-	int ret, i;
+	int ret;
 	u8 code = OP_READ_ID;
 	u8 id[3];
 	u32 jedec;
@@ -745,9 +745,9 @@ static struct flash_info * jedec_probe(struct spi_device *spi)
 	jedec = jedec << 8;
 	jedec |= id[2];
 
-	for (i = 0, info = dataflash_data;
-			i < ARRAY_SIZE(dataflash_data);
-			i++, info++) {
+	for (info = dataflash_data;
+	     info < dataflash_data + ARRAY_SIZE(dataflash_data);
+	     info++) {
 		if (info->jedec_id == jedec) {
 			dev_dbg(&spi->dev, "OTP, sector protect%s\n",
 				(info->flags & SUP_POW2PS) ?
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
