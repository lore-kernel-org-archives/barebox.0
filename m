Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-db5eur01olkn081a.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::81a]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYKR-0003xu-Q3
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:38:55 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:38:48 +0000
Message-ID: <DB7PR02MB4332E95D4CE0A0898DBD2A26ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: [PATCH v2 2/7] fixed-false-bit-in-arasan-driver
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

when accessing the SD card arasan_sdhci_send_cmd checks for the wrong bit

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 drivers/mci/arasan-sdhci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index b43a4f8dd..520bf30ff 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -278,7 +278,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,

 	mask = SDHCI_INT_CMD_COMPLETE;
 	if (data)
-		mask |= SDHCI_INT_XFER_COMPLETE;
+		mask |= SDHCI_INT_DATA_AVAIL;

 	sdhci_set_cmd_xfer_mode(&host->sdhci, cmd, data, false, &command, &xfer);

--
2.17.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
