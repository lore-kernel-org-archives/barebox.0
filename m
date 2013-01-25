Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TylNd-0003PJ-VJ
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 15:39:51 +0000
Received: from mail436.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5E84ADC09E2
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 16:49:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 25 Jan 2013 16:38:28 +0100
Message-Id: <1359128308-31235-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359128308-31235-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130125152819.GE26329@game.jcrosoft.org>
 <1359128308-31235-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] atmel_mci: add write protect detection support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mci/atmel_mci.c |   42 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 4ef45b5..261ac49 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -371,6 +371,23 @@ static int atmci_card_present(struct mci_host *mci)
 	return ret == 0 ? 1 : 0;
 }
 
+static int atmci_card_write_protected(struct mci_host *mci)
+{
+	struct atmel_mci_host *host = to_mci_host(mci);
+	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
+	int ret;
+
+	/* No gpio, assume card is not protected */
+	if (!gpio_is_valid(pd->wp_pin))
+		return 0;
+
+	ret = gpio_get_value(pd->detect_pin);
+	if (ret < 0)
+		return 0;
+
+	return ret;
+}
+
 /** init the host interface */
 static int atmci_reset(struct mci_host *mci, struct device_d *mci_dev)
 {
@@ -491,6 +508,9 @@ static void atmci_info(struct device_d *mci_dev)
 	printf("\n  Card detection support: %s\n",
 		gpio_is_valid(pd->detect_pin) ? "yes" : "no");
 
+	printf("  Card write protected support: %s\n",
+		gpio_is_valid(pd->wp_pin) ? "yes" : "no");
+
 }
 #endif /* CONFIG_MCI_INFO */
 /*
@@ -558,11 +578,28 @@ static int atmci_probe(struct device_d *hw_dev)
 		}
 	}
 
+	if (gpio_is_valid(pd->wp_pin)) {
+		ret = gpio_request(pd->wp_pin, "mci_wp");
+		if (ret) {
+			dev_err(hw_dev, "Impossible to request WP gpio %d (%d)\n",
+				ret, pd->wp_pin);
+			goto err_gpio_cd_request;
+		}
+
+		ret = gpio_direction_input(pd->wp_pin);
+		if (ret) {
+			dev_err(hw_dev, "Impossible to configure WP gpio %d as input (%d)\n",
+				ret, pd->wp_pin);
+			goto err_gpio_wp_request;
+		}
+	}
+
 	host = xzalloc(sizeof(*host));
 	host->mci.send_cmd = atmci_request;
 	host->mci.set_ios = atmci_set_ios;
 	host->mci.init = atmci_reset;
 	host->mci.card_present = atmci_card_present;
+	host->mci.card_write_protected = atmci_card_write_protected;
 	host->mci.hw_dev = hw_dev;
 
 	if (pd->bus_width >= 4)
@@ -578,7 +615,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	if (IS_ERR(host->clk)) {
 		dev_err(hw_dev, "no mci_clk\n");
 		ret = PTR_ERR(host->clk);
-		goto err_gpio_cd_request;
+		goto err_gpio_wp_request;
 	}
 
 	clk_enable(host->clk);
@@ -606,6 +643,9 @@ static int atmci_probe(struct device_d *hw_dev)
 
 	return 0;
 
+err_gpio_wp_request:
+	if (gpio_is_valid(pd->wp_pin))
+		gpio_free(pd->wp_pin);
 err_gpio_cd_request:
 	if (gpio_is_valid(pd->detect_pin))
 		gpio_free(pd->detect_pin);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
