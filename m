Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c2MkA-0008Hw-5s
 for barebox@lists.infradead.org; Thu, 03 Nov 2016 18:28:07 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu,  3 Nov 2016 19:24:40 +0100
Message-Id: <1478197480-27488-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] mtd: spi-nor: add MX25U2033E
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

This chip can be found in 4th generation Kindle devices

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 748b328..45be586 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -526,6 +526,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, 0) },
 	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
 	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, 0) },
+	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
 	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
 	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
 	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
