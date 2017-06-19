Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvO-0003zl-25
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:12 +0000
Received: by mail-pf0-x241.google.com with SMTP id y7so17398777pfd.3
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:31 -0700
Message-Id: <20170619144431.20843-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] mtd: dataflash: Add flash_info for AT45DB641E
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

This is a backport of kernel commit
67e4145ebf2c161d7404770461b8404f00a6d3bf

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mtd/devices/mtd_dataflash.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/devices/mtd_dataflash.c b/drivers/mtd/devices/mtd_dataflash.c
index c1c29b7..4b8eaec 100644
--- a/drivers/mtd/devices/mtd_dataflash.c
+++ b/drivers/mtd/devices/mtd_dataflash.c
@@ -714,6 +714,9 @@ static struct flash_info dataflash_data [] = {
 
 	{ "AT45DB642x",  0x1f2800, 8192, 1056, 11, SUP_POW2PS},
 	{ "at45db642d",  0x1f2800, 8192, 1024, 10, SUP_POW2PS | IS_POW2PS},
+
+	{ "AT45DB641E",  0x1f28000100, 32768, 264, 9, SUP_EXTID | SUP_POW2PS},
+	{ "at45db641e",  0x1f28000100, 32768, 256, 8, SUP_EXTID | SUP_POW2PS | IS_POW2PS},
 };
 
 static struct flash_info *jedec_lookup(struct spi_device *spi,
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
