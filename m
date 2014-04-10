Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYHlz-0005jw-DK
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 16:24:31 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 10 Apr 2014 20:23:41 +0400
Message-Id: <1397147022-20116-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] spi: i.MX: Simplify cspi_0_0_init()
To: barebox@lists.infradead.org

Use SPI module software reset to simplify cspi_0_0_init().

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 45461bd..3c1ba61 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -67,6 +67,8 @@
 
 #define CSPI_0_0_TEST_LBC		(1 << 14)
 
+#define CSPI_0_0_RESET_START		(1 << 0)
+
 #define CSPI_0_7_RXDATA			0x00
 #define CSPI_0_7_TXDATA			0x04
 #define CSPI_0_7_CTRL			0x08
@@ -197,13 +199,9 @@ static void cspi_0_0_init(struct imx_spi *imx)
 {
 	void __iomem *base = imx->regs;
 
-	writel(CSPI_0_0_CTRL_ENABLE | CSPI_0_0_CTRL_MASTER,
-		     base + CSPI_0_0_CTRL);
-	writel(CSPI_0_0_PERIOD_32KHZ,
-		     base + CSPI_0_0_PERIOD);
-	while (readl(base + CSPI_0_0_INT) & CSPI_0_0_STAT_RR)
-		readl(base + CSPI_0_0_RXDATA);
-	writel(0, base + CSPI_0_0_INT);
+	writel(CSPI_0_0_RESET_START, base + CSPI_0_0_RESET);
+	do {
+	} while (readl(base + CSPI_0_0_RESET) & CSPI_0_0_RESET_START);
 }
 
 static unsigned int cspi_0_7_xchg_single(struct imx_spi *imx, unsigned int data)
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
