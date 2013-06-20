Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpYlZ-0004gB-Kc
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 06:54:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 08:54:17 +0200
Message-Id: <1371711261-10039-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
References: <1371711261-10039-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/17] spi: mxs: Use clk support
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/mxs_spi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
index e15f2c2..8dfd6d5 100644
--- a/drivers/spi/mxs_spi.c
+++ b/drivers/spi/mxs_spi.c
@@ -21,6 +21,7 @@
 #include <errno.h>
 #include <io.h>
 #include <linux/clk.h>
+#include <linux/err.h>
 #include <asm/mmu.h>
 #include <mach/generic.h>
 #include <mach/imx-regs.h>
@@ -52,7 +53,7 @@ static inline struct mxs_spi *to_mxs(struct spi_master *master)
 static void imx_set_ssp_busclock(struct spi_master *master, uint32_t freq)
 {
 	struct mxs_spi *mxs = to_mxs(master);
-	const uint32_t sspclk = imx_get_sspclk(master->bus_num);
+	const uint32_t sspclk = clk_get_rate(mxs->clk);
 	uint32_t val;
 	uint32_t divide, rate, tgtclk;
 
@@ -266,6 +267,9 @@ static int mxs_spi_probe(struct device_d *dev)
 	mxs->mode = SPI_CPOL | SPI_CPHA;
 
 	mxs->regs = dev_request_mem_region(dev, 0);
+	mxs->clk = clk_get(dev, NULL);
+	if (IS_ERR(mxs->clk))
+		return PTR_ERR(mxs->clk);
 
 	spi_register_master(master);
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
