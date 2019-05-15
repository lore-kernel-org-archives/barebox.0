Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqsH-0006Bw-Ti
 for barebox@lists.infradead.org; Wed, 15 May 2019 10:11:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hQqsG-0007PZ-8p
 for barebox@lists.infradead.org; Wed, 15 May 2019 12:11:00 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
 (envelope-from <afa@pengutronix.de>) id 1hQqsG-0003zj-1K
 for barebox@lists.infradead.org; Wed, 15 May 2019 12:11:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 12:10:57 +0200
Message-Id: <20190515101058.13106-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] mtd: spi-nor: fix ISSI nor flash name
To: barebox@lists.infradead.org

The is25lq128 has a device ID of 0x9d1648 [1],
while the listed 0x9d6018 identifies the is25lp128 [2].

The commit that added this line only mentions the is25lp128,
so fix the typo.

[1]: http://www.issi.com/WW/pdf/IS25LQ128.pdf , Table 12
[2]: http://www.issi.com/WW/pdf/IS25LP128.pdf , Table 8.4

Fixes: 10e5a7a9e9 ("mtd: spi-nor: add manufacturer IDs for ISSI and Winbond")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 43bd402f9ff2..b142197b65b6 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -671,7 +671,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
 
 	/* ISSI */
-	{ "is25lq128", INFO(0x9d6018,  0,  64 * 1024, 256, 0) },
+	{ "is25lp128", INFO(0x9d6018,  0,  64 * 1024, 256, 0) },
 
 	/* Macronix */
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
