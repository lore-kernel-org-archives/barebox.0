Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEoEj-0007WF-5A
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 04:56:26 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Fri, 12 Apr 2019 04:57:11 +0000
Message-Id: <20190412045711.13993-1-user@vserver64>
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
Subject: [PATCH v2] mtd: spi-nor: add Winbond W25Q40BW
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

This 4MBit SPI chip can be found in Kindle Voyage devices

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 85b55c698..1595349c4 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -646,6 +646,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q40bw", INFO(0xef5013, 0, 64 * 1024,  8, SECT_4K) },
 	{ "w25q16dw", INFO(0xef6015, 0, 64 * 1024, 32, SECT_4K) },
 	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
