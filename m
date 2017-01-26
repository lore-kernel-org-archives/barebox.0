Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wj0-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWjJE-0006FS-JZ
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 12:37:50 +0000
Received: by mail-wj0-f195.google.com with SMTP id i7so4544527wjf.2
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2017 04:37:26 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 26 Jan 2017 15:35:28 +0300
Message-Id: <20170126123528.21096-1-pmamonov@gmail.com>
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
Subject: [PATCH] mtd: spi-nor: add support for s25fl208k
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 45be586..2718213 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -577,6 +577,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32, SECT_4K) },
 	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, 0) },
 	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K) },
+	{ "s25fl208k",  INFO(0x014014,      0,  64 * 1024,  16, SECT_4K) },
 
 	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
 	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
