Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGnD9-00028b-94
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 08:43:17 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 26 Sep 2012 10:43:05 +0200
Message-Id: <1348648985-10156-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] spi: switch from printf back to debug
To: barebox@lists.infradead.org

Commit 5888a3b5c96cf8381431486416ef2667993c85fc accidentally changed
this to printf.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 drivers/spi/spi.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 17aae93..44040e5 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -164,7 +164,7 @@ static void scan_boardinfo(struct spi_master *master)
 		unsigned		n;
 
 		for (n = bi->n_board_info; n > 0; n--, chip++) {
-			printf("%s %d %d\n", __FUNCTION__, chip->bus_num, master->bus_num);
+			debug("%s %d %d\n", __FUNCTION__, chip->bus_num, master->bus_num);
 			if (chip->bus_num != master->bus_num)
 				continue;
 			/* NOTE: this relies on spi_new_device to
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
