Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XtfTx-0002ch-Vp
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:44 +0100
Message-Id: <1417019394-23683-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] mci: imx-esdhc: Fix Interrupt enable register for
 i.MX6sx
To: barebox@lists.infradead.org

The reset default of this register has changed on i.MX6sx. Explicitly
write the value we want to have to make it work on i.MX6sx.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 487cd41..5ac58c3 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -474,8 +474,9 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
 	/* Set the initial clock speed */
 	set_sysctl(mci, 400000);
 
-	/* Disable the BRR and BWR bits in IRQSTAT */
-	esdhc_clrbits32(regs + SDHCI_INT_ENABLE, IRQSTATEN_BRR | IRQSTATEN_BWR);
+	writel(IRQSTATEN_CC | IRQSTATEN_TC | IRQSTATEN_CINT | IRQSTATEN_CTOE |
+			IRQSTATEN_CCE | IRQSTATEN_CEBE | IRQSTATEN_CIE | IRQSTATEN_DTOE |
+			IRQSTATEN_DCE | IRQSTATEN_DEBE | IRQSTATEN_DINT, regs + SDHCI_INT_ENABLE);
 
 	/* Put the PROCTL reg back to the default */
 	esdhc_write32(regs + SDHCI_HOST_CONTROL__POWER_CONTROL__BLOCK_GAP_CONTROL,
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
