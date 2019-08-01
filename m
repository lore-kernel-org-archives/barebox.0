Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht7Fd-0005Y1-BG
 for barebox@lists.infradead.org; Thu, 01 Aug 2019 09:19:58 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Thu,  1 Aug 2019 11:19:50 +0200
Message-Id: <20190801091950.14606-1-bst@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd: spi-nor: fix page offset/remains calculation in
 spi_nor_write
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

nor->write() simply adds the number of written bytes to the pointer
given. Thus retval is incremented in each loop cycle for each
spi_nor_write() call without ever resetting it. This leads to wrong page
offset/remains calculations and an incorrect number of bytes written to
retlen.

This becomes apparant only if the calling function actually compares len
and retlen (e.g. mtd_peb_write() ). Otherwise wrong data is written:

  $ memcpy -s /dev/prng -d prng_data 0 0 10k
  $ erase /dev/mtd0.mypart
  $ cp prng_data /dev/mtd0.mypart
  $ memcmp -s prng_data -d /dev/mtd0.mypart 0 0

memcmp returned "files differ" before, with this patch it returns "OK".

Fixes: c8516869c4 ("spi: Extend the core to ease integration of SPI memory controllers")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b2052ce0af..9dbc8302ed 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -972,6 +972,7 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 	for (i = 0; i < len; ) {
 		ssize_t written;
+		retval = 0;
 
 		page_offset = (to + i) & (nor->page_size - 1);
 		page_remain = min_t(size_t, nor->page_size - page_offset,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
