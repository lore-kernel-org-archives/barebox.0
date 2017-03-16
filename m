Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coWxn-0005dZ-ON
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 15:05:21 +0000
Received: by mail-pg0-x242.google.com with SMTP id m5so6398749pgk.3
 for <barebox@lists.infradead.org>; Thu, 16 Mar 2017 08:04:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 16 Mar 2017 08:04:42 -0700
Message-Id: <20170316150448.11773-6-andrew.smirnov@gmail.com>
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/11] mci: atmel_mci: Add DT support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/atmel_mci.c | 101 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 70 insertions(+), 31 deletions(-)

diff --git a/drivers/mci/atmel_mci.c b/drivers/mci/atmel_mci.c
index 2a0ddb0..317cf46 100644
--- a/drivers/mci/atmel_mci.c
+++ b/drivers/mci/atmel_mci.c
@@ -24,6 +24,7 @@
 #include <mach/board.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <of_gpio.h>
 
 #include "atmel-mci-regs.h"
 
@@ -53,6 +54,7 @@ struct atmel_mci {
 	u32			cfg_reg;
 	u32			sdc_reg;
 	bool			need_reset;
+	int			detect_pin;
 };
 
 #define to_mci_host(mci)	container_of(mci, struct atmel_mci, mci)
@@ -360,14 +362,13 @@ static int atmci_start_cmd(struct atmel_mci *host, struct mci_cmd *cmd,
 static int atmci_card_present(struct mci_host *mci)
 {
 	struct atmel_mci *host = to_mci_host(mci);
-	struct atmel_mci_platform_data *pd = host->hw_dev->platform_data;
 	int ret;
 
 	/* No gpio, assume card is present */
-	if (!gpio_is_valid(pd->detect_pin))
+	if (!gpio_is_valid(host->detect_pin))
 		return 1;
 
-	ret = gpio_get_value(pd->detect_pin);
+	ret = gpio_get_value(host->detect_pin);
 
 	return ret == 0 ? 1 : 0;
 }
@@ -535,44 +536,71 @@ static int atmci_probe(struct device_d *hw_dev)
 {
 	struct resource *iores;
 	struct atmel_mci *host;
+	struct device_node *np = hw_dev->device_node;
 	struct atmel_mci_platform_data *pd = hw_dev->platform_data;
 	int ret;
 
-	if (!pd) {
-		dev_err(hw_dev, "missing platform data\n");
-		return -EINVAL;
+	host = xzalloc(sizeof(*host));
+	host->mci.send_cmd = atmci_request;
+	host->mci.set_ios = atmci_set_ios;
+	host->mci.init = atmci_reset;
+	host->mci.card_present = atmci_card_present;
+	host->mci.hw_dev = hw_dev;
+	host->detect_pin = -EINVAL;
+
+	if (pd) {
+		host->detect_pin  = pd->detect_pin;
+		host->mci.devname = pd->devname;
+
+		if (pd->bus_width >= 4)
+			host->mci.host_caps |= MMC_CAP_4_BIT_DATA;
+		if (pd->bus_width == 8)
+			host->mci.host_caps |= MMC_CAP_8_BIT_DATA;
+
+		host->slot_b = pd->slot_b;
+	} else if (np) {
+		u32 slot_id;
+		struct device_node *cnp;
+		const char *alias = of_alias_get(np);
+
+		if (alias)
+			host->mci.devname = xstrdup(alias);
+
+		host->detect_pin = of_get_named_gpio(np, "cd-gpios", 0);
+
+		for_each_child_of_node(np, cnp) {
+			if (of_property_read_u32(cnp, "reg", &slot_id)) {
+				dev_warn(hw_dev, "reg property is missing for %s\n",
+					 cnp->full_name);
+				continue;
+			}
+
+			host->slot_b = slot_id;
+			mci_of_parse_node(&host->mci, cnp);
+			break;
+		}
+	} else {
+		dev_err(hw_dev, "Missing device information\n");
+		ret = -EINVAL;
+		goto error_out;
 	}
 
-	if (gpio_is_valid(pd->detect_pin)) {
-		ret = gpio_request(pd->detect_pin, "mci_cd");
+	if (gpio_is_valid(host->detect_pin)) {
+		ret = gpio_request(host->detect_pin, "mci_cd");
 		if (ret) {
 			dev_err(hw_dev, "Impossible to request CD gpio %d (%d)\n",
-				ret, pd->detect_pin);
-			return ret;
+				ret, host->detect_pin);
+			goto error_out;
 		}
 
-		ret = gpio_direction_input(pd->detect_pin);
+		ret = gpio_direction_input(host->detect_pin);
 		if (ret) {
 			dev_err(hw_dev, "Impossible to configure CD gpio %d as input (%d)\n",
-				ret, pd->detect_pin);
-			goto err_gpio_cd_request;
+				ret, host->detect_pin);
+			goto error_out;
 		}
 	}
 
-	host = xzalloc(sizeof(*host));
-	host->mci.send_cmd = atmci_request;
-	host->mci.set_ios = atmci_set_ios;
-	host->mci.init = atmci_reset;
-	host->mci.card_present = atmci_card_present;
-	host->mci.hw_dev = hw_dev;
-	host->mci.devname = pd->devname;
-
-	if (pd->bus_width >= 4)
-		host->mci.host_caps |= MMC_CAP_4_BIT_DATA;
-	if (pd->bus_width == 8)
-		host->mci.host_caps |= MMC_CAP_8_BIT_DATA;
-	host->slot_b = pd->slot_b;
-
 	iores = dev_request_mem_resource(hw_dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
@@ -583,7 +611,7 @@ static int atmci_probe(struct device_d *hw_dev)
 	if (IS_ERR(host->clk)) {
 		dev_err(hw_dev, "no mci_clk\n");
 		ret = PTR_ERR(host->clk);
-		goto err_gpio_cd_request;
+		goto error_out;
 	}
 
 	clk_enable(host->clk);
@@ -614,15 +642,26 @@ static int atmci_probe(struct device_d *hw_dev)
 
 	return 0;
 
-err_gpio_cd_request:
-	if (gpio_is_valid(pd->detect_pin))
-		gpio_free(pd->detect_pin);
+error_out:
+	free(host);
+
+	if (gpio_is_valid(host->detect_pin))
+		gpio_free(host->detect_pin);
 
 	return ret;
 }
 
+static __maybe_unused struct of_device_id atmci_compatible[] = {
+	{
+		.compatible = "atmel,hsmci",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d atmci_driver = {
 	.name	= "atmel_mci",
 	.probe	= atmci_probe,
+	.of_compatible = DRV_OF_COMPAT(atmci_compatible),
 };
 device_platform_driver(atmci_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
