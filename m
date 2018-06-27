Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fY1bt-0007Vn-7T
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 03:59:14 +0000
Received: by mail-pg0-x244.google.com with SMTP id a14-v6so324468pgw.10
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 20:59:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 20:58:42 -0700
Message-Id: <20180627035842.17858-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180627035842.17858-1-andrew.smirnov@gmail.com>
References: <20180627035842.17858-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] ARM: rdu2: Fetch MAC address info from RAVE SP EEPROM
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RDU2 stores MAC addresses for its Ethernet interfaces in main RAVE SP
EEPROM. Add code to properly integrate it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 57 ++++++++++++++++++++++++++
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi     | 15 +++++++
 2 files changed, 72 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 265f97e2f..f6c908c9f 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -19,6 +19,8 @@
 #include <init.h>
 #include <mach/bbu.h>
 #include <mach/imx6.h>
+#include <net.h>
+#include <linux/nvmem-consumer.h>
 
 #define RDU2_DAC1_RESET	IMX_GPIO_NR(1, 0)
 #define RDU2_DAC2_RESET	IMX_GPIO_NR(1, 2)
@@ -151,3 +153,58 @@ static int rdu2_devices_init(void)
 	return 0;
 }
 device_initcall(rdu2_devices_init);
+
+static int rdu2_eth_register_ethaddr(struct device_node *np)
+{
+	u8 mac[ETH_ALEN];
+	u8 *data;
+	int i;
+
+	data = nvmem_cell_get_and_read(np, "mac-address", ETH_ALEN);
+	if (IS_ERR(data))
+		return PTR_ERR(data);
+	/*
+	 * EEPROM stores MAC address in reverse (to what we expect it
+	 * to be) byte order.
+	 */
+	for (i = 0; i < ETH_ALEN; i++)
+		mac[i] = data[ETH_ALEN - i - 1];
+
+	free(data);
+
+	of_eth_register_ethaddr(np, mac);
+
+	return 0;
+}
+
+static int rdu2_ethernet_init(void)
+{
+	const char *aliases[] = { "ethernet0", "ethernet1" };
+	struct device_node *np, *root;
+	int i, ret;
+
+	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
+	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return 0;
+
+	root = of_get_root_node();
+
+	for (i = 0; i < ARRAY_SIZE(aliases); i++) {
+		const char *alias = aliases[i];
+
+		np = of_find_node_by_alias(root, alias);
+		if (!np) {
+			pr_warn("Failed to find %s\n", alias);
+			continue;
+		}
+
+		ret = rdu2_eth_register_ethaddr(np);
+		if (ret) {
+			pr_warn("Failed to register MAC for %s\n", alias);
+			continue;
+		}
+	}
+
+	return 0;
+}
+late_initcall(rdu2_ethernet_init);
diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index bb5321e62..68ee78002 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -85,6 +85,14 @@
 			boot_source: boot-source@83 {
 				reg = <0x83 1>;
 			};
+
+			mac_address_0: mac-address@180 {
+				reg = <0x180 6>;
+			};
+
+			mac_address_1: mac-address@190 {
+				reg = <0x190 6>;
+			};
 		};
 
 		backlight {
@@ -181,6 +189,11 @@
 	};
 };
 
+&fec {
+	nvmem-cells = <&mac_address_0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &i2c2 {
 	temp-sense@48 {
 		barebox,sensor-name = "Temp Sensor 1";
@@ -196,6 +209,8 @@
 
 		i210: i210@0 {
 			reg = <0 0 0 0 0>;
+			nvmem-cells = <&mac_address_1>;
+			nvmem-cell-names = "mac-address";
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
