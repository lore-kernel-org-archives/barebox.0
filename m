Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwPX-0000Op-84
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:21:36 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 19 Jul 2017 23:21:03 +0200
Message-Id: <20170719212104.2613-5-sam@ravnborg.org>
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 5/6] mci: atmel_mci: fix devinfo DEV with OF enabled
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

devinfo DEV resulted in a NULL pointer expection.
As platform_data is only valid in non-DT setup,
fix this so we no longer reference platform_data
outside the probe function

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/mci/atmel_mci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 317cf4602..0d3b245ce 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -474,7 +474,6 @@ static int atmci_request(struct mci_host *mci, struct mci_cmd *cmd, struct mci_d
 static void atmci_info(struct device_d *mci_dev)
 {
 	struct atmel_mci *host = mci_dev->priv;
-	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
 
 	printf("  Bus data width: %d bit\n", host->mci.bus_width);
 
@@ -490,7 +489,7 @@ static void atmci_info(struct device_d *mci_dev)
 		printf("- %u Hz upper limit", host->mci.f_max);
 
 	printf("\n  Card detection support: %s\n",
-		gpio_is_valid(pd->detect_pin) ? "yes" : "no");
+		gpio_is_valid(host->detect_pin) ? "yes" : "no");
 
 }
 /*
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
