Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eDSGq-0005Vw-Bw
 for barebox@lists.infradead.org; Sat, 11 Nov 2017 09:40:14 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat, 11 Nov 2017 10:39:44 +0100
Message-Id: <20171111093944.10094-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] i.MX: esdhc: wait until SDSTB is asserted,
 not other way arround
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

this added 10msec on each sd/mmc clock switch request.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 141d715c90..55e8371dd8 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -454,7 +454,7 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
 			SYSCTL_CLOCK_MASK, clk);
 
 	wait_on_timeout(10 * MSECOND,
-			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB));
+			esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
 
 	clk = SYSCTL_PEREN | SYSCTL_CKEN;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
