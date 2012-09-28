Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THb8w-0008Ip-BO
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 14:02:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Sep 2012 16:02:10 +0200
Message-Id: <1348840930-12656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mci imx-esdhc: increase write timeout
To: barebox@lists.infradead.org

The timeout for wating for the bus to be idle is too short when the
card does internal garbage collection. This was triggered with filling
an SD card under Linux with /dev/urandom, then doing a saveenv under
barebox afterwards.
Linux has timeouts here up to 300ms. Use a second to be safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 585cab9..62769fd 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -335,7 +335,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	esdhc_write32(&regs->irqstat, -1);
 
 	/* Wait for the bus to be idle */
-	ret = wait_on_timeout(100 * MSECOND,
+	ret = wait_on_timeout(SECOND,
 			!(esdhc_read32(&regs->prsstat) &
 				(PRSSTAT_CICHB | PRSSTAT_CIDHB)));
 	if (ret) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
