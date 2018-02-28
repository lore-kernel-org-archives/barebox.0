Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqyC4-0004Rd-3K
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 09:38:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>) id 1eqyBq-0003KJ-OC
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 10:38:22 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.90_1)
 (envelope-from <mgr@pengutronix.de>) id 1eqyBq-00056P-GC
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 10:38:22 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 28 Feb 2018 10:38:20 +0100
Message-Id: <20180228093820.19423-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] mtd: spi-nor: add support for w25q16dw
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5cf650c0e2..057638ec5a 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -641,6 +641,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
 	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q16dw", INFO(0xef6015, 0, 64 * 1024, 32, SECT_4K) },
 	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
