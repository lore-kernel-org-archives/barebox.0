Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x233.google.com ([2a00:1450:4013:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vdhq4-0004Em-Dy
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 14:42:41 +0000
Received: by mail-ea0-f179.google.com with SMTP id q15so576317ead.10
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 06:42:18 -0800 (PST)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  5 Nov 2013 15:42:06 +0100
Message-Id: <1383662527-8538-3-git-send-email-lisovy@gmail.com>
In-Reply-To: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
References: <1383662527-8538-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 2/3] ARM: i.mx53: Parse Reset GPIO pin in FEC driver from
 Devicetree
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 2f31352..6f883bf 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -27,6 +27,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <of_net.h>
+#include <of_gpio.h>
+#include <gpio.h>
 
 #include <asm/mmu.h>
 
@@ -643,6 +645,9 @@ static int fec_probe(struct device_d *dev)
 	void *base;
 	int ret;
 	enum fec_type type;
+#ifdef CONFIG_OFDEVICE
+	int phy_reset;
+#endif
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&type);
 	if (ret)
@@ -671,6 +676,22 @@ static int fec_probe(struct device_d *dev)
 
 	fec->regs = dev_request_mem_region(dev, 0);
 
+#ifdef CONFIG_OFDEVICE
+	phy_reset = of_get_named_gpio(dev->device_node, "phy-reset-gpios", 0);
+	if (!gpio_is_valid(phy_reset))
+		goto err_free;
+
+	ret = gpio_request(phy_reset, "phy-reset");
+	if (ret) {
+		pr_err("Can not request gpio %d (phy-reset): %d\n", phy_reset, ret);
+		goto err_free;
+	}
+
+	gpio_direction_output(phy_reset, 0);
+	udelay(10);
+	gpio_set_value(phy_reset, 1);
+#endif
+
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
 	while(readl(fec->regs + FEC_ECNTRL) & 1) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
