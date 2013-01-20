Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twrfq-0006Fs-Ua
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:58:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 10:58:43 +0100
Message-Id: <1358675923-13628-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
References: <1358675923-13628-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mci atmel: implement card_present callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/atmel_mci.c |   21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 4065355..222cd4a 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -331,18 +331,26 @@ static int atmel_start_cmd(struct atmel_mci_host *host, struct mci_cmd *cmd,
 	return 0;
 }
 
-/** init the host interface */
-static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+
+static int mci_card_present(struct mci_host *mci)
 {
-	int ret;
 	struct atmel_mci_host *host = to_mci_host(mci);
 	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
+	int ret;
+
+	/* No gpio, assume card is present */
+	if (!gpio_is_valid(pd->detect_pin))
+		return 1;
 
 	ret = gpio_get_value(pd->detect_pin);
-	dev_dbg(host->hw_dev, "card %sdetected\n", ret != 0 ? "not " : "");
 
-	if (pd->detect_pin && ret == 1)
-		return -ENODEV;
+	return ret == 0 ? 1 : 0;
+}
+
+/** init the host interface */
+static int mci_reset(struct mci_host *mci, struct device_d *mci_dev)
+{
+	struct atmel_mci_host *host = to_mci_host(mci);
 
 	clk_enable(host->clk);
 	atmel_mci_reset(host);
@@ -454,6 +462,7 @@ static int mci_probe(struct device_d *hw_dev)
 	host->mci.send_cmd = mci_request;
 	host->mci.set_ios = mci_set_ios;
 	host->mci.init = mci_reset;
+	host->mci.card_present = mci_card_present;
 	host->mci.hw_dev = hw_dev;
 
 	host->mci.host_caps = pd->host_caps;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
