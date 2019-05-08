Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005jv-Kk
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:02:58 +0200
Message-Id: <20190508090307.17729-2-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] mci: imx-esdhc-pbl: ls1046a: Set better divider values
To: Barebox List <barebox@lists.infradead.org>

MMC Frequency was set to something like 55MHz. This doesn't work for all
SD cards. Set to 25MHz which is supported by all SD cards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index f7f8c3348d..2bfe5c2f37 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -445,7 +445,7 @@ int ls1046a_esdhc_start_image(unsigned long r0, unsigned long r1, unsigned long
 	 */
 	val = esdhc_read32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 	val &= ~0x0000fff0;
-	val |= (2 << 8) | (6 << 4);
+	val |= (8 << 8) | (3 << 4);
 	esdhc_write32(&esdhc, SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET, val);
 
 	esdhc_write32(&esdhc, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
