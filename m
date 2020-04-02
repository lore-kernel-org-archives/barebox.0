Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am6eur05olkn2049.outbound.protection.outlook.com
 ([40.92.91.49] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJv3W-0005h6-Ll
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:18:31 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:18:27 +0000
Message-ID: <DB7PR02MB43328F330FD4D0DBEABB80C7ABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH 1/7] Zedboard Arasan MMC driver checks wrong bit
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

when accessing the SD card arasan_sdhci_send_cmd checks for the wrong bit 

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index b43a4f8dd..0dd9382ae 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -278,7 +278,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
 
 	mask = SDHCI_INT_CMD_COMPLETE;
 	if (data)
-		mask |= SDHCI_INT_XFER_COMPLETE;
+		mask |= SDHCI_INT_DATA_AVAIL;   
 
 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);
 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
