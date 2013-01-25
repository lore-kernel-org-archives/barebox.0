Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyl3n-0007po-7f
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:19:30 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 39CA4DC1D0C
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:29:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:17:47 +0100
Message-Id: <1359127067-30079-14-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125151448.GD26329@game.jcrosoft.org>
 <1359127067-30079-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 14/14] atmel_mci: gpio: request and configure card detect
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 647683b..9de079d 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -481,7 +481,7 @@ static void atmci_info(struct device_d *mci_dev)
 		printf("- %u Hz upper limit", host->mci.f_max);
 
 	printf("\n  Card detection support: %s\n",
-		pd->detect_pin != 0 ? "yes" : "no");
+		gpio_is_valid(pd->detect_pin) ? "yes" : "no");
 
 }
 #endif /* CONFIG_MCI_INFO */
@@ -527,12 +527,28 @@ static int atmci_probe(struct device_d *hw_dev)
 {
 	struct atmel_mci *host;
 	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
+	int ret;
 
 	if (!pd) {
 		dev_err(hw_dev, "missing platform data\n");
 		return -EINVAL;
 	}
 
+	if (gpio_is_valid(pd->detect_pin)) {
+		ret = gpio_request(pd->detect_pin, "mci_cd");
+		if (ret) {
+			dev_err(hw_dev, "Impossible to request CD gpio %d (%d)\n",
+				ret, pd->detect_pin);
+			return ret;
+		}
+
+		ret = gpio_direction_input(pd->detect_pin);
+		if (ret) {
+			dev_err(hw_dev, "Impossible to configure CD gpio %d as input (%d)\n",
+				ret, pd->detect_pin);
+			goto err_gpio_cd_request;
+		}
+	}
 
 	host = xzalloc(sizeof(*host));
 	host->mci.send_cmd = atmci_request;
@@ -552,7 +568,8 @@ static int atmci_probe(struct device_d *hw_dev)
 	host->clk = clk_get(hw_dev, "mci_clk");
 	if (IS_ERR(host->clk)) {
 		dev_err(hw_dev, "no mci_clk\n");
-		return PTR_ERR(host->clk);
+		ret = PTR_ERR(host->clk);
+		goto err_gpio_cd_request;
 	}
 
 	clk_enable(host->clk);
@@ -579,6 +596,12 @@ static int atmci_probe(struct device_d *hw_dev)
 	mci_register(&host->mci);
 
 	return 0;
+
+err_gpio_cd_request:
+	if (gpio_is_valid(pd->detect_pin))
+		gpio_free(pd->detect_pin);
+
+	return ret;
 }
 
 static struct driver_d atmci_driver = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
