Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAMLP-00065b-O8
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 16:58:16 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so4348109wiv.7
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 09:57:52 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Thu, 24 Jul 2014 18:54:58 +0200
Message-Id: <1406220898-10310-3-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
References: <1406220898-10310-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 2/2] pinctrl: rockchip: add support for new DT bindings
To: barebox@lists.infradead.org

This patch modifies the Rockchip pinctrl driver to comply with the new
DT bindings, which use two syscon nodes to specify the address of
memory resources.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/pinctrl/Kconfig            |    1 +
 drivers/pinctrl/pinctrl-rockchip.c |   53 ++++++++++++------------------------
 2 files changed, 18 insertions(+), 36 deletions(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index dffaa4e..83ba2b6 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -27,6 +27,7 @@ config PINCTRL_IMX_IOMUX_V3
 config PINCTRL_ROCKCHIP
 	select PINCTRL
 	select GPIO_GENERIC
+	select MFD_SYSCON
 	bool
 	help
 	  The pinmux controller found on Rockchip SoCs.
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a71fed3..56377ea 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -23,6 +23,7 @@
 #include <gpio.h>
 #include <init.h>
 #include <malloc.h>
+#include <mfd/syscon.h>
 #include <of.h>
 #include <of_address.h>
 #include <pinctrl.h>
@@ -44,7 +45,6 @@ enum rockchip_pin_bank_type {
 
 struct rockchip_pin_bank {
 	void __iomem			*reg_base;
-	void __iomem			*reg_pull;
 	struct clk			*clk;
 	u32				pin_base;
 	u8				nr_pins;
@@ -77,7 +77,7 @@ struct rockchip_pin_ctrl {
 
 struct rockchip_pinctrl {
 	void __iomem			*reg_base;
-	void __iomem			*reg_pull;
+	void __iomem			*reg_pmu;
 	struct pinctrl_device		pctl_dev;
 	struct rockchip_pin_ctrl	*ctrl;
 };
@@ -192,9 +192,11 @@ static void rk2928_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	*bit = pin_num % RK2928_PULL_PINS_PER_REG;
 };
 
+#define RK3188_PULL_OFFSET		0x164
 #define RK3188_PULL_BITS_PER_PIN	2
 #define RK3188_PULL_PINS_PER_REG	8
 #define RK3188_PULL_BANK_STRIDE		16
+#define RK3188_PULL_PMU_OFFSET		0x64
 
 static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 					 int pin_num, void __iomem **reg,
@@ -204,12 +206,12 @@ static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	/* The first 12 pins of the first bank are located elsewhere */
 	if (bank->bank_type == RK3188_BANK0 && pin_num < 12) {
-		*reg = bank->reg_pull +
+		*reg = info->reg_pmu + RK3188_PULL_PMU_OFFSET +
 				((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
 		*bit = pin_num % RK3188_PULL_PINS_PER_REG;
 		*bit *= RK3188_PULL_BITS_PER_PIN;
 	} else {
-		*reg = info->reg_pull - 4;
+		*reg = info->reg_base + RK3188_PULL_OFFSET - 4;
 		*reg += bank->bank_num * RK3188_PULL_BANK_STRIDE;
 		*reg += ((pin_num / RK3188_PULL_PINS_PER_REG) * 4);
 
@@ -347,31 +349,11 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank,
 
 	bank->reg_base = (void __iomem *)res->start;
 
-	/*
-	 * special case, where parts of the pull setting-registers are
-	 * part of the PMU register space
-	 */
 	if (of_device_is_compatible(bank->of_node,
-				    "rockchip,rk3188-gpio-bank0")) {
+				    "rockchip,rk3188-gpio-bank0"))
 		bank->bank_type = RK3188_BANK0;
-
-		if (of_address_to_resource(bank->of_node, 1, &node_res)) {
-			dev_err(dev, "cannot find IO resource for bank\n");
-			return -ENOENT;
-		}
-
-		res = request_iomem_region(dev_name(dev), node_res.start,
-					   node_res.end);
-		if (!res) {
-			dev_err(dev, "cannot request iomem region %08x\n",
-				node_res.start);
-			return -ENOENT;
-		}
-
-		bank->reg_pull = (void __iomem *)res->start;
-	} else {
+	else
 		bank->bank_type = COMMON_BANK;
-	}
 
 	bank->clk = of_clk_get(bank->of_node, 0);
 	if (IS_ERR(bank->clk))
@@ -440,19 +422,18 @@ static int rockchip_pinctrl_probe(struct device_d *dev)
 	}
 	info->ctrl = ctrl;
 
-	info->reg_base = dev_request_mem_region(dev, 0);
-	if (!info->reg_base) {
-		dev_err(dev, "Could not get reg_base region\n");
+	info->reg_base = syscon_base_lookup_by_phandle(dev->device_node,
+						       "rockchip,grf");
+	if (IS_ERR(info->reg_base)) {
+		dev_err(dev, "Could not get grf syscon address\n");
 		return -ENODEV;
 	}
 
-	/* The RK3188 has its pull registers in a separate place */
-	if (ctrl->type == RK3188) {
-		info->reg_pull = dev_request_mem_region(dev, 1);
-		if (!info->reg_pull) {
-			dev_err(dev, "Could not get reg_pull region\n");
-			return -ENODEV;
-		}
+	info->reg_pmu = syscon_base_lookup_by_phandle(dev->device_node,
+						      "rockchip,pmu");
+	if (IS_ERR(info->reg_pmu)) {
+		dev_err(dev, "Could not get pmu syscon address\n");
+		return -ENODEV;
 	}
 
 	info->pctl_dev.dev = dev;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
