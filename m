Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyv3r-0004Hp-G1
 for barebox@lists.infradead.org; Thu, 22 Mar 2018 07:55:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Mar 2018 08:54:38 +0100
Message-Id: <20180322075438.10581-2-s.hauer@pengutronix.de>
In-Reply-To: <20180322075438.10581-1-s.hauer@pengutronix.de>
References: <20180322075438.10581-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: spi-nor: add manufacturer IDs for ISSI and Winbond
To: Barebox List <barebox@lists.infradead.org>
Cc: michael grassmann <m.grassmann@phytec.de>

From: michael grassmann <m.grassmann@phytec.de>

This patch includes new NOR flash IDs to support flashes from the
manufacturers ISSI and Winbond
- ISSI IS25LP128-JBLA3 and IS25LP128-JBLE
- Winbond W25Q128JVSIM

Signed-off-by: michael grassmann <m.grassmann@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 057638ec5a..d15a795413 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -519,6 +519,9 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
 	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
 
+	/* ISSI */
+	{ "is25lq128", INFO(0x9d6018,  0,  64 * 1024, 256, 0) },
+
 	/* Macronix */
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
 	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
@@ -650,6 +653,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
+	{ "w25q128", INFO(0xef7018, 0, 64 * 1024, 256, SECT_4K) },
 	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
