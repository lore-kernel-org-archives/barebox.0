Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePPLw-0003mm-Mz
 for barebox@lists.infradead.org; Thu, 14 Dec 2017 08:58:55 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Thu, 14 Dec 2017 09:55:54 +0100
Message-Id: <1513241754-1754-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] spi: imx: make xchg_single timeout value compatible for older
 boards
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>, Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>

A call of xchg_single will issue the transfer of 24 data bits with a given
maximum frequency. Since there exist some i.MX based boards with
spi-max-frequency = <100000>, change the xchg_single timeout to still
support those boards.

Fixes: 1439cdf7c6fc ("spi: imx: add timeout to xchg_single")
Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 drivers/spi/imx_spi.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 7819879..0827de7 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -32,8 +32,11 @@
 #include <linux/err.h>
 #include <clock.h>
 
-/* time to wait for STAT_RR getting set */
-#define IMX_SPI_RR_TIMEOUT	10000 /* ns */
+/*
+ * time to wait for STAT_RR getting set, should allow the transfer
+ * of 24 bits at spi-max-frequency of 100kHz
+ */
+#define IMX_SPI_RR_TIMEOUT	250000 /* ns */
 
 struct imx_spi {
 	struct spi_master	master;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
