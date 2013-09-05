Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.29.23])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHZZI-0001zF-S4
 for barebox@lists.infradead.org; Thu, 05 Sep 2013 13:25:54 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Thu,  5 Sep 2013 15:31:20 +0200
Message-Id: <1378387880-3844-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH / RFC] MCI: imx-esdhc: implement workaround for errata
 ENGcm12360
To: barebox@lists.infradead.org
Cc: Markus Niebel <Markus.Niebel@tqs.de>

From: Markus Niebel <Markus.Niebel@tqs.de>

Signed-off-by: Markus Niebel <Markus.Niebel@tqs.de>

At least i.MX53 has errata ENGcm12360:

Occurs when a pending command which issues busy is completed.
For a command with R1b response, the proper software sequence
is to poll the DLA for R1b commands to determine busy
state completion. The DLA polling is not working properly for
the ESDHC module. This is relevant for all eSDHC ports (eSDHC1-4 ports)

DLA bit in PRSSTAT register cannot be
polled to wait for busy state completion.

Updated block guide to reflect that DLA is not applicable to detect
busy state, instead, should poll bit 24 in PRSSTAT register (DLSL[0] bit)
to check that wait busy state is over.
---
 drivers/mci/imx-esdhc.c |   21 +++++++++++++++++++++
 drivers/mci/sdhci.h     |    1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 8cf3e64..902c654 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -266,6 +266,27 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
 	if (irqstat & IRQSTAT_CTOE)
 		return -ETIMEDOUT;
 
+	/* Workaround for ESDHC errata ENGcm03648 / ENGcm12360 */
+	if (!data && (cmd->resp_type & MMC_RSP_BUSY)) {
+		/* 
+		 * use high timeout value - we saw card failures here
+		 * using 250 msec in u-boot 2013.04 / i.MX6
+		 */
+		#define DAT0_POLL_TIME 2500
+
+		/* 
+		 * Poll on DATA0 line for cmd with busy signal for 
+		 * timout / 10 usec since DLA polling can be insecure
+		 */
+		ret = wait_on_timeout(DAT0_POLL_TIME * MSECOND,
+			(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_DAT0));
+
+		if (ret) {
+			dev_err(host->dev, "timeout PRSSTAT_DAT0\n");
+			return -ETIMEDOUT;
+		}
+	}
+
 	/* Copy the response to the response buffer */
 	if (cmd->resp_type & MMC_RSP_136) {
 		u32 cmdrsp3, cmdrsp2, cmdrsp1, cmdrsp0;
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index b2d6779..4302095 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -75,6 +75,7 @@
 #define IRQSTATEN_TC		0x00000002
 #define IRQSTATEN_CC		0x00000001
 
+#define PRSSTAT_DAT0		0x01000000
 #define PRSSTAT_CLSL		0x00800000
 #define PRSSTAT_WPSPL		0x00080000
 #define PRSSTAT_CDPL		0x00040000
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
