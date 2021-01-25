Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3y45-0000Ky-Gg
 for barebox@lists.infradead.org; Mon, 25 Jan 2021 09:21:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jan 2021 10:21:36 +0100
Message-Id: <20210125092136.32404-1-s.hauer@pengutronix.de>
In-Reply-To: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
References: <CAP1tNvT79QvYYTL9O+V+HR=XVTKHS=UxJtc1ZvNaMu1yQZns9w@mail.gmail.com>
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
Subject: [PATCH] mtd: nand: omap_gpmc: Fix wrong length check for real
To: Barebox List <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>

Check for length > 0 because otherwise len may become smaller than
0 in which case the loop never ends.

Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_omap_gpmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c b/drivers/mtd/nand/nand_omap_gpmc.c
index db1ca88791..0f3ffa1c0e 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -636,7 +636,7 @@ static void omap_write_buf_pref(struct nand_chip *nand_chip,
 	gpmc_prefetch_enable(info->gpmc_cs,
 			PREFETCH_FIFOTHRESHOLD_MAX, 0x0, len, 0x1);
 
-	while (len) {
+	while (len > 0) {
 		w_count = readl(info->gpmc_base + GPMC_PREFETCH_STATUS);
 		w_count = GPMC_PREFETCH_STATUS_FIFO_CNT(w_count);
 		w_count = w_count >> 2;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
