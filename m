Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgxX-0004vn-Rp
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:54:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:54:30 +0200
Message-Id: <1334325273-1701-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] mmc i.MX esdhc: Add i.MX6 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |   15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 6d0883c..ae3c805 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -24,7 +24,6 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
  * MA 02111-1307 USA
  */
-
 #include <config.h>
 #include <common.h>
 #include <driver.h>
@@ -60,7 +59,8 @@ struct fsl_esdhc {
 	u32	autoc12err;
 	u32	hostcapblt;
 	u32	wml;
-	char	reserved1[8];
+	u32	mixctrl;
+	char	reserved1[4];
 	u32	fevt;
 	char	reserved2[168];
 	u32	hostver;
@@ -234,7 +234,7 @@ static int esdhc_setup_data(struct mci_host *mci, struct mci_data *data)
 static int
 esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 {
-	u32	xfertyp;
+	u32	xfertyp, mixctrl;
 	u32	irqstat;
 	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
 	struct fsl_esdhc *regs = host->regs;
@@ -266,6 +266,15 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 
 	/* Send the command */
 	esdhc_write32(&regs->cmdarg, cmd->cmdarg);
+
+	if (cpu_is_mx6()) {
+		/* write lower-half of xfertyp to mixctrl */
+		mixctrl = xfertyp & 0xFFFF;
+		/* Keep the bits 22-25 of the register as is */
+		mixctrl |= (esdhc_read32(&regs->mixctrl) & (0xF << 22));
+		esdhc_write32(&regs->mixctrl, mixctrl);
+	}
+
 	esdhc_write32(&regs->xfertyp, xfertyp);
 
 	/* Wait for the command to complete */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
