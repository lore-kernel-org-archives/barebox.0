Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Ys-0006QU-T2
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:44 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:34 +0100
Message-Id: <20190313105635.22055-5-l.stach@pengutronix.de>
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: rdu2: Add p/n based fixups for touchscreen and
 display panel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

RDU1 devices come in different varietes and, depending on
particular configuration, certain device tree nodes need to be
adjusted accoringly.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 234 +++++++++++++++++++++++++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi     | 126 ++++++++++++-
 2 files changed, 359 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 6352f49c5a07..1733897a1a40 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -23,6 +23,29 @@
 #include <mach/imx6.h>
 #include <net.h>
 #include <linux/nvmem-consumer.h>
+#include "../zii-common/pn-fixup.h"
+
+enum rdu2_lcd_interface_type {
+	IT_SINGLE_LVDS,
+	IT_DUAL_LVDS,
+	IT_EDP
+};
+
+enum rdu2_lvds_busformat {
+	BF_NONE,
+	BF_JEIDA,
+	BF_SPWG
+};
+
+#define RDU2_LRU_FLAG_EGALAX	BIT(0)
+
+struct rdu2_lru_fixup {
+	struct zii_pn_fixup fixup;
+	unsigned int flags;
+	enum rdu2_lcd_interface_type type;
+	enum rdu2_lvds_busformat bus_format;
+	const char *compatible;
+};
 
 #define RDU2_DAC1_RESET	IMX_GPIO_NR(1, 0)
 #define RDU2_DAC2_RESET	IMX_GPIO_NR(1, 2)
@@ -218,3 +241,214 @@ static int rdu2_i210_invm(void)
 	return 0;
 }
 late_initcall(rdu2_i210_invm);
+
+static int rdu2_fixup_egalax_ts(struct device_node *root, void *context)
+{
+	struct device_node *np;
+
+	/*
+	 * The 32" unit has a EETI eGalax touchscreen instead of the
+	 * Synaptics RMI4 found on other units.
+	 */
+	pr_info("Enabling eGalax touchscreen instead of RMI4\n");
+
+	np = of_find_compatible_node(root, NULL, "syna,rmi4-i2c");
+	if (!np)
+		return -ENODEV;
+
+	of_device_disable(np);
+
+	np = of_find_compatible_node(root, NULL, "eeti,exc3000");
+	if (!np)
+		return -ENODEV;
+
+	of_device_enable(np);
+	of_property_write_u32(np->parent, "clock-frequency", 200000);
+
+
+	return 0;
+}
+
+static int rdu2_fixup_edp(struct device_node *root)
+{
+	const bool kernel_fixup = root != NULL;
+	struct device_node *np;
+
+	if (kernel_fixup) {
+		/*
+		 * Kernel DT fixup needs this additional step
+		 */
+		pr_info("Found eDP display, enabling parallel output "
+			"and eDP bridge.\n");
+		np = of_find_compatible_node(root, NULL,
+					     "fsl,imx-parallel-display");
+		if (!np)
+			return -ENODEV;
+
+		of_device_enable(np);
+	}
+
+	np = of_find_compatible_node(root, NULL, "toshiba,tc358767");
+	if (!np)
+		return -ENODEV;
+
+	of_device_enable(np);
+
+	return 0;
+}
+
+static int rdu2_fixup_lvds(struct device_node *root,
+			   const struct rdu2_lru_fixup *fixup)
+{
+	const bool kernel_fixup = root != NULL;
+	struct device_node *np;
+
+	/*
+	 * LVDS panels need the correct compatible
+	 */
+	pr_info("Found LVDS display, enabling %s channel LDB and "
+		"panel with compatible \"%s\".\n",
+		fixup->type == IT_DUAL_LVDS ? "dual" : "single",
+		fixup->compatible);
+	/*
+	 * LVDS panels need the correct timings
+	 */
+	np = of_find_node_by_name(root, "panel");
+	if (!np)
+		return -ENODEV;
+
+	if (kernel_fixup) {
+		of_device_enable(np);
+		of_property_write_string(np, "compatible", fixup->compatible);
+	} else {
+		struct device_node *child, *tmp;
+
+		of_device_enable_and_register(np);
+		/*
+		 * Delete all mode entries, which aren't suited for the
+		 * current display
+		 */
+		np = of_find_node_by_name(np, "display-timings");
+		if (!np)
+			return -ENODEV;
+
+		for_each_child_of_node_safe(np, tmp, child) {
+			if (!of_device_is_compatible(child,
+						     fixup->compatible))
+				of_delete_node(child);
+		}
+	}
+	/*
+	 * enable LDB channel 0 and set correct interface mode
+	 */
+	np = of_find_compatible_node(root, NULL, "fsl,imx6q-ldb");
+	if (!np)
+		return -ENODEV;
+
+	if (kernel_fixup)
+		of_device_enable(np);
+	else
+		of_device_enable_and_register(np);
+
+	if (fixup->type == IT_DUAL_LVDS)
+		of_set_property(np, "fsl,dual-channel", NULL, 0, 1);
+
+	np = of_find_node_by_name(np, "lvds-channel@0");
+	if (!np)
+		return -ENODEV;
+
+	of_device_enable(np);
+
+	if (!kernel_fixup) {
+		of_property_write_string(np, "fsl,data-mapping",
+					 fixup->bus_format == BF_SPWG ?
+					 "spwg" : "jeida");
+	}
+
+	return 0;
+}
+
+static int rdu2_fixup_display(struct device_node *root, void *context)
+{
+	const struct rdu2_lru_fixup *fixup = context;
+	/*
+	 * If the panel is eDP, just enable the parallel output and
+	 * eDP bridge
+	 */
+	if (fixup->type == IT_EDP)
+		return rdu2_fixup_edp(root);
+
+	return rdu2_fixup_lvds(root, context);
+}
+
+static void rdu2_lru_fixup(const struct zii_pn_fixup *context)
+{
+	const struct rdu2_lru_fixup *fixup =
+		container_of(context, struct rdu2_lru_fixup, fixup);
+
+	WARN_ON(rdu2_fixup_display(NULL, (void *)context));
+	of_register_fixup(rdu2_fixup_display, (void *)context);
+
+	if (fixup->flags & RDU2_LRU_FLAG_EGALAX)
+		of_register_fixup(rdu2_fixup_egalax_ts, NULL);
+}
+
+#define RDU2_LRU_FIXUP(__pn, __flags, __panel)		\
+	{						\
+		{ __pn, rdu2_lru_fixup },		\
+		__flags,				\
+		__panel					\
+	}
+
+#define RDU2_PANEL_10P1	IT_SINGLE_LVDS, BF_SPWG,  "innolux,g121i1-l01"
+#define RDU2_PANEL_11P6	IT_EDP,         BF_NONE,  NULL
+#define RDU2_PANEL_12P1	IT_SINGLE_LVDS, BF_SPWG,  "nec,nl12880bc20-05"
+#define RDU2_PANEL_13P3	IT_DUAL_LVDS,   BF_JEIDA, "auo,g133han01"
+#define RDU2_PANEL_15P6	IT_DUAL_LVDS,   BF_SPWG,  "nlt,nl192108ac18-02d"
+#define RDU2_PANEL_18P5	IT_DUAL_LVDS,   BF_SPWG,  "auo,g185han01"
+#define RDU2_PANEL_32P0	IT_DUAL_LVDS,   BF_SPWG,  "auo,p320hvn03"
+
+static const struct rdu2_lru_fixup rdu2_lru_fixups[] = {
+	RDU2_LRU_FIXUP("00-5122-01", 0, RDU2_PANEL_12P1),
+	RDU2_LRU_FIXUP("00-5122-02", 0, RDU2_PANEL_12P1),
+	RDU2_LRU_FIXUP("00-5120-01", 0, RDU2_PANEL_10P1),
+	RDU2_LRU_FIXUP("00-5120-02", 0, RDU2_PANEL_10P1),
+	RDU2_LRU_FIXUP("00-5120-51", 0, RDU2_PANEL_10P1),
+	RDU2_LRU_FIXUP("00-5120-52", 0, RDU2_PANEL_10P1),
+	RDU2_LRU_FIXUP("00-5123-01", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5123-02", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5123-03", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5123-51", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5123-52", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5123-53", 0, RDU2_PANEL_11P6),
+	RDU2_LRU_FIXUP("00-5124-01", 0, RDU2_PANEL_13P3),
+	RDU2_LRU_FIXUP("00-5124-02", 0, RDU2_PANEL_13P3),
+	RDU2_LRU_FIXUP("00-5124-03", 0, RDU2_PANEL_13P3),
+	RDU2_LRU_FIXUP("00-5124-53", 0, RDU2_PANEL_13P3),
+	RDU2_LRU_FIXUP("00-5127-01", 0, RDU2_PANEL_15P6),
+	RDU2_LRU_FIXUP("00-5127-02", 0, RDU2_PANEL_15P6),
+	RDU2_LRU_FIXUP("00-5127-03", 0, RDU2_PANEL_15P6),
+	RDU2_LRU_FIXUP("00-5127-53", 0, RDU2_PANEL_15P6),
+	RDU2_LRU_FIXUP("00-5125-01", 0, RDU2_PANEL_18P5),
+	RDU2_LRU_FIXUP("00-5125-02", 0, RDU2_PANEL_18P5),
+	RDU2_LRU_FIXUP("00-5125-03", 0, RDU2_PANEL_18P5),
+	RDU2_LRU_FIXUP("00-5125-53", 0, RDU2_PANEL_18P5),
+	RDU2_LRU_FIXUP("00-5132-01", RDU2_LRU_FLAG_EGALAX, RDU2_PANEL_32P0),
+	RDU2_LRU_FIXUP("00-5132-02", RDU2_LRU_FLAG_EGALAX, RDU2_PANEL_32P0),
+};
+
+/*
+ * This initcall needs to be executed before coredevices, so we have a chance
+ * to fix up the internal DT with the correct display information.
+ */
+static int rdu2_process_fixups(void)
+{
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	zii_process_lru_fixups(rdu2_lru_fixups);
+
+	return 0;
+}
+postmmu_initcall(rdu2_process_fixups);
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index fea219f1e15a..bfc75ba606d6 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -49,6 +49,11 @@
 		};
 	};
 
+	device-info {
+		nvmem-cells = <&lru_part_number>;
+		nvmem-cell-names = "lru-part-number";
+	};
+
 	aliases {
 		ethernet0 = &fec;
 		ethernet1 = &i210;
@@ -59,8 +64,96 @@
 		 */
 		switch-eeprom = &switch;
 	};
-};
 
+	panel {
+		compatible = "simple-panel";
+		/* Timings for all supported panels, the correct one is enabled
+		 * after the board data has been retrieved from the environment
+		 * controller
+		*/
+
+		display-timings {
+			innolux-g121i1-l01 {
+				compatible = "innolux,g121i1-l01";
+
+				hback-porch = <79>;
+				hfront-porch = <80>;
+				hactive = <1280>;
+				hsync-len = <1>;
+				vback-porch = <11>;
+				vfront-porch = <11>;
+				vactive = <800>;
+				vsync-len = <1>;
+				clock-frequency = <71000000>;
+			};
+			nec-nl12880bc20-05 {
+				compatible = "nec,nl12880bc20-05";
+
+				hback-porch = <100>;
+				hfront-porch = <30>;
+				hactive = <1280>;
+				hsync-len = <30>;
+				vback-porch = <11>;
+				vfront-porch = <5>;
+				vactive = <800>;
+				vsync-len = <7>;
+				clock-frequency = <71000000>;
+			};
+			auo-g133han01 {
+				compatible = "auo,g133han01";
+
+				hback-porch = <88>;
+				hfront-porch = <58>;
+				hactive = <1920>;
+				hsync-len = <42>;
+				vback-porch = <14>;
+				vfront-porch = <8>;
+				vactive = <1080>;
+				vsync-len = <14>;
+				clock-frequency = <141200000>;
+			};
+			auo-g185han01 {
+				compatible = "auo,g185han01";
+
+				hback-porch = <44>;
+				hfront-porch = <60>;
+				hactive = <1920>;
+				hsync-len = <24>;
+				vback-porch = <5>;
+				vfront-porch = <10>;
+				vactive = <1080>;
+				vsync-len = <5>;
+				clock-frequency = <144000000>;
+			};
+			nlt-nl192108ac18-02d {
+				compatible = "nlt,nl192108ac18-02d";
+
+				hback-porch = <120>;
+				hfront-porch = <100>;
+				hactive = <1920>;
+				hsync-len = <60>;
+				vback-porch = <10>;
+				vfront-porch = <30>;
+				vactive = <1080>;
+				vsync-len = <5>;
+				clock-frequency = <148350000>;
+			};
+			auo-p320hvn03 {
+				compatible = "auo,p320hvn03";
+
+				hback-porch = <50>;
+				hfront-porch = <50>;
+				hactive = <1920>;
+				hsync-len = <40>;
+				vback-porch = <17>;
+				vfront-porch = <17>;
+				vactive = <1080>;
+				vsync-len = <11>;
+				clock-frequency = <148500000>;
+			};
+		};
+	};
+};
 
 &uart4 {
 	rave-sp {
@@ -73,6 +166,11 @@
 		};
 
 		eeprom@a4 {
+			lru_part_number: lru-part-number@21 {
+				reg = <0x21 15>;
+				read-only;
+			};
+
 			boot_source: boot-source@83 {
 				reg = <0x83 1>;
 			};
@@ -110,12 +208,38 @@
 	nvmem-cell-names = "mac-address";
 };
 
+&i2c1 {
+	edp-bridge@68 {
+		pinctrl-0 = <&pinctrl_tc358767>, <&pinctrl_disp0>;
+
+		ports {
+			port@1 {
+				reg = <1>;
+
+				tc358767_in: endpoint {
+					remote-endpoint = <&disp0_out>;
+				};
+			};
+		};
+	};
+};
+
 &i2c2 {
 	temp-sense@48 {
 		barebox,sensor-name = "Temp Sensor 1";
 	};
 };
 
+&ipu1_di0_disp0 {
+	remote-endpoint = <&tc358767_in>;
+};
+
+&ldb {
+	lvds-channel@0 {
+		fsl,data-width = <24>;
+	};
+};
+
 &i210 {
 	nvmem-cells = <&mac_address_1>;
 	nvmem-cell-names = "mac-address";
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
