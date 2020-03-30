Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZg-0008Ql-QB
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:39 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 39E44E000A
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:13 +0200
Message-Id: <20200330143915.663705-6-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 6/8] pinctrl: stm32: fix up st,package into stm32mp nodes
To: barebox@lists.infradead.org

Since Linux v5.1, the pinctrl driver can use the st,package property
if provided to validate whether the ball to be configured exists
on the package. Have barebox supply this property.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/stm32mp151.dtsi    | 16 ++++++++
 drivers/pinctrl/pinctrl-stm32.c | 67 +++++++++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index 8f8249dbc479..2a70a747e76e 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -37,4 +37,20 @@
 
 &bsec {
 	barebox,provide-mac-address = <&ethernet0 0x39>;
+
+	soc_package: soc-package@43 {
+		reg = <0x43 1>;
+		bits = <3 3>;
+		read-only;
+	};
+};
+
+&pinctrl {
+	nvmem-cells = <&soc_package>;
+	nvmem-cell-names = "soc-package";
+};
+
+&pinctrl_z {
+	nvmem-cells = <&soc_package>;
+	nvmem-cell-names = "soc-package";
 };
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index cdaed510c564..e760ce875774 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -16,11 +16,25 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <soc/stm32/gpio.h>
+#include <dt-bindings/pinctrl/stm32-pinfunc.h>
+#include <linux/nvmem-consumer.h>
 
 #define STM32_PIN_NO(x) ((x) << 8)
 #define STM32_GET_PIN_NO(x) ((x) >> 8)
 #define STM32_GET_PIN_FUNC(x) ((x) & 0xff)
 
+/*
+ * - 100: LBGA448  (FFI) => AA = LFBGA 18x18mm 448 balls p. 0.8mm
+ * - 011: LBGA354  (LCI) => AB = LFBGA 16x16mm 359 balls p. 0.8mm
+ * - 010: TFBGA361 (FFC) => AC = TFBGA 12x12mm 361 balls p. 0.5mm
+ * - 001: TFBGA257 (LCC) => AD = TFBGA 10x10mm 257 balls p. 0.5mm
+ * - others: Reserved
+ */
+#define PKG_AA_LBGA448	4
+#define PKG_AB_LBGA354	3
+#define PKG_AC_TFBGA361	2
+#define PKG_AD_TFBGA257	1
+
 struct stm32_gpio_bank {
 	void __iomem *base;
 	struct gpio_chip chip;
@@ -369,6 +383,57 @@ static int stm32_gpiochip_add(struct stm32_gpio_bank *bank,
 	return gpiochip_add(&bank->chip);
 }
 
+static int fixup_pinctrl(struct device_node *root, const char *compat, u32 pkg)
+{
+	struct device_node *np = of_find_compatible_node(root, NULL, compat);
+	if (!np)
+		return -ENODEV;
+
+	return of_property_write_u32(np, "st,package", pkg);
+}
+
+static u8 stm32_package_xlate(u8 pkg)
+{
+	switch (pkg) {
+	case PKG_AA_LBGA448:
+		return STM32MP_PKG_AA;
+	case PKG_AB_LBGA354:
+		return STM32MP_PKG_AB;
+	case PKG_AC_TFBGA361:
+		return STM32MP_PKG_AC;
+	case PKG_AD_TFBGA257:
+		return STM32MP_PKG_AD;
+	default:
+		return 0;
+	}
+}
+
+static int stm32_fixup_package(struct device_node *root, void *_dev)
+{
+	struct device_d *dev = _dev;
+	u8 *cell, pkg, pkg_raw;
+	int ret;
+
+	cell = nvmem_cell_get_and_read(dev->device_node, "soc-package", 1);
+	if (IS_ERR(cell))
+		return 0;
+
+	pkg_raw = *cell;
+	free(cell);
+
+	pkg = stm32_package_xlate(pkg_raw);
+	if (!pkg) {
+		dev_dbg(dev, "Unknown package: %01x\n", pkg_raw);
+		return 0;
+	}
+
+	ret = fixup_pinctrl(root, "st,stm32mp157-pinctrl", pkg);
+	if (ret)
+		return ret;
+
+	return fixup_pinctrl(root, "st,stm32mp157-z-pinctrl", pkg);
+}
+
 static struct pinctrl_ops stm32_pinctrl_ops = {
 	.set_state = stm32_pinctrl_set_state,
 };
@@ -419,6 +484,8 @@ static int stm32_pinctrl_probe(struct device_d *dev)
 		}
 	}
 
+	of_register_fixup(stm32_fixup_package, dev);
+
 	dev_dbg(dev, "pinctrl/gpio driver registered\n");
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
